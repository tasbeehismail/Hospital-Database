CREATE DATABASE Hospital;
use Hospital;

CREATE TABLE department(
    deptid int ,
    dname varchar(20) NOT NULL,
    dept_head int,
    PRIMARY key(deptid)
);
CREATE TABLE employee(
    emp_id int ,
    fname varchar(20) NOT NULL,
	mname varchar(20),
    lname varchar(20) NOT NULL,
    gender varchar(6) NOT NULL,
    emp_type varchar(20) NOT NULL,
	salary int not null,
    ph_number varchar(12) NOT NULL,
    email varchar(30) NOT NULL,
    street varchar(20) NOT NULL,
    city varchar(20) NOT NULL,
    status varchar(20) NOT NULL,
    joining_date date NOT NULL,
    DOB date NOT NULL,
    CONSTRAINT emp_email CHECK (email like'%@gmail.com'),
    PRIMARY key(emp_id));

ALTER TABLE employee ADD UNIQUE(ph_number);
ALTER TABLE employee ADD UNIQUE(email);

CREATE TABLE worked_in (
    empid int,
    deptid int,
    since date, 
    FOREIGN KEY(empid) REFERENCES employee(emp_id),
    FOREIGN KEY(deptid) REFERENCES department(deptid)
);

CREATE TABLE patient (
    pid int ,
    fname varchar(20),
    mname varchar(20),
    lname varchar(20),
    gender varchar(6),
    DOB date,
    blood_group varchar(3),
    disease varchar(50) DEFAULT 'Unknown',
    ph_number varchar(12),
    email varchar(30),
    street varchar(20),
    city varchar(20),
    ptype bit, -- 1 or 'TRUE' -> in -- 0 or 'FALSE' -> out
    status varchar(20),
    docid int,
    arrival_date date NOT NULL,
    left_date date,
    CONSTRAINT CHK_patient CHECK (arrival_date <= left_date or left_date is null ),
    PRIMARY Key(pid),
    FOREIGN KEY (docid) REFERENCES employee(emp_id)
);

 CREATE TABLE relative(
    pid int,
    rname varchar(30),
    rtype varchar(30),
    pno varchar(11),
    PRIMARY key(pid));

ALTER TABLE relative ADD FOREIGN KEY(pid) REFERENCES patient(pid);

CREATE TABLE doctor(
    docid int,
    qualification varchar(20),
    PRIMARY KEY (docid), 
    CONSTRAINT CHK_doctor CHECK (qualification in( 'BMBS' ,'BM' , 'MBChB')),
    FOREIGN KEY(docid) REFERENCES employee(emp_id)
);

CREATE TABLE nurse(
    nid int, 
    count_patient int DEFAULT 0,
    PRIMARY KEY (nid),
    FOREIGN KEY(nid) REFERENCES employee(emp_id));

CREATE TABLE medicine(
    mid int,
    mname varchar(50) NOT NULL,
    mcost numeric(10, 2),
    PRIMARY KEY(mid)
);

CREATE TABLE test(
    tid int,
    tname varchar(20) NOT NULL,
    tcost numeric(10, 2),
    primary KEY(tid));

CREATE TABLE room (rid int ,
    rcost numeric(10, 2),
    rtype varchar(15),
    primary KEY(rid));

CREATE TABLE bill(
    bid int ,
    mcost float DEFAULT 0,
    tcost float DEFAULT 0,
    rcost float DEFAULT 0,
    othercharges float DEFAULT 0,
    total_cost float DEFAULT 0,
	CONSTRAINT CHK_bill CHECK (total_cost = (mcost + tcost + rcost + othercharges)),
    PRIMARY KEY(bid));

CREATE TABLE had_test(
    pid int,
    tid int,
    testdate date,
    FOREIGN KEY(pid) REFERENCES patient(pid),
    FOREIGN key(tid) REFERENCES test(tid));

CREATE TABLE takes_med(
    pid int,
    mid int,
    med_date date,
    quantity int,
    FOREIGN KEY(pid) REFERENCES patient(pid),
    FOREIGN KEY(mid) REFERENCES medicine(mid));

CREATE TABLE paid_bill(
    pid int,
    bid int,
    bill_date date,
    FOREIGN KEY(pid) REFERENCES patient(pid),
    FOREIGN KEY(bid) REFERENCES bill(bid));

CREATE TABLE allocated_in_room(
    pid int,
    rid int,
    allocated_date date,
    FOREIGN KEY(pid) REFERENCES patient(pid),
    FOREIGN KEY(rid) REFERENCES room(rid));

CREATE TABLE assigned_to_nurse(
    pid int,
    nid int,
    assigned_date date,
    FOREIGN KEY(pid) REFERENCES patient(pid),
    FOREIGN KEY(nid) REFERENCES employee(emp_id));