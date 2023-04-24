-- PERSONNEL DATA
INSERT INTO SEC_MGR.PERSONNEL(PERSON_ID, FIRST_NAME, LAST_NAME, EMAIL, P_RANK, SALARY, TAXCODE, DIRECTOR_FLAG, PERSONNEL_DEPART_FLAG, PERSONNEL_DEPART_MANAGER_FLAG, NORMAL_DEPART_FLAG, NORMAL_DEPART_MANAGER_FLAG, PROJECT_FLAG, PROJECT_MANAGER_FLAG) 
    VALUES('10001', 'Hoang An', 'Pham', '', 'MANAGER', 500000000, '10001', 1, 0, 0, 0, 0, 0, 0);
    
INSERT INTO SEC_MGR.PERSONNEL(PERSON_ID, FIRST_NAME, LAST_NAME, EMAIL, P_RANK, SALARY, TAXCODE, DIRECTOR_FLAG, PERSONNEL_DEPART_FLAG, PERSONNEL_DEPART_MANAGER_FLAG, NORMAL_DEPART_FLAG, NORMAL_DEPART_MANAGER_FLAG, PROJECT_FLAG, PROJECT_MANAGER_FLAG) 
    VALUES('10002', 'Nhan', 'Nguyen Van', '', 'MANAGER', 50000000, '10002', 0, 1, 1, 0, 0, 0, 0);
    
INSERT INTO SEC_MGR.PERSONNEL(PERSON_ID, FIRST_NAME, LAST_NAME, EMAIL, P_RANK, SALARY, TAXCODE, DIRECTOR_FLAG, PERSONNEL_DEPART_FLAG, PERSONNEL_DEPART_MANAGER_FLAG, NORMAL_DEPART_FLAG, NORMAL_DEPART_MANAGER_FLAG, PROJECT_FLAG, PROJECT_MANAGER_FLAG) 
    VALUES('10003', 'Minh Nhan', 'Huynh', '', 'STAFF', 15000000, '10003', 0, 1, 0, 0, 0, 0, 0);
    
INSERT INTO SEC_MGR.PERSONNEL(PERSON_ID, FIRST_NAME, LAST_NAME, EMAIL, P_RANK, SALARY, TAXCODE, DIRECTOR_FLAG, PERSONNEL_DEPART_FLAG, PERSONNEL_DEPART_MANAGER_FLAG, NORMAL_DEPART_FLAG, NORMAL_DEPART_MANAGER_FLAG, PROJECT_FLAG, PROJECT_MANAGER_FLAG) 
    VALUES('10004', 'Trong Nhan', 'Pham', '', 'STAFF', 15000000, '10004', 0, 1, 0, 0, 0, 0, 0);
    
INSERT INTO SEC_MGR.PERSONNEL(PERSON_ID, FIRST_NAME, LAST_NAME, EMAIL, P_RANK, SALARY, TAXCODE, DIRECTOR_FLAG, PERSONNEL_DEPART_FLAG, PERSONNEL_DEPART_MANAGER_FLAG, NORMAL_DEPART_FLAG, NORMAL_DEPART_MANAGER_FLAG, PROJECT_FLAG, PROJECT_MANAGER_FLAG) 
    VALUES('10006', 'Tai An', 'Huynh', '', 'MANAGER', 40000000, '10006', 0, 0, 0, 1, 0, 1, 1);
    
INSERT INTO SEC_MGR.PERSONNEL(PERSON_ID, FIRST_NAME, LAST_NAME, EMAIL, P_RANK, SALARY, TAXCODE, DIRECTOR_FLAG, PERSONNEL_DEPART_FLAG, PERSONNEL_DEPART_MANAGER_FLAG, NORMAL_DEPART_FLAG, NORMAL_DEPART_MANAGER_FLAG, PROJECT_FLAG, PROJECT_MANAGER_FLAG) 
    VALUES('10007', 'Tuan Tai', 'Truong', '', 'STAFF', 15000000, '10007', 0, 0, 0, 1, 0, 1, 0);
    
INSERT INTO SEC_MGR.PERSONNEL(PERSON_ID, FIRST_NAME, LAST_NAME, EMAIL, P_RANK, SALARY, TAXCODE, DIRECTOR_FLAG, PERSONNEL_DEPART_FLAG, PERSONNEL_DEPART_MANAGER_FLAG, NORMAL_DEPART_FLAG, NORMAL_DEPART_MANAGER_FLAG, PROJECT_FLAG, PROJECT_MANAGER_FLAG) 
    VALUES('10008', 'Minh Tai', 'Van Vo', '', 'STAFF', 15000000, '10008', 0, 0, 0, 1, 0, 1, 0);
    
