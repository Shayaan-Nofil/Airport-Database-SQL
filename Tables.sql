use DB_A1

create table PLANE_TYPE
(
model_num NUMERIC(4) NOT NULL Primary key,
model_name VARCHAR(15),
Capacity NUMERIC(3),
WEIGHT_TONS Numeric(3));

INSERT INTO PLANE_TYPE VALUES
(1245, 'Airbus A330', 750, 560);
INSERT INTO PLANE_TYPE VALUES
(1352, 'Boeing 787', 420, 360);
INSERT INTO PLANE_TYPE VALUES
(3263, 'Concorde', 300, 450);
INSERT INTO PLANE_TYPE VALUES
(8824, 'Dornier 228', 210, 410);
INSERT INTO PLANE_TYPE VALUES
(9346, 'Cessna 208', 170, 230);

create table AIRPLANE
(
Reg# NUMERIC(4) NOT NULL Primary key,
model_num NUMERIC(4) NOT NULL Foreign Key references PLANE_TYPE(model_num),
hangar_num NUMERIC(2));

INSERT INTO AIRPLANE VALUES
(1001, 1245, 1),
(1002, 1352, 1),
(1003, 3263, 4),
(1004, 8824, 5),
(1005, 9346, 5),
(1006, 1245, 5),
(1007, 9346, 5),
(1008, 3263, 5),
(1009, 8824, 3),
(1010, 9346, 2),
(1011, 1245, 3),
(1012, 1352, 3),
(1013, 9346, 1),
(1014, 8824, 2),
(1015, 9346, 2),
(1016, 1245, 4),
(1017, 1352, 4),
(1018, 3263, 4),
(1019, 1352, 3),
(1020, 9346, 2);


create table HANGAR
(
hangar_num NUMERIC(2) NOT NULL Primary key,
Capacity NUMERIC(2),
hLocation VARCHAR(10));

INSERT INTO HANGAR VALUES
(1, 6, 'Karachi');
INSERT INTO HANGAR VALUES
(2, 8, 'Islamabad');
INSERT INTO HANGAR VALUES
(3, 4, 'Multan');
INSERT INTO HANGAR VALUES
(4, 5, 'Lahore'),
(5, 10, 'Kashmore');


create table PPERSON
(
SSN Numeric(4) NOT NULL Primary Key,
PName VARCHAR(25),
Adress VARCHAR(35),
Phone VARCHAR(15));

INSERT INTO PPERSON VALUES
(1241, 'Ahmed Khan', 'Bahria Town, Islamabad', '0321-4386259');
INSERT INTO PPERSON VALUES
(2156, 'Zahed Mashwanis', 'Gulshan, Karachi', '0301-7565441');
INSERT INTO PPERSON VALUES
(7306, 'Kamil Jafari', 'DHA, Karachi', '0314-5468971');
INSERT INTO PPERSON VALUES
(2346, 'Ramona Naqvi', 'Model Town, Multan', '0338-9410289');
INSERT INTO PPERSON VALUES
(8778, 'Bahameen Shirazi', 'G-13, Islamabad', '0369-2059711');
INSERT INTO PPERSON VALUES
(3187, 'Sorush Malik', 'Fazia Colony, Peshawar', '0321-1306251');
INSERT INTO PPERSON VALUES
(2143, 'Ariana Naeem', 'DHA, Islamabad', '0333-7538653');
INSERT INTO PPERSON VALUES
(2608, 'Abdul Hameed', 'North Nazimabad, Karachi', '0323-0647573');
INSERT INTO PPERSON VALUES
(6373, 'Ayhan Qureshi', 'Kolar Town, Peshawar', '0345-5473254');
INSERT INTO PPERSON VALUES
(2096, 'Ali Akbar', 'Sakhi Khem, Sialkot', '0333-5754287');
INSERT INTO PPERSON VALUES
(3072, 'Nawaz Pasha', 'PWD, Multan', '0345-6749285');
INSERT INTO PPERSON VALUES
(4554, 'Sarah Iftikhar', 'Gulrez, Islamabad', '0321-1458762');
INSERT INTO PPERSON VALUES
(8170, 'Kamran Sheikh', 'F-10, Islamabad', '0316-4975831');
INSERT INTO PPERSON VALUES
(4570, 'Shidfar Abidi', 'Bahria Town, Lahore', '0336-6728435');
INSERT INTO PPERSON VALUES
(9073, 'Syma Rafay', 'Margalla Road, Islamabad', '0317-4978253');
INSERT INTO PPERSON VALUES
(8392, 'Wahab Sahni', 'Saddar, Lahore', '0318-8273461');
INSERT INTO PPERSON VALUES
(6048, 'Kashif Hamid', 'Kanaar, Sialkot', '0321-2438759');
INSERT INTO PPERSON VALUES
(1541, 'Imran Tahir', 'I-10, Islamabad', '0335-5355682');
INSERT INTO PPERSON VALUES
(9147, 'Fatima Khan', 'Court Road, Lahore', '0324-6768599');
INSERT INTO PPERSON VALUES
(1692	, 'Ameer Hamza', 'Bahria Town, Karachi', '0391-4587682');
INSERT INTO PPERSON VALUES
(6534, 'Arsalan Sherzai', 'Salaam Gate, Peshawar', '0333-2134547');


