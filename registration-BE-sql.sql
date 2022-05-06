create DATABASE registration;

CREATE TABLE login (
    login_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR (20),
    role_type CHAR (3),
    password VARCHAR (20)
);

CREATE TABLE usersInformation (
	user_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    login_id int,
	FOREIGN KEY (login_id) REFERENCES login(login_id),
    year int(4),
    programe VARCHAR (20),

    student_name VARCHAR (50),
    email varchar (50),
	passport VARCHAR (40),
    current_address VARCHAR (40),
    nationality VARCHAR(20),
	conatct_number int(20),
	dob VARCHAR(20),
    next_of_kin CHAR(20),
	next_of_kin_number CHAR(20),
	learner_student_name VARCHAR(20),
	learner_passport VARCHAR(20),
    learner_nationality VARCHAR(20),
    learner_current_address VARCHAR(20),
	learner_conatct_number int(20),
	learner_dob VARCHAR(20),
	terms_and_conditions_ind BOOLEAN,
    status VARCHAR (20)
);

DELETE FROM login 

select * from login;

INSERT INTO login (user_name, password , role_type) values ('admin' , 'test' , 'A')
,('robert' , '123456' , 'U'),('admin' , 'test' , 'A');

DELETE FROM usersInformation 

select * from usersInformation;

INSERT INTO usersInformation (year, programe, payment_option, student_name , status , login_id)
VALUES (2015, 'WP', 'cash deposite', 'John' , 'Suspended' , 2); 

(SELECT login_id FROM login WHERE user_name = 'john' and password = '12345');
SELECT * FROM usersInformation WHERE login_id In (SELECT login_id FROM login WHERE user_name = 'john' and password = '12345');




