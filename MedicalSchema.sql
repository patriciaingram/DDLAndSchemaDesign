CREATE TABLE Doctor (
    doctor_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    specialty VARCHAR(100)
);

CREATE TABLE Patient (
    patient_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    dob DATE,
    gender VARCHAR(10)
);

CREATE TABLE Visit (
    visit_id SERIAL PRIMARY KEY,
    doctor_id INT REFERENCES Doctor(doctor_id),
    patient_id INT REFERENCES Patient(patient_id),
    visit_date DATE,
    diagnosis TEXT
);

CREATE TABLE Disease (
    disease_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description TEXT
);

CREATE TABLE Visit_Disease (
    visit_id INT REFERENCES Visit(visit_id),
    disease_id INT REFERENCES Disease(disease_id),
    PRIMARY KEY (visit_id, disease_id)
);
