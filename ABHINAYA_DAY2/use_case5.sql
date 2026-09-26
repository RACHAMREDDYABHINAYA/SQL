CREATE TABLE patients (
    patient_id INT NOT NULL AUTO_INCREMENT,
    patient_number VARCHAR(15) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    biological_sex VARCHAR(20) NOT NULL,
    blood_group ENUM ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'),
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(120),
    emergency_contact_name VARCHAR(100) NOT NULL,
    emergency_contact_phone VARCHAR(15) NOT NULL,
    allergies TEXT,
    patient_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
    registered_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_patients_patient_id` PRIMARY KEY (patient_id),
    CONSTRAINT `uq_patient_number` UNIQUE (patient_number)
);

INSERT INTO patients 
(patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, phone, emergency_contact_name, emergency_contact_phone) 
VALUES ('PN12346', 'Alice', 'Smith', '1985-05-12', 'Female', 'O+', '555-0201', 'Robert Smith', '555-0202');
INSERT INTO patients 
(patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, phone, emergency_contact_name, emergency_contact_phone) 
VALUES 
('PN12347', 'Michael', 'Brown', '1995-08-23', 'Male', 'A+', '555-0203', 'Sarah Brown', '555-0204');

SELECT * FROM patients;