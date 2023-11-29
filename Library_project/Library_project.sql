--CREATE DATABASE library_project;

--USE library_project;

CREATE TABLE readers
(
id varchar(6),
fname varchar(30),
lname varchar(30),
city varchar(30),
phone varchar(30),
occupation varchar(30),
dob DATE
CONSTRAINT readers_pk PRIMARY KEY(id)
)

INSERT INTO readers (id, fname, lname, city, phone, occupation, dob)
VALUES
('1', 'Haben', 'Fikadu', 'Addis Ababa', '0987654321', 'Software Engineer', '1990-01-01'),
('2', 'Meklit', 'Alem', 'Gondar', '0123456789', 'Doctor', '1992-02-02'),
('3', 'Selamawit', 'Tesfaye', 'Bahir Dar', '3456789012', 'Teacher', '1994-03-03'),
('4', 'Meseret', 'Tekle', 'Mekele', '5678901234', 'Engineer', '1996-04-04'),
('5', 'Endale', 'Gebre', 'Hawassa', '7890123456', 'Accountant', '1998-05-05'),
('6', 'Tigist', 'Wondemu', 'Addis Ababa', '0954765432', 'Web Developer', '1991-03-15'),
('7', 'Zerihun', 'Desta', 'Gondar', '0145656789', 'Nurse', '1993-08-22'),
('8', 'Bezazit', 'Asfaw', 'Bahir Dar', '3478901256', 'Marketing Manager', '1995-06-09'),
('9', 'Aster', 'Mengesha', 'Mekele', '5674561234', 'Journalist', '1997-12-24'),
('10', 'Samuel', 'Zeray', 'Hawassa', '7865432190', 'Graphic Designer', '2000-02-01'),
('11', 'Tigistu', 'Hailemariam', 'Addis Ababa', '0923456781', 'Teacher', '1989-07-10'),
('12', 'Hiwot', 'Berhane', 'Gondar', '0156789012', 'Lawyer', '1994-05-18'),
('13', 'Hirut', 'Gebremedhin', 'Bahir Dar', '3456789023', 'Architect', '1996-11-07'),
('14', 'Seifu', 'Alemayehu', 'Mekele', '5645671234', 'Software Engineer', '1998-09-16'),
('15', 'Etenesh', 'Mengistu', 'Hawassa', '7834562190', 'Doctor', '2001-01-03'),
('16', 'Daniel', 'Gebreselassie', 'Addis Ababa', '0987654325', 'Accountant', '1990-04-21'),
('17', 'Hawi', 'Fekadu', 'Gondar', '0123456794', 'Web Developer', '1992-10-13'),
('18', 'Selamawi', 'Abebe', 'Bahir Dar', '3456789034', 'Nurse', '1994-07-04'),
('19', 'Solomon', 'Wondwosen', 'Mekele', '5678901245', 'Marketing Manager', '1996-01-26'),
('20', 'Tigist', 'Yami', 'Hawassa', '7890123459', 'Journalist', '1998-03-12'),
('21', 'Biruk', 'Teklehaimanot', 'Addis Ababa', '0912345678', 'Graphic Designer', '1989-12-05'),
('22', 'Hanna', 'Gebrekristos', 'Gondar', '0187654321', 'Lawyer', '1991-05-14'),
('23', 'Yonatan', 'Tesfaye', 'Bahir Dar', '3465432190', 'Architect', '1993-11-09'),
('24', 'Zeritu', 'Amare', 'Mekele', '5687654321', 'Software Engineer', '1995-03-23'),
('25', 'Seble', 'Gebre', 'Hawassa', '7845632109', 'Doctor', '1997-08-04');

SELECT * FROM readers

CREATE TABLE Book
(
bid VARCHAR (6),
bname VARCHAR (30),
bdomain VARCHAR (30),
CONSTRAINT book_bid_pk PRIMARY KEY(bid)
);

INSERT INTO Book (bid, bname, bdomain)
VALUES
('B001', 'The Enchantress of Addis Ababa', 'Fiction'),
('B002', 'Simien Mountains', 'Mystery'),
('B003', 'Land of the Blue Nile', 'Romance'),
('B004', 'Echoes of Axum', 'Historical Fiction'),
('B005', 'The Lion King of Ethiopia', 'Literature'),
('B006', 'The Coffee Chronicles', 'Non-Fiction'),
('B007', 'The Enigma of Emperor Tewodros', 'Biography'),
('B008', 'The Whispers of Wollo', 'Folktales'),
('B009', 'The Legacy of Lalibela', 'Art and Architecture'),
('B010', 'The Rhythm of Ethiopia', 'Poetry');



CREATE TABLE active_readers(
account_id VARCHAR(6),
reader_id VARCHAR(6),
bid VARCHAR(6),
atype VARCHAR(10),
astatus VARCHAR(10),
CONSTRAINT activereaders_acnumber_pk PRIMARY KEY (account_id),
CONSTRAINT account_readerid_fk FOREIGN KEY(reader_id) REFERENCES readers(id),
CONSTRAINT account_bid_fk FOREIGN KEY (bid) REFERENCES Book(bid)
);


INSERT INTO active_readers (account_id, reader_id, bid, atype, astatus)
VALUES
('AR001', '05', 'B002', 'Borrowed', 'Active'),
('AR002', '12', 'B004', 'Reading Room', 'Active'),
('AR003', '18', 'B001', 'Borrowed', 'Active'),
('AR004', '07', 'B003', 'Borrowed', 'Active'),
('AR005', '21', 'B007', 'Reading Room', 'Active'),
('AR006', '04', 'B009', 'Borrowed', 'Active'),
('AR007', '15', 'B006', 'Borrowed', 'Active'),
('AR008', '25', 'B008', 'Reading Room', 'Active'),
('AR009', '10', 'B005', 'Borrowed', 'Active'),
('AR010', '17', 'B010', 'Reading Room', 'Active');

