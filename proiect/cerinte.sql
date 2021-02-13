--cerinta 6
--afisati toate specializarile cu pretul cuprins intre x si y
CREATE OR REPLACE PROCEDURE specializations_price (
    x   NUMBER,
    y   NUMBER
) IS
    TYPE index_table IS
        TABLE OF VARCHAR2(40) INDEX BY PLS_INTEGER;
    v_specializations index_table;
    v_exception EXCEPTION;
BEGIN
    SELECT name
    BULK COLLECT
    INTO v_specializations
    FROM specialization
    WHERE price <= y AND price >= x;

    IF v_specializations.count = 0 THEN
        RAISE v_exception;
    END IF;
     dbms_output.put_line('Specializarile sunt:');
     
    FOR i IN v_specializations.first..v_specializations.last LOOP 
        dbms_output.put_line(v_specializations(i));
    END LOOP;

EXCEPTION
    WHEN v_exception THEN
        raise_application_error(-20000, 'Nu exista asemenea specializari');
    WHEN OTHERS THEN
        raise_application_error(-20002, 'Alta eroare!');
END;
/
SET SERVEROUTPUT ON;

BEGIN
    specializations_price(200, 250);  
END;
/

BEGIN
    specializations_price(0, 30);--eroare
END;
/

--cerinta 7
--obtineti toate progmarile dintr-o anumita luna

CREATE OR REPLACE PROCEDURE consultations (
    v_month NUMBER
) IS

    CURSOR consult IS
    SELECT
        consultation_id,
        doctor_id,
        patient_id,
        clinic_id,
        diagnostic_id,
        consultation_date
    FROM consultation
    WHERE v_month = EXTRACT(MONTH FROM consultation_date)
    ORDER BY consultation_date;

    v_exception1 EXCEPTION;
    v_exception2 EXCEPTION;
    v_nr INT := 0;
    
BEGIN

    IF v_month <= 0 OR v_month > 12 THEN
        RAISE v_exception1;
    ELSE
        FOR i IN consult LOOP
            v_nr := v_nr + 1;
            dbms_output.put_line('Consultatia nr ' || i.consultation_id);
            dbms_output.put_line('Doctor: ' || i.doctor_id);
            dbms_output.put_line('Patient: ' || i.patient_id);
            dbms_output.put_line('Clinic: ' || i.clinic_id);
            dbms_output.put_line('Diagnostic: ' || i.diagnostic_id);
            dbms_output.put_line('Date: ' || i.consultation_date);
            dbms_output.new_line();
        END LOOP;
    END IF;

    IF v_nr = 0 THEN
        RAISE v_exception2;
    END IF;
    
EXCEPTION
    WHEN v_exception2 THEN
        raise_application_error(-20000, 'Nu exista consultatii in luna respectiva');
    WHEN v_exception1 THEN
        raise_application_error(-20000, 'Luna ' || v_month || ' nu este valida');

    WHEN OTHERS THEN
        raise_application_error(-20002, 'Alta eroare!');
END;
/
BEGIN
    consultations(4);
END;
/
BEGIN
    consultations(0); --eroare
END;
/
BEGIN
    consultations(11); --eroare
END;
/
-- cerinta 8
--returnati nr pacintilor diagnosticati cu un diagnostic dat ca parametru si au peste x ani

CREATE OR REPLACE FUNCTION patients (
    v_name   diagnostic.name%TYPE,
    v_age    patient.age%TYPE
) 
 RETURN NUMBER IS
    nr NUMBER;
    v_exception1 EXCEPTION;
    v_exception2 EXCEPTION;
    
BEGIN
    SELECT COUNT(p.patient_id)
    INTO nr
    FROM
        diagnostic     d,
        patient        p,
        consultation   c
    WHERE
        p.patient_id = c.patient_id
        AND c.diagnostic_id = d.diagnostic_id
        AND p.age >= v_age
        AND d.name = v_name;

    IF v_age <= 0 THEN
        RAISE v_exception1;
    END IF;
    
    IF nr = 0 THEN
        RAISE v_exception2;
    END IF;
    
    RETURN nr;
    
EXCEPTION
    WHEN v_exception2 THEN
        raise_application_error(-20000, 'Nu exista pacienti cu aceste date');
    WHEN v_exception1 THEN
        raise_application_error(-20000, 'Varsta nu poate fi negativa');
    WHEN OTHERS THEN
        raise_application_error(-20002, 'Alta eroare!');
END patients;
/
BEGIN
    dbms_output.put_line('Numarul pacientilor este ' || patients('Hipertensiune', 15));
END;
/
BEGIN
    dbms_output.put_line('Numarul pacientilor este ' || patients('Hipertensiune', -15));
END;
/
BEGIN
    dbms_output.put_line('Numarul pacientilor este ' || patients('Hipertensiune', 101));
END;
/

--cerinta 9
--Afisati specializarile unei clinici cu un nume dat