INSERT INTO SEC_MGR.PERSONNEL(PERSON_ID, FIRST_NAME, LAST_NAME, EMAIL, P_RANK, SALARY, TAXCODE, DIRECTOR_FLAG, PERSONNEL_DEPART_FLAG, PERSONNEL_DEPART_MANAGER_FLAG, NORMAL_DEPART_FLAG, NORMAL_DEPART_MANAGER_FLAG, PROJECT_FLAG, PROJECT_MANAGER_FLAG) 
    VALUES('10009', 'Tu Tai', 'Vo', '', 'STAFF', 15000000, '10009', 0, 0, 0, 1, 0, 1, 0);
    
INSERT INTO SEC_MGR.PERSONNEL(PERSON_ID, FIRST_NAME, LAST_NAME, EMAIL, P_RANK, SALARY, TAXCODE, DIRECTOR_FLAG, PERSONNEL_DEPART_FLAG, PERSONNEL_DEPART_MANAGER_FLAG, NORMAL_DEPART_FLAG, NORMAL_DEPART_MANAGER_FLAG, PROJECT_FLAG, PROJECT_MANAGER_FLAG) 
    VALUES('10011', 'Cong Bach', 'Ly', '', 'MANAGER', 40000000, '10011', 0, 0, 0, 1, 0, 1, 1);
    
INSERT INTO SEC_MGR.PERSONNEL(PERSON_ID, FIRST_NAME, LAST_NAME, EMAIL, P_RANK, SALARY, TAXCODE, DIRECTOR_FLAG, PERSONNEL_DEPART_FLAG, PERSONNEL_DEPART_MANAGER_FLAG, NORMAL_DEPART_FLAG, NORMAL_DEPART_MANAGER_FLAG, PROJECT_FLAG, PROJECT_MANAGER_FLAG) 
    VALUES('10012', 'Hoang Cong', 'Dang', '', 'STAFF', 15000000, '10012', 0, 0, 0, 1, 0, 1, 0);
    
INSERT INTO SEC_MGR.PERSONNEL(PERSON_ID, FIRST_NAME, LAST_NAME, EMAIL, P_RANK, SALARY, TAXCODE, DIRECTOR_FLAG, PERSONNEL_DEPART_FLAG, PERSONNEL_DEPART_MANAGER_FLAG, NORMAL_DEPART_FLAG, NORMAL_DEPART_MANAGER_FLAG, PROJECT_FLAG, PROJECT_MANAGER_FLAG) 
    VALUES('10013', 'Thanh Cong', 'Nguyen', '', 'STAFF', 15000000, '10013', 0, 0, 0, 1, 0, 1, 0);
    
INSERT INTO SEC_MGR.PERSONNEL(PERSON_ID, FIRST_NAME, LAST_NAME, EMAIL, P_RANK, SALARY, TAXCODE, DIRECTOR_FLAG, PERSONNEL_DEPART_FLAG, PERSONNEL_DEPART_MANAGER_FLAG, NORMAL_DEPART_FLAG, NORMAL_DEPART_MANAGER_FLAG, PROJECT_FLAG, PROJECT_MANAGER_FLAG) 
    VALUES('10014', 'Quoc Cong', 'Phan Nguyen', '', 'STAFF', 15000000, '10014', 0, 0, 0, 1, 0, 1, 0);

-- LOGIN_DATA
INSERT INTO LOGIN_DATA(USERNAME, PERSON_ID) VALUES ('hoangan', '10001');
INSERT INTO LOGIN_DATA(USERNAME, PERSON_ID) VALUES ('nhan', '10002');
INSERT INTO LOGIN_DATA(USERNAME, PERSON_ID) VALUES ('minhnhan', '10003');
INSERT INTO LOGIN_DATA(USERNAME, PERSON_ID) VALUES ('trongnhan', '10004');
INSERT INTO LOGIN_DATA(USERNAME, PERSON_ID) VALUES ('tai', '10005');
INSERT INTO LOGIN_DATA(USERNAME, PERSON_ID) VALUES ('taian', '10006');
INSERT INTO LOGIN_DATA(USERNAME, PERSON_ID) VALUES ('tuantai', '10007');
INSERT INTO LOGIN_DATA(USERNAME, PERSON_ID) VALUES ('minhtai', '10008');
INSERT INTO LOGIN_DATA(USERNAME, PERSON_ID) VALUES ('tutai', '10009');
INSERT INTO LOGIN_DATA(USERNAME, PERSON_ID) VALUES ('cong', '10010');
INSERT INTO LOGIN_DATA(USERNAME, PERSON_ID) VALUES ('congbach', '10011');
INSERT INTO LOGIN_DATA(USERNAME, PERSON_ID) VALUES ('hoangcong', '10012');
INSERT INTO LOGIN_DATA(USERNAME, PERSON_ID) VALUES ('thanhcong', '10013');
INSERT INTO LOGIN_DATA(USERNAME, PERSON_ID) VALUES ('quoccong', '10014');

