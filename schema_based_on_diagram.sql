 CREATE TABLE patients(id SERIAL PRIMARY KEY NOT NULL,name varchar(255),date_of_birth date);
CREATE TABLE medical_histories(id SERIAL PRIMARY KEY NOT NULL,admitted_at timestamp,patients_id BIGINT REFERENCES patients(id),status varchar(255));


CREATE TABLE invoices(id SERIAL PRIMARY KEY NOT NULL,total_amount decimal,generated_at timestamp,payed_at timestamp,medical_history_id int,FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id));

CREATE TABLE treatments(id SERIAL PRIMARY KEY NOT NULL,type varchar(255),name varchar(255));

CREATE TABLE invoices_items(id SERIAL PRIMARY KEY NOT NULL,unit_price decimal,quantity int,total_price decimal,invoices_id int,FOREIGN KEY (invoices_id) REFERENCES invoices(id),treatment_id int,FOREIGN KEY (treatment_id) REFERENCES treatments(id));

CREATE TABLE medical_treatments(id SERIAL PRIMARY KEY NOT NULL, medical_history_id int,FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id),treatment_id int,FOREIGN KEY (treatment_id) REFERENCES treatments(id));

