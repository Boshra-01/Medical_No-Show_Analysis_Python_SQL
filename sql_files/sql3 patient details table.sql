-- Creating a new Table to perform JOIN operations later

CREATE TABLE patient_details (
    patientid VARCHAR(50) PRIMARY KEY,
    full_name VARCHAR(100),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(200),
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code VARCHAR(10),
    date_of_birth DATE,
    gender VARCHAR(10),
    has_insurance BOOLEAN,
    insurance_provider VARCHAR(50),
    last_visit_date DATE,
    total_visits INT
);

INSERT INTO patient_details (patientid, full_name, phone_number, email, address, city, state, zip_code, date_of_birth, gender, has_insurance, insurance_provider, last_visit_date, total_visits)
VALUES 
    ('56394729949972', 'Ana Costa', '+5511987654326', 'ana.costa@example.com', 'Rua das Flores, 456', 'São Paulo', 'SP', '01234-567', '1985-03-15', 'F', 1, 'HealthCare Inc.', '2023-09-10', 5),
    ('78124564369297', 'Carlos Mendes', '+5511987654327', 'carlos.mendes@example.com', 'Avenida Paulista, 789', 'São Paulo', 'SP', '01310-000', '1990-07-22', 'M', 0, NULL, '2023-08-25', 3),
    ('734536231958495', 'Fernanda Lima', '+5511987654328', 'fernanda.lima@example.com', 'Rua da Paz, 321', 'Rio de Janeiro', 'RJ', '20040-020', '1978-11-30', 'F', 1, 'MediCare', '2023-07-15', 7),
    ('7542951368435', 'João Silva', '+5511987654329', 'joao.silva@example.com', 'Avenida Brasil, 654', 'Belo Horizonte', 'MG', '30130-001', '1982-05-10', 'M', 0, NULL, '2023-06-20', 2),
    ('566654781423437', 'Mariana Oliveira', '+5511987654330', 'mariana.oliveira@example.com', 'Rua das Palmeiras, 987', 'Curitiba', 'PR', '80010-000', '1995-09-05', 'F', 1, 'HealthPlus', '2023-05-05', 4),
    ('911394617215919', 'Pedro Santos', '+5511987654331', 'pedro.santos@example.com', 'Rua das Acácias, 123', 'Porto Alegre', 'RS', '90010-000', '1988-12-20', 'M', 0, NULL, '2023-04-10', 1),
    ('99884723334928', 'Laura Fernandes', '+5511987654332', 'laura.fernandes@example.com', 'Avenida das Américas, 456', 'Rio de Janeiro', 'RJ', '20040-020', '1975-02-14', 'F', 1, 'MediCare', '2023-03-15', 6),
    ('99948393975', 'Ricardo Almeida', '+5511987654333', 'ricardo.almeida@example.com', 'Rua das Orquídeas, 789', 'São Paulo', 'SP', '01234-567', '1992-08-25', 'M', 0, NULL, '2023-02-20', 2),
    ('84574392942817', 'Camila Ribeiro', '+5511987654334', 'camila.ribeiro@example.com', 'Avenida Atlântica, 321', 'Rio de Janeiro', 'RJ', '20040-020', '1980-04-18', 'F', 1, 'HealthCare Inc.', '2023-01-25', 5),
    ('14794966191172', 'Gustavo Pereira', '+5511987654335', 'gustavo.pereira@example.com', 'Rua das Margaridas, 654', 'Belo Horizonte', 'MG', '30130-001', '1998-06-30', 'M', 0, NULL, '2022-12-30', 3);   
    
SELECT * FROM patient_details LIMIT 10; 

-- ** JOIN ** --
-- Appointment details with patient details











   