CREATE OR REPLACE PROCEDURE specializations_clinic (
    v_name clinic.name%TYPE
) IS

    TYPE index_table IS
        TABLE OF VARCHAR2(40) INDEX BY PLS_INTEGER;
    specializations   index_table;
    v_exception       EXCEPTION;
    v_nr              INT := 0;
    v_nume            clinic.name%TYPE;
BEGIN
    SELECT name
    INTO v_nume
    FROM clinic
    WHERE name = v_name;

    SELECT s.name
    BULK COLLECT
    INTO specializations
    FROM
        clinic               c,
        works_on             wc,
        doctor               d,
        has_specialization   hs,
        specialization       s
    WHERE
        c.name = v_name
        AND c.clinic_id = wc.clinic_id
        AND wc.doctor_id = d.doctor_id
        AND d.doctor_id = hs.doctor_id
        AND hs.specialization_id = s.specialization_id;

    IF specializations.count = 0 THEN
        RAISE v_exception;
    END IF;
    
    dbms_output.put_line('Clinica ' || v_name);
    dbms_output.new_line();
    
    FOR i IN specializations.first..specializations.last LOOP 
        dbms_output.put_line(specializations(i));
    END LOOP;

    dbms_output.new_line();
EXCEPTION
    WHEN v_exception THEN
        raise_application_error(-20000, 'Nu exista specializari la clinica respectiva');
    WHEN too_many_rows THEN
        raise_application_error(-20000, 'Exista mai multe clinici cu acest nume');
    WHEN OTHERS THEN
        raise_application_error(-20002, 'Alta eroare!');
END;
/
SET SERVEROUTPUT ON;

BEGIN
    specializations_clinic('Medlife');
END;
/
BEGIN
    specializations_clinic('Uni Clinic');
END;
/
BEGIN
    specializations_clinic('Clinica');
END;
/
--ex10
--nu pot fi adaugate consultatii duminica, sambata si nici in rstul zileleor intre orele 20 si 8

CREATE OR REPLACE TRIGGER trig1 BEFORE
    INSERT OR UPDATE OR DELETE ON consultation
BEGIN
    IF ( to_char(sysdate, 'D') = 1) OR ( to_char(sysdate, 'D') = 7 ) OR ( to_char(sysdate, 'HH24') NOT BETWEEN 8 AND 20 ) THEN
        IF inserting THEN
            raise_application_error(-20001, 'Inserarea in tabel este permisa doar in timpul programului de lucru!');
        ELSIF deleting THEN
            raise_application_error(-20002, 'Stergerea din tabel este permisa doar in timpul programului de lucru!');
        ELSE
            raise_application_error(-20003, 'Actualizarile in tabel sunt permise doar in timpul programului de lucru!');
        END IF;

    END IF;
END;
/

DELETE consultation
WHERE
    clinic_id = 2;

--ex11
--nu poate fi modificata data consultatiei cu o data mai mare decat cea actuala

CREATE OR REPLACE TRIGGER trig2 BEFORE
    UPDATE OF consultation_date ON consultation
    FOR EACH ROW
    WHEN ( new.consultation_date > sysdate )
BEGIN
    raise_application_error(-20002, 'Data nu poate fi modificata');
END;
/

UPDATE consultation
SET consultation_date = '02/21/2020 12:20:00'
WHERE consultation_id = 1;

UPDATE consultation
SET consultation_date = '02/21/2021 12:20:00'
WHERE consultation_id = 1;

--ex 12
--nu se poti sterge sau modifica tabele
CREATE OR REPLACE TRIGGER trig3 AFTER DROP OR ALTER ON SCHEMA BEGIN
    raise_application_error(-20002, 'Nu poti sterge sau modifica tabelele');
    ROLLBACK;
END;
/
DROP TABLE has_specialization;

--ex13

CREATE OR REPLACE PACKAGE pachet AS
    PROCEDURE specializations_price (
        x   NUMBER,
        y   NUMBER
    );

    PROCEDURE consultations (
        v_month NUMBER
    );

    FUNCTION patients (
        v_name   diagnostic.name%TYPE,
        v_age    patient.age%TYPE
    ) RETURN NUMBER;

    PROCEDURE specializations_clinic (
        v_name clinic.name%TYPE
    );

END pachet;
/