-- P_PROJECT
INSERT INTO P_PROJECT(PROJECT_ID, MANAGER_ID, P_NAME, START_DATE, EXPECTED_END_DATE, ACTUAL_END_DATE, P_DESCRIPTION, BUDGET)
    VALUES ('00001', '10006', 'Build an employee management website', '01-JAN-23', '01-JUN-23', '', '', 100000000);

INSERT INTO P_PROJECT(PROJECT_ID, MANAGER_ID, P_NAME, START_DATE, EXPECTED_END_DATE, ACTUAL_END_DATE, P_DESCRIPTION, BUDGET)
    VALUES ('00002', '10011', 'Build a big data management and analytics platform', '01-MAR-23', '01-MAR-25', '', '', 2000000000);

-- PROJECT_MEMBER
INSERT INTO PROJECT_MEMBER(PROJECT_ID, STAFF_ID, START_DATE, END_DATE)
    VALUES ('00001', '10007', '01-JAN-23', '');

INSERT INTO PROJECT_MEMBER(PROJECT_ID, STAFF_ID, START_DATE, END_DATE)
    VALUES ('00001', '10008', '10-JAN-23', '');

INSERT INTO PROJECT_MEMBER(PROJECT_ID, STAFF_ID, START_DATE, END_DATE)
    VALUES ('00001', '10009', '15-JAN-23', '');

INSERT INTO PROJECT_MEMBER(PROJECT_ID, STAFF_ID, START_DATE, END_DATE)
    VALUES ('00002', '10009', '01-MAR-23', '');

INSERT INTO PROJECT_MEMBER(PROJECT_ID, STAFF_ID, START_DATE, END_DATE)
    VALUES ('00002', '10012', '20-MAR-23', '');

INSERT INTO PROJECT_MEMBER(PROJECT_ID, STAFF_ID, START_DATE, END_DATE)
    VALUES ('00002', '10013', '20-MAR-23', '');

-- DEPARTMENT 
INSERT INTO DEPARTMENT(DEPARTMENT_ID, MANAGER_ID, D_NAME, PERSONNEL_DEPART_FLAG, NORMAL_DEPART_FLAG)
    VALUES ('00001', '10002', 'Human Resources Department', 1, 0);

INSERT INTO DEPARTMENT(DEPARTMENT_ID, MANAGER_ID, D_NAME, PERSONNEL_DEPART_FLAG, NORMAL_DEPART_FLAG)
    VALUES ('00002', '10005', 'Finance Department', 0, 1);

INSERT INTO DEPARTMENT(DEPARTMENT_ID, MANAGER_ID, D_NAME, PERSONNEL_DEPART_FLAG, NORMAL_DEPART_FLAG)
    VALUES ('00003', '10010', 'Technology Department', 0, 1);

-- DEPARTMENT_MEMBER
INSERT INTO DEPARTMENT_MEMBER(DEPARTMENT_ID, STAFF_ID, START_DATE, END_DATE) 
    VALUES('00001', '10003', '03-JUL-20', '');

INSERT INTO DEPARTMENT_MEMBER(DEPARTMENT_ID, STAFF_ID, START_DATE, END_DATE) 
    VALUES('00001', '10004', '18-JAN-20', '');
    
INSERT INTO DEPARTMENT_MEMBER(DEPARTMENT_ID, STAFF_ID, START_DATE, END_DATE) 
    VALUES('00002', '10006', '12-FEB-21', '');
    
INSERT INTO DEPARTMENT_MEMBER(DEPARTMENT_ID, STAFF_ID, START_DATE, END_DATE) 
    VALUES('00002', '10007', '15-JUL-21', '');
    
INSERT INTO DEPARTMENT_MEMBER(DEPARTMENT_ID, STAFF_ID, START_DATE, END_DATE) 
    VALUES('00002', '10008', '26-JUL-21', '');
    
INSERT INTO DEPARTMENT_MEMBER(DEPARTMENT_ID, STAFF_ID, START_DATE, END_DATE) 
    VALUES('00002', '10009', '11-OCT-20', '');
    
INSERT INTO DEPARTMENT_MEMBER(DEPARTMENT_ID, STAFF_ID, START_DATE, END_DATE) 
    VALUES('00003', '10011', '02-AUG-20', '');
    
INSERT INTO DEPARTMENT_MEMBER(DEPARTMENT_ID, STAFF_ID, START_DATE, END_DATE) 
    VALUES('00003', '10012', '10-SEP-20', '');
    
INSERT INTO DEPARTMENT_MEMBER(DEPARTMENT_ID, STAFF_ID, START_DATE, END_DATE) 
    VALUES('00003', '10013', '27-NOV-21', '');
    
INSERT INTO DEPARTMENT_MEMBER(DEPARTMENT_ID, STAFF_ID, START_DATE, END_DATE) 
    VALUES('00003', '10014', '14-OCT-22', '');