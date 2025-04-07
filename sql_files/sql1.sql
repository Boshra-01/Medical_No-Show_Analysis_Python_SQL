CREATE DATABASE noshow_db;
USE noshow_db;

CREATE TABLE appointments (
    patientid VARCHAR(50),
    appointmentid INT PRIMARY KEY,
    gender VARCHAR(5),
    scheduledday DATE,
    appointmentday DATE,
    age INT,
    neighbourhood VARCHAR(50),
    scholarship INT,
    hypertension INT,
    diabetes INT,
    alcoholism INT,
    handicap INT,
    sms_received INT,
    no_show INT,
    daysWait INT,
    appointment_dow VARCHAR(10),  
    age_group VARCHAR(20)

);


ALTER TABLE appointments
ADD COLUMN appointment_day VARCHAR(10);

DESCRIBE appointments;
