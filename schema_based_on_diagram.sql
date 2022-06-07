 CREATE TABLE patients(id SERIAL PRIMARY KEY NOT NULL,name varchar(255),date_of_birth date);
CREATE TABLE medical_histories(id SERIAL PRIMARY KEY NOT NULL,admitted_at timestamp,patients_id BIGINT REFERENCES patients(id),status varchar(255));


CREATE TABLE invoices(id SERIAL PRIMARY KEY NOT NULL,total_amount decimal,generated_at timestamp,payed_at timestamp,medical_history_id int,FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id));

