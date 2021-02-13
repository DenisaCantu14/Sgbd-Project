CREATE TABLE clinic (
    clinic_id      INT PRIMARY KEY,
    name           VARCHAR(30) NOT NULL,
    address        VARCHAR(60) NOT NULL,
    city           VARCHAR(15) NOT NULL,
    phone_number   VARCHAR(15) NOT NULL,
    email          VARCHAR(25)
);

CREATE TABLE doctor (
    doctor_id      INT PRIMARY KEY,
    first_name     VARCHAR(15) NOT NULL,
    last_name      VARCHAR(15) NOT NULL,
    address        VARCHAR(60),
    phone_number   VARCHAR(15) NOT NULL,
    email          VARCHAR(40)
);

CREATE TABLE works_on (
    clinic_id   INT,
    doctor_id   INT,
    CONSTRAINT clinic_doctor_pk PRIMARY KEY ( clinic_id, doctor_id ),
    FOREIGN KEY ( clinic_id )   REFERENCES clinic ( clinic_id ),
    FOREIGN KEY ( doctor_id )   REFERENCES doctor ( doctor_id )
);

CREATE TABLE specialization (
    specialization_id   INT PRIMARY KEY,
    name                VARCHAR(40) NOT NULL UNIQUE,
    price               NUMBER(5)
);

CREATE TABLE has_specialization (
    doctor_id           INT,
    specialization_id   INT,
    CONSTRAINT doctor_specialization_pk PRIMARY KEY ( doctor_id, specialization_id ),
    FOREIGN KEY ( specialization_id )   REFERENCES specialization ( specialization_id ),
    FOREIGN KEY ( doctor_id )           REFERENCES doctor ( doctor_id )
);

CREATE TABLE patient (
    patient_id     NUMBER(4) PRIMARY KEY,
    first_name     VARCHAR(15) NOT NULL,
    last_name      VARCHAR(15) NOT NULL,
    address        VARCHAR(60),
    phone_number   VARCHAR(15) NOT NULL,
    email          VARCHAR(25),
    age            NUMBER(3) CHECK ( age > 0 )
);

CREATE TABLE diagnostic (
    diagnostic_id   INT PRIMARY KEY,
    name            VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE consultation (
    consultation_id     NUMBER(4) PRIMARY KEY,
    doctor_id           NUMBER(4),
    patient_id          NUMBER(4),
    clinic_id           NUMBER(4),
    diagnostic_id       NUMBER(4),
    consultation_date   DATE NOT NULL,
    FOREIGN KEY ( doctor_id )     REFERENCES doctor ( doctor_id ),
    FOREIGN KEY ( patient_id )    REFERENCES patient ( patient_id ),
    FOREIGN KEY ( clinic_id )     REFERENCES clinic ( clinic_id ),
    FOREIGN KEY ( diagnostic_id ) REFERENCES diagnostic ( diagnostic_id )
);
  
  
    drop table consultation;
    drop table has_specialization;
    drop table works_on;  
    drop table diagnostic;
    drop table specialization;  
    drop table clinic;
    drop table doctor;
    drop table patient;
    
     drop SEQUENCE sec_specialization;
     drop SEQUENCE sec_doctor;
     drop SEQUENCE sec_clinic;
     drop Sequence sec_consultation;
     drop sequence sec_diagnostic;
     drop sequence sec_patient;
    
    CREATE SEQUENCE sec_specialization
    start with 1
    increment by 1
    minvalue 1
    maxvalue 9999
    cycle;
   
    CREATE SEQUENCE sec_doctor
    start with 1
    increment by 1
    minvalue 1
    maxvalue 9999
    cycle;
    
    CREATE SEQUENCE sec_clinic
    start with 1
    increment by 1
    minvalue 1
    maxvalue 9999
    cycle;
    
    CREATE SEQUENCE sec_consultation
    start with 1
    increment by 1
    minvalue 1
    maxvalue 9999
    cycle;
    
    CREATE SEQUENCE sec_patient
    start with 1
    increment by 1
    minvalue 1
    maxvalue 9999
    cycle;
    
    CREATE SEQUENCE sec_diagnostic
    start with 1
    increment by 1
    minvalue 1
    maxvalue 9999
    cycle;
    
   
      select * from has_specialization;
      select * from patient;
      select * from diagnostic;
      select * from consultation;
      select * from doctor; 
      select * from clinic;
      select * from works_on;
      select * from specialization;
      
      
     delete has_specialization;
     delete patient;
     delete diagnostic;
     delete consultation;
     delete doctor; 
     delete clinic where clinic_id>7;
     delete works_on;
     delete specialization;
      
      
      
   
    