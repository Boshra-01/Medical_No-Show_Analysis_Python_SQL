import mysql.connector
import pandas as pd

df = pd.read_csv('cleaned_no_show_records.csv')

conn = mysql.connector.connect(
    host='localhost',
    user='root',
    password='root',
    database='healthcare_noshow'  
)

cursor = conn.cursor()


# Inserting data into the table
insert_query = """
INSERT INTO appointments (
    patientid, appointmentid, gender, scheduledday, appointmentday, 
    age, neighbourhood, scholarship, hypertension, diabetes, 
    alcoholism, handicap, sms_received, no_show, daysWait, appointment_dow, age_group, appointment_day
) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
"""

# Convert DF rows to tuples
data_tuples = [tuple(row) for row in df.to_numpy()]

# Inserting data in batches as the datasets is large
batch_size = 1000
for i in range(0, len(data_tuples), batch_size):
    batch = data_tuples[i:i + batch_size]
    cursor.executemany(insert_query, batch)
    conn.commit()
    print(f"Inserted {len(batch)} rows.")

cursor.close()
conn.close()
print("Data loading complete!")
