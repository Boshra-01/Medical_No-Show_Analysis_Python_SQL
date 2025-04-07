SELECT * FROM appointments LIMIT 10;
-- dropping column
ALTER TABLE appointments DROP COLUMN appointment_day;

-- ** WHERE ** --
SELECT * FROM appointments WHERE scholarship = 1;
SELECT * FROM appointments WHERE hypertension =1 AND scholarship = 1;
SELECT * FROM appointments WHERE age<30;

-- ** DISTINCT ** --
-- Unique age groups:
select distinct age_group from appointments;
select distinct neighbourhood as Neighbourhood_Brazil from appointments;

-- ** BETWEEN ** --
-- Appointment between 2 dates:
SELECT * FROM appointments
WHERE appointmentday BETWEEN '2016-06-01' AND '2016-06-5';
-- Days wait
SELECT * FROM appointments 
WHERE daysWait BETWEEN 8 AND 10;
-- Age
SELECT * FROM appointments
WHERE age BETWEEN 1 AND 5;

-- ** LIKE ** --
-- Neighbourhoods starting with "SÃO":
SELECT * FROM appointments
WHERE neighbourhood LIKE 'SÃO%';
-- Neighbourhoods containing "CRI":
SELECT * FROM appointments 
WHERE neighbourhood LIKE '%CRI%';


-- ** Group By ** --
-- Count appointments by gender:
SELECT gender, count(*) as appointments_gender
FROM appointments
group by gender;
-- Average age by neighbourhood:
SELECT neighbourhood, avg(age) as neighbourhood_avg_age
FROM appointments
Group by neighbourhood;
-- Count No-Show by age group:
SELECT age_group, COUNT(*) AS total_no_shows 
FROM appointments 
WHERE no_show = 1
GROUP BY age_group;
-- Count no of days on each day of the week of No-Shows:
SELECT appointment_dow, COUNT(*) AS total_no_shows 
FROM appointments 
WHERE no_show = 1
GROUP BY appointment_dow;

-- ** HAVING ** --
-- Find Neighbourhoods which have more than 50 appointments:
SELECT neighbourhood, COUNT(*) as no_of_appointments
 FROM appointments
 GROUP BY neighbourhood
 HAVING count(*) > 50;
 -- Patients with more than 3 appointments:
 SELECT patientid, Count(*) AS no_appointments
 FROM appointments
 group by patientid
 HAVING COUNT(*) > 3;
 -- Average no-show rate greater than 30%:
 SELECT neighbourhood, AVG(no_show) AS no_show_rate 
FROM appointments 
GROUP BY neighbourhood 
HAVING AVG(no_show) > 0.3;

-- ** Aggregate Functions ** --
-- COUNT
SELECT COUNT(*) AS total_appointments FROM appointments;
SELECT COUNT(*) AS hyper_scholar FROM appointments WHERE hypertension =1 AND scholarship = 1;
SELECT COUNT(*) AS total_noshows FROM appointments WHERE no_show = 1;
-- SUM
SELECT SUM(scholarship) as total_scholarship FROM appointments;
-- AVG
select avg(age) as avg_age from appointments;
-- MIN / MAX
SELECT MIN(age) AS min_age, MAX(age) AS max_age FROM appointments;
-- Average days waited by patient:
SELECT AVG(daysWait) AS avg_daysWait FROM appointments;

-- ** SubQueries ** --
-- WHERE
-- Patients older than the average age:
SELECT * from appointments
WHERE age > (SELECT AVG(age) FROM appointments);
-- Patients with longer wait time(above-average) and not showing up:
SELECT * from appointments
WHERE no_show = 1 AND daysWait > (SELECT AVG(daysWait) from appointments);
-- Patients having alcohol habit and above-average age:
SELECT * FROM appointments 
WHERE alcoholism = 1 AND age > (SELECT AVG(age) FROM appointments);

-- SELECT
-- Add average no-show rate to each row:
SELECT patientid, no_show, (SELECT AVG(no_show) FROM appointments) AS avg_noShow 
FROM appointments;



SELECT * from patient_details;
SELECT * from appointments;









-- ** Inner Join ** --
SELECT a.patientid, a.appointmentday, b.neighbourhood 
FROM appointments a
INNER JOIN neighbourhoods b ON a.neighbourhood = b.neighbourhood;