CREATE OR REPLACE PACKAGE BODY pachet AS

    PROCEDURE specializations_price (
        x   NUMBER,
        y   NUMBER
    ) IS
        TYPE index_table IS
            TABLE OF VARCHAR2(40) INDEX BY PLS_INTEGER;
        v_specializations index_table;
        v_exception EXCEPTION;
    BEGIN
    
        SELECT name
        BULK COLLECT
        INTO v_specializations
        FROM specialization
        WHERE price <= y AND price >= x;

        IF v_specializations.count = 0 THEN
            RAISE v_exception;
        END IF;
        dbms_output.put_line('Specializarile sunt:');

        FOR i IN v_specializations.first..v_specializations.last LOOP 
            dbms_output.put_line(v_specializations(i));
        END LOOP;

    EXCEPTION
        WHEN v_exception THEN
            raise_application_error(-20000, 'Nu exista asemenea specializari');
        WHEN OTHERS THEN
            raise_application_error(-20002, 'Alta eroare!');
    END;

    PROCEDURE consultations (
        v_month NUMBER
    ) IS

        CURSOR consult IS
        SELECT
            consultation_id,
            doctor_id,
            patient_id,
            clinic_id,
            diagnostic_id,
            consultation_date
        FROM consultation
        WHERE v_month = EXTRACT(MONTH FROM consultation_date)
        ORDER BY consultation_date;

        v_exception1 EXCEPTION;
        v_exception2 EXCEPTION;
        v_nr INT := 0;
        
    BEGIN
        IF v_month <= 0 OR v_month > 12 THEN
            RAISE v_exception1;
        ELSE
            FOR i IN consult LOOP
                v_nr := v_nr + 1;
                dbms_output.put_line('Consultatia nr ' || i.consultation_id);
                dbms_output.put_line('Doctor: ' || i.doctor_id);
                dbms_output.put_line('Patient: ' || i.patient_id);
                dbms_output.put_line('Clinic: ' || i.clinic_id);
                dbms_output.put_line('Diagnostic: ' || i.diagnostic_id);
                dbms_output.put_line('Date: ' || i.consultation_date);
                dbms_output.new_line();
            END LOOP;
        END IF;

        IF v_nr = 0 THEN
            RAISE v_exception2;
        END IF;
        
    EXCEPTION
        WHEN v_exception2 THEN
            raise_application_error(-20000, 'Nu exista consultatii in luna respectiva');
        WHEN v_exception1 THEN
                   raise_application_error(-20000, 'Luna ' || v_month || ' nu este valida');
        WHEN OTHERS THEN
            raise_application_error(-20002, 'Alta eroare!');
    END;

    FUNCTION patients (
        v_name   diagnostic.name%TYPE,
        v_age    patient.age%TYPE
    ) RETURN NUMBER IS
        nr NUMBER;
        v_exception1 EXCEPTION;
        v_exception2 EXCEPTION;
    BEGIN
        SELECT COUNT(p.patient_id)
        INTO nr
        FROM
            diagnostic     d,
            patient        p,
            consultation   c
        WHERE
            p.patient_id = c.patient_id
            AND c.diagnostic_id = d.diagnostic_id
            AND p.age >= v_age
            AND d.name = v_name;

        IF v_age <= 0 THEN
            RAISE v_exception1;
        END IF;
        
        IF nr = 0 THEN
            RAISE v_exception2;
        END IF;
        
        RETURN nr;
        
    EXCEPTION
        WHEN v_exception2 THEN
            raise_application_error(-20000, 'Nu exista pacienti cu aceste date');
        WHEN v_exception1 THEN
            raise_application_error(-20000, 'Varsta nu poate fi negativa');
        WHEN OTHERS THEN
            raise_application_error(-20002, 'Alta eroare!');
    END patients;

    PROCEDURE specializations_clinic (
        v_name clinic.name%TYPE
    ) IS

        TYPE index_table IS
            TABLE OF VARCHAR2(40) INDEX BY PLS_INTEGER;
        specializations   index_table;
        v_exception EXCEPTION;
        v_nr              INT := 0;
        v_nume            clinic.name%TYPE;
    BEGIN
    
        SELECT name
        INTO v_nume
        FROM clinic
        WHERE name = v_name;

        SELECT s.name
        BULK COLLECT
        INTO specializations
        FROM
            clinic               c,
            works_on             wc,
            doctor               d,
            has_specialization   hs,
            specialization       s
        WHERE
            c.name = v_name
            AND c.clinic_id = wc.clinic_id
            AND wc.doctor_id = d.doctor_id
            AND d.doctor_id = hs.doctor_id
            AND hs.specialization_id = s.specialization_id;

        IF specializations.count = 0 THEN
            RAISE v_exception;
        END IF;
        
        dbms_output.put_line('Clinica ' || v_name);
        dbms_output.new_line();
        
        FOR i IN specializations.first..specializations.last LOOP 
            dbms_output.put_line(specializations(i));
        END LOOP;

        dbms_output.new_line();
        
    EXCEPTION
        WHEN v_exception THEN
            raise_application_error(-20000, 'Nu exista specializari la clinica respectiva');
        WHEN too_many_rows THEN
            raise_application_error(-20000, 'Exista mai multe clinici cu acest nume');
        WHEN OTHERS THEN
            raise_application_error(-20002, 'Alta eroare!');
    END;

END pachet;
/
SET SERVEROUTPUT ON;

BEGIN
    pachet.specializations_price(200, 250);
    dbms_output.new_line();
    
    pachet.consultations(3);
    dbms_output.new_line();
    
    dbms_output.put_line('Numarul pacientilor este ' || pachet.patients('Hipertensiune', 15));
    dbms_output.new_line();
    
    pachet.specializations_clinic('Medlife');
END;
 /
 
 DROP TRIGGER TRIG1;
  DROP TRIGGER TRIG2;

 DROP TRIGGER TRIG3;

