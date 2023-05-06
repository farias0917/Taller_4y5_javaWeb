Create database myApp;
use MyApp;

Create table users_tbl(
user_id int auto_increment primary key,
user_firstname VARCHAR(40) not null,
user_lastname VARCHAR(40) not null,
user_email VARCHAR(60) not null,
user_password VARBINARY(256)
);

insert into users_tbl (user_firstname, user_lastname,user_email,user_password)
values ("Emanuel","Farias","emanuel@gmail.com","marranitooigoig");

insert into users_tbl (user_firstname, user_lastname,user_email,user_password)
values ("Danielcho","Fercho","dinosaurio@gmail.com","grrrr");

INSERT INTO myApp.users_tbl(user_firstname,user_lastname,user_email,user_password)
values(UPPER("lolITa"),UPPER("tORreS"),LOWER("TORRESGEMELAS@gmail.com"),
AES_ENCRYPT("litalolitauhh12","$2a$12$ljIarRxETRxF4v64E6aL3.wTQxIqHi71cQ69b11Jzj3dFvbMjwB5S"));


INSERT INTO myApp.users_tbl(user_firstname,user_lastname,user_email,user_password)
values(UPPER("CARmelito"),UPPER("paREDEs"),LOWER("meliCOP@gmail.com"),
AES_ENCRYPT("paredesdeicopor12","$2a$12$ljIarRxETRxF4v64E6aL3.wTQxIqHi71cQ69b11Jzj3dFvbMjwB5S"));

SELECT *, CAST(AES_DECRYPT(user_password,"$2a$12$ljIarRxETRxF4v64E6aL3.wTQxIqHi71cQ69b11Jzj3dFvbMjwB5S")AS CHAR(50))
end_data FROM users_tbl where user_id = 10;

select * from users_tbl;