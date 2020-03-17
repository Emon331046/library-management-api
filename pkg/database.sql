create database library_management;


create table users (
    id SERIAL PRIMARY KEY,
    name varchar(100) NOT NULL,
    mail varchar(50) NOT NULL,
    password varchar(300) NOT NULL,
    phone_no varchar(15) NOT NULL,
    user_type varchar(20) NOT NULL
                   );

create table Books (
    id SERIAL PRIMARY KEY,
    book_name varchar(100) NOT NULL,
    author varchar(50) NOT NULL,
    available BOOLEAN DEFAULT TRUE
                   );
create table books_history (
    history_id SERIAL PRIMARY KEY,
    book_id integer NOT NULL,
    book_name varchar(100) NOT NULL,
    user_id integer NOT NULL ,
    user_name varchar(50) NOT NULL,
    purchased_date varchar(50) NOT NULL,
    return_date varchar(50) NOT NULL,
    returned BOOLEAN DEFAULT False
);


