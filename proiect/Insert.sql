    --into specialization
    
    INSERT INTO specialization (specialization_id, name, price )
    VALUES (sec_specialization.nextval, 'Alergologie', 180);
    
    INSERT INTO specialization (specialization_id, name, price )
    VALUES (sec_specialization.nextval, 'Dermatologie', 200);
    
    INSERT INTO specialization (specialization_id, name, price )
    VALUES (sec_specialization.nextval, 'Cardiologie', 200);
    
    INSERT INTO specialization (specialization_id, name, price )
    VALUES (sec_specialization.nextval, 'Medicina Interna', 320);
    
    INSERT INTO specialization (specialization_id, name, price )
    VALUES (sec_specialization.nextval, 'Stomatologie', 300);
    
    INSERT INTO specialization (specialization_id, name, price )
    VALUES (sec_specialization.nextval, 'Oftalmologie', 190);
    
    INSERT INTO specialization (specialization_id, name, price )
    VALUES (sec_specialization.nextval, 'Pediatrie', 240);
    
    INSERT INTO specialization (specialization_id, name, price )
    VALUES (sec_specialization.nextval, 'O.R.L.', 270);
    
    INSERT INTO specialization (specialization_id, name, price )
    VALUES (sec_specialization.nextval, 'Psihiatrie', 350);
    
    INSERT INTO specialization (specialization_id, name, price )
    VALUES (sec_specialization.nextval, 'Endocrinologie', 250);
    
    INSERT INTO specialization (specialization_id, name, price )
    VALUES (sec_specialization.nextval, 'Imunologie', 250);
    
     INSERT INTO specialization (specialization_id, name, price )
    VALUES (sec_specialization.nextval, 'Neurologie', 150);
  
   --into doctor
   
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Elena', 'Popescu', 'Calea Moine?ti nr 12', '0723764839', 'elena.popescu@gmail.com'); 
   
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Maria', 'Barsan', 'Calea Romanului nr 8', '0734512396', 'maria.barsan@gmail.com' ); 
    
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Ana', 'Trefas', 'Strada 13 Septembrie nr 5', '0537445890', 'ana.trefas@gmail.com'); 
    
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Razvan', 'Pavel', 'Strada 7 Noiembrie nr 2', '0546789675', 'razvan.pavel@gmail.com'); 
    
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Marian', 'Ionescu', 'Strada Alecu Russo nr 4', '0823458298', 'marian.ionescu@gmail.com'); 
    
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Monica', 'Balaita', 'Strada Aprodu Purice nr 34', '0645783456', 'monica.balaita@gmail.com'); 
    
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Mariana', 'Marinov', 'Strada Barajului 34', '0983574757', null); 
    
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Daniel', 'Andrei', 'Strada Brându?ei 5', '0957473222', 'daniel.andrei@gmail.com'); 
    
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Andrei', 'Popa', null, '0937451823', 'andrei.popa@gmail.com'); 
    
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Adrian', 'Gavriliu', 'Strada Caraiman 7', '0334562847', 'adrian.gavriliu@gmail.com'); 
    
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Maria', 'Balaban', 'Strada Corbului 3', '0645372981', 'maria.balaban@gmail.com'); 
    
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Alexandra', 'Botezatu', null, '0432567834', 'alexandra.botezatu@gmail.com'); 
    
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Bianca', 'Popa', 'Strada Dobrogei 5', '0323452333', null); 
    
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Andreea', 'Benchea', 'Strada Fagului 67', '0875628673', 'andreea.benchea@gmail.com'); 
    
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Mariana', 'Cadar', null, '0936457845', 'mariana.cadar@gmail.com'); 
    
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Mirela', 'Popescu', null, '0434368553', 'mirela.popescu@gmail.com'); 
    
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Tudor', 'Silion', null, '0537898777', 'tudor.silion@gmail.com'); 
    
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Ioan', 'Arama', 'Strada Gloriei 54', '0433235655', null); 
    
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Ioana', 'Zidaru', 'Strada Iasomiei 34', '0789435356', 'ioana.zidaru@gmail.com'); 
    
    INSERT INTO doctor (doctor_id, first_name, last_name, address, phone_number , email)
    VALUES (sec_doctor.nextval, 'Giulia', 'Caragea', 'Strada Livezilor 21', '0454578654', null); 
    
     
   
    --into diagnostic
    
    
      INSERT INTO diagnostic (diagnostic_id, name)
      VALUES (sec_diagnostic.nextval, 'Astm alergic');
      
      INSERT INTO diagnostic (diagnostic_id, name)
      VALUES (sec_diagnostic.nextval, 'Rinita alergica'); 
      
      INSERT INTO diagnostic (diagnostic_id, name)
      VALUES (sec_diagnostic.nextval, 'Acnee'); 
      
      INSERT INTO diagnostic (diagnostic_id, name)
      VALUES (sec_diagnostic.nextval, 'Rozacee'); 
      
      INSERT INTO diagnostic (diagnostic_id, name)
      VALUES (sec_diagnostic.nextval, 'Hipertensiune'); 
      
      INSERT INTO diagnostic (diagnostic_id, name)
      VALUES (sec_diagnostic.nextval, 'Hepatita'); 
      
      INSERT INTO diagnostic (diagnostic_id, name)
      VALUES (sec_diagnostic.nextval, 'Gastrita'); 
      
      INSERT INTO diagnostic (diagnostic_id, name)
      VALUES (sec_diagnostic.nextval, 'Afectiune digestiva'); 
      
      INSERT INTO diagnostic (diagnostic_id, name)
      VALUES (sec_diagnostic.nextval, 'Gingivita'); 
      
      INSERT INTO diagnostic (diagnostic_id, name)
      VALUES (sec_diagnostic.nextval, 'Alzheimer'); 
      
      INSERT INTO diagnostic (diagnostic_id, name)
      VALUES (sec_diagnostic.nextval, 'Amnezie'); 
      
      INSERT INTO diagnostic (diagnostic_id, name)
      VALUES (sec_diagnostic.nextval, 'Cataracta'); 
      
      INSERT INTO diagnostic (diagnostic_id, name)
      VALUES (sec_diagnostic.nextval, 'Depresie'); 
      
      INSERT INTO diagnostic (diagnostic_id, name)
      VALUES (sec_diagnostic.nextval, ' Schizofrenie '); 
      
      INSERT INTO diagnostic (diagnostic_id, name)
      VALUES (sec_diagnostic.nextval, 'Hipotiroidism '); 
      
      
    --into patient
    
      INSERT INTO patient (patient_id, first_name, last_name, address, phone_number , email, age)
      VALUES (sec_patient.nextval, 'Monica', 'Popescu', 'Strada Ia?ilor 98', '0676742345', null, 34); 
    
      INSERT INTO patient (patient_id, first_name, last_name, address, phone_number , email, age)
      VALUES (sec_patient.nextval, 'Andreea', 'Ionescu', 'Strada Izvoare 7', '0875463758', 'andreea.ionescu@gmail.com', 65); 
    
      INSERT INTO patient (patient_id, first_name, last_name, address, phone_number , email, age)
      VALUES (sec_patient.nextval, 'Irina', 'Popa', 'Strada Lunei 5', '0836574658', null, 78); 
    
      INSERT INTO patient (patient_id, first_name, last_name, address, phone_number , email, age)
      VALUES (sec_patient.nextval, 'Paul', 'Solomon', null, '0847572348', 'paul.solomon@gmail.com' , 14); 
    
      INSERT INTO patient (patient_id, first_name, last_name, address, phone_number , email, age)
      VALUES (sec_patient.nextval, 'Emanuel', 'Adam', 'Strada Milcov 32', '0965743788', 'emanuel.adam@gmail.com', 23); 
    
      INSERT INTO patient (patient_id, first_name, last_name, address, phone_number , email, age)
      VALUES (sec_patient.nextval, 'Ioan', 'Dinca', 'Strada Morii 53', '0846468576', null, 45); 
    
      INSERT INTO patient (patient_id, first_name, last_name, address, phone_number , email, age)
      VALUES (sec_patient.nextval, 'Daniel', 'Budau', 'Strada Orizontului 6', '0893543456', 'daniel.budau@gmail.com', 32); 
    
      INSERT INTO patient (patient_id, first_name, last_name, address, phone_number , email, age)
      VALUES (sec_patient.nextval, 'Alin', 'Damian', null, '0645486989', 'alin.damian@gmail.com', 29); 
    
      INSERT INTO patient (patient_id, first_name, last_name, address, phone_number , email, age)
      VALUES (sec_patient.nextval, 'Alexandru', 'Apostol', 'Strada Prieteniei 95', '0237845671', 'alex.apostol@gmail.com', 54); 
    
   
    --into clinic
    
    INSERT INTO clinic (clinic_id, name, address, city, phone_number , email)
    VALUES (sec_clinic.nextval, 'Mayo Clinic', 'Str Lalelelor 24','Cluj', '0567143567', 'mayoclinic@gmail.com'); 
    
    INSERT INTO clinic (clinic_id, name, address, city, phone_number , email)
    VALUES (sec_clinic.nextval, 'One Medical', 'Stefan cel Mare 12','Cluj', '0235472548', 'onemedical@gmail.com'); 
     
    INSERT INTO clinic (clinic_id, name, address, city, phone_number , email)
    VALUES (sec_clinic.nextval, 'Medlife', 'Str Mihai Viteazul 2', 'Bucuresti','0943769293', 'medlife@gmail.com'); 
     
    INSERT INTO clinic (clinic_id, name, address, city, phone_number , email)
    VALUES (sec_clinic.nextval, 'Family Medical', 'Str Aviatorilor nr 14 ','Bucuresti', '05739485932', 'familymedical@gmail.com'); 
     
    INSERT INTO clinic (clinic_id, name, address, city, phone_number , email)
    VALUES (sec_clinic.nextval, 'Uni Clinic', 'Str Castanilor 51', 'Bucuresti','0237433371', 'uniclinic@gmail.com');
     
    INSERT INTO clinic (clinic_id, name, address, city, phone_number , email)
    VALUES (sec_clinic.nextval, 'Uni Clinic', 'Str Eroilor 4', 'Sibiu','0437642847', 'uniclinic_sibiu@gmail.com');
     
    INSERT INTO clinic (clinic_id, name, address, city, phone_number , email)
    VALUES (sec_clinic.nextval, 'Clinica', 'Str Florilor 8', 'Sibiu','0478684777', 'clinica@gmail.com');
     
  
     --into works_on
     
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (1,1); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (1,2);
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (1,3); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (1,4); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (1,5); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (1,6); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (2,4); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (2,7); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (2,8); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (2,9); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (2,5); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (2,6); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (3,10); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (3,11);
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (3,12); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (3,13); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (3,14); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (3,15); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (4,11); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (4,14); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (4,15); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (4,16); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (4,17); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (5,18); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (5,19); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (5,20); 
       
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (5,10); 
      
      INSERT INTO works_on (clinic_id, doctor_id)
      VALUES (5,13); 
    
      
 --into has_specialization
     
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (1, 3); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (1, 4); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (2, 2); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (3, 1); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (4, 6); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (4, 8); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (5, 10); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (6, 11); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (7, 3); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (8, 2); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (9, 4); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (10, 3); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (10, 4); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (11, 10); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (12, 2); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (13, 6); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (14, 8); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (15, 11); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (15, 1); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (16, 3); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (16, 4); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (17, 5); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (18, 7); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (19, 9); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (19, 12); 
      
      INSERT INTO has_specialization (doctor_id, specialization_id)
      VALUES (20, 10); 
      
    
    --into consultation
        
      INSERT INTO consultation (consultation_id, doctor_id, patient_id, clinic_id, diagnostic_id, consultation_date)
      VALUES (SEC_CONSULTATION.nextval, 1, 1, 1, 5, '02/03/2020 11:40:00'); 
        
      INSERT INTO consultation (consultation_id, doctor_id, patient_id, clinic_id, diagnostic_id, consultation_date)
      VALUES (SEC_CONSULTATION.nextval, 2, 2, 1, 3, '07/05/2020 10:30:00'); 
        
      INSERT INTO consultation (consultation_id, doctor_id, patient_id, clinic_id, diagnostic_id, consultation_date)
      VALUES (SEC_CONSULTATION.nextval, 4, 1, 1, 11, '09/03/2020 12:00:00'); 
        
      INSERT INTO consultation (consultation_id, doctor_id, patient_id, clinic_id, diagnostic_id, consultation_date)
      VALUES (SEC_CONSULTATION.nextval, 3, 2, 1, 2, '03/04/2020 13:20:00'); 
      
        
      INSERT INTO consultation (consultation_id, doctor_id, patient_id, clinic_id, diagnostic_id, consultation_date)
      VALUES (SEC_CONSULTATION.nextval, 8, 4, 2, 4, '02/06/2020 14:40:00'); 
        
      INSERT INTO consultation (consultation_id, doctor_id, patient_id, clinic_id, diagnostic_id, consultation_date)
      VALUES (SEC_CONSULTATION.nextval, 9, 3, 2, 7, '02/07/2020 12:50:00'); 
      
      
      INSERT INTO consultation (consultation_id, doctor_id, patient_id, clinic_id, diagnostic_id, consultation_date)
      VALUES (SEC_CONSULTATION.nextval, 10, 5, 3, 6, '04/04/2020 11:15:00'); 
        
      INSERT INTO consultation (consultation_id, doctor_id, patient_id, clinic_id, diagnostic_id, consultation_date)
      VALUES (SEC_CONSULTATION.nextval, 15, 6, 3, 1, '08/04/2020 10:35:00'); 
      
      
      INSERT INTO consultation (consultation_id, doctor_id, patient_id, clinic_id, diagnostic_id, consultation_date)
      VALUES (SEC_CONSULTATION.nextval, 17, 7, 4, 9, '09/19/2020 10:30:00'); 
        
      INSERT INTO consultation (consultation_id, doctor_id, patient_id, clinic_id, diagnostic_id, consultation_date)
      VALUES (SEC_CONSULTATION.nextval, 11, 6, 4, 15, '09/04/2020 12:20:00'); 
      
        
      INSERT INTO consultation (consultation_id, doctor_id, patient_id, clinic_id, diagnostic_id, consultation_date)
      VALUES (SEC_CONSULTATION.nextval, 19, 8, 5, 13, '05/14/2020 17:00:00'); 
      
      INSERT INTO consultation (consultation_id, doctor_id, patient_id, clinic_id, diagnostic_id, consultation_date)
      VALUES (SEC_CONSULTATION.nextval, 10, 9, 5, 8, '09/20/2020 15:30:00'); 
      
     
    
     