create table PILOT
(
SSN Numeric(4) Foreign Key references PPERSON(SSN),
Lic_num VARCHAR(4) Primary Key,
Restr VARCHAR(15));

INSERT INTO PILOT VALUES
(1241, 8001, 'None');
INSERT INTO PILOT VALUES
(2156, 8002, 'Medical');
INSERT INTO PILOT VALUES
(7306, 8003, 'Vision');
INSERT INTO PILOT VALUES
(2346, 8004, 'Hearing');
INSERT INTO PILOT VALUES
(8778, 8005, 'None');
INSERT INTO PILOT VALUES
(3187, 8006, 'Medical');
INSERT INTO PILOT VALUES
(2143, 8007, 'Vision');
INSERT INTO PILOT VALUES
(2608, 8008, 'Hearing');


create table EMPLOYEE
(
SSN Numeric(4) Foreign Key references  PPERSON(SSN) primary key,
Salary Numeric(5),
Shift_worked VARCHAR(5) CHECK (Shift_worked IN ('Day', 'Night')));

INSERT INTO EMPLOYEE VALUES 
(6373, 50000, 'Day'),
(2096, 55000, 'Night'),
(3072, 60000, 'Day'),
(4554, 62000, 'Night'),
(8170, 58000, 'Day'),
(4570, 65000, 'Night'),
(9073, 52000, 'Day'),
(8392, 57000, 'Night');

create table WORK
(
work_code VARCHAR(6) NOT NULL Primary Key,
Work_name VARCHAR(20));

INSERT INTO WORK VALUES
('CL1002', 'Cleaning');
INSERT INTO WORK VALUES
('RF3241', 'Refueling');
INSERT INTO WORK VALUES
('PR6253', 'Pressure check');
INSERT INTO WORK VALUES
('MR2732', 'Minor Repairs');
INSERT INTO WORK VALUES
('CC5362', 'Cockpit checkup');
INSERT INTO WORK VALUES
('SI2379', 'Safety Inspection');

create table PSERVICE
(
Reg# NUMERIC(4) Foreign Key references AIRPLANE(Reg#),
SSN Numeric(4)Foreign Key references PPERSON(SSN),
SHours Numeric(2),
SDate Date,
Work_code VARCHAR(6) Foreign Key references WORK(work_code));


INSERT INTO PSERVICE VALUES
(1001, 3072, 08, '2023-02-16', 'CL1002'),
(1002, 6373, 04, '2023-03-01', 'CC5362'),
(1003, 8170, 06, '2023-03-08', 'SI2379'),
(1001, 2096, 02, '2023-03-02', 'PR6253'),
(1005, 4554, 08, '2023-03-29', 'MR2732'),
(1006, 9073, 04, '2023-02-19', 'RF3241'),
(1007, 9073, 06, '2023-03-04', 'SI2379'),
(1003, 8392, 02, '2023-03-26', 'PR6253'),
(1009, 6373, 08, '2023-03-05', 'MR2732'),
(1010, 4554, 04, '2023-03-24', 'CC5362'),
(1010, 3072, 06, '2023-03-27', 'SI2379'),
(1012, 4554, 02, '2023-01-06', 'PR6253'),
(1013, 8170, 08, '2023-03-07', 'MR2732'),
(1012, 8392, 04, '2023-03-07', 'RF3241'),
(1015, 6373, 06, '2023-03-29', 'SI2379'),
(1016, 2096, 02, '2023-03-08', 'PR6253'),
(1012, 8392, 08, '2023-03-29', 'MR2732'),
(1018, 4570, 04, '2023-03-09', 'CC5362'),
(1007, 9073, 06, '2023-03-24', 'SI2379'),
(1020, 4554, 02, '2023-03-10', 'PR6253');


create table CORPORATION
(
CName VARCHAR(15) Not Null Primary Key,
Adress VARCHAR(35),
Phone VARCHAR(15));

INSERT INTO CORPORATION VALUES
('ABC Ltd', 'Gulberg III, Lahore', '042-12345678'),
('XYZ Industries', 'PECHS, Karachi', '021-23456789'),
('DEF Corporation', 'DHA Phase 6, Karachi', '021-34567890'),
('YZA Enterprises', 'F-7, Islamabad', '051-01234567'),
('BCD Inc.', 'Cantt, Rawalpindi', '051-12345678');

create table FLIES
(
Lic_num VARCHAR(4) Foreign Key references PILOT(Lic_num),
model_num NUMERIC(4) Foreign Key references PLANE_TYPE(model_num));

INSERT INTO FLIES VALUES
(8001, 1245),
(8008, 9346),
(8004, 3263),
(8003, 3263),
(8002, 1352),
(8007, 1245),
(8001, 9346),
(8002, 1245),
(8008, 3263),
(8007, 8824),
(8003, 8824),
(8002, 9346),
(8006, 1245),
(8004, 8824),
(8007, 9346),
(8006, 8824),
(8001, 8824),
(8008, 1352),
(8005, 1352),
(8002, 3263);


create table OWNS
(
O_Type VARCHAR(6) CHECK(O_tYPE IN ('CORP', 'PERSON')),
SSN Numeric(4)Foreign Key references PPERSON(SSN),
CName VARCHAR(15) Foreign Key references CORPORATION(CName),
Reg# NUMERIC(4) Foreign Key references AIRPLANE(Reg#), 
PDate Date);

INSERT INTO OWNS VALUES
('PERSON', 6048, NULL, 1001, '2022-01-15'),
('CORP', NULL, 'ABC Ltd', 1002, '2022-02-01'),
('PERSON', 1541, NULL, 1003, '2022-03-05'),
('CORP', NULL, 'YZA Enterprises', 1004, '2022-04-20'),
('PERSON', 9147, NULL, 1005, '2022-05-10'),
('CORP', NULL, 'DEF Corporation', 1006, '2023-03-27'),
('PERSON', 6048, NULL, 1007, '2022-07-20'),
('CORP', NULL, 'XYZ Industries', 1008, '2022-08-10'),
('PERSON', 6534, NULL, 1009, '2022-09-05'),
('CORP', NULL, 'BCD Inc.', 1010, '2022-10-25'),
('PERSON', 6048, NULL, 1011, '2022-11-05'),
('CORP', NULL, 'ABC Ltd', 1012, '2022-12-01'),
('PERSON', 1541, NULL, 1013, '2023-03-15'),
('CORP', NULL, 'DEF Corporation', 1014, '2023-02-01'),
('PERSON', 9147, NULL, 1015, '2023-03-05'),
('CORP', NULL, 'ABC Ltd', 1016, '2022-04-20'),
('PERSON', 1692, NULL, 1017, '2021-05-10'),
('CORP', NULL, 'BCD Inc.', 1018, '2023-01-15'),
('PERSON', 6534, NULL, 1019, '2022-07-20'),
('CORP', NULL, 'XYZ Industries', 1020, '2023-03-10');

create table WORKS_ON
(
SSN Numeric(4) Foreign Key references EMPLOYEE(SSN),
model_num NUMERIC(4) Foreign Key references PLANE_TYPE(model_num));

INSERT INTO WORKS_ON VALUES
(8392, 3263),
(4554, 8824),
(9073, 1245),
(6373, 8824),
(8392, 1352),
(4554, 9346),
(3072, 3263),
(2096, 8824),
(4570, 3263),
(8392, 8824),
(4554, 1352),
(3072, 9346),
(2096, 1245),
(4554, 3263),
(8170, 3263),
(6373, 9346),
(9073, 1352),
(3072, 1245),
(8170, 8824),
(6373, 1352);


