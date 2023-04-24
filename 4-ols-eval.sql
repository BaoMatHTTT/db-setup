conn tuantai/tuantai123

select * from SEC_MGR.PERSONNEL;
-- expect: data of minhtai & tutai & tuantai (salary of minhtai and tutai are excluded)

insert into SEC_MGR.PERSONNEL
values('10020', 'Tuan Tu', 'Truong', '', 'STAFF', 15000000, '10020', 0, 0, 0, 1, 0, 1, 0);
-- expected: error

update SEC_MGR.PERSONNEL
set FIRST_NAME = 'Tuan Tu'
where PERSON_ID = '10007';
-- expected: error

delete from SEC_MGR.PERSONNEL
where PERSON_ID = '10007';
-- expected: error






conn taian/taian123

select * from SEC_MGR.P_PROJECT;
-- expected: data of minhtai & tutai & tuantai & taian (salary is included)

select * from SEC_MGR.P_PROJECT
-- expect: data of project 00001 (budget is excluded)

insert into SEC_MGR.PERSONNEL
values ('10020', 'Tuan Tu', 'Truong', '', 'STAFF', 15000000, '10020', 0, 0, 0, 1, 0, 1, 0);
-- expect: error

update SEC_MGR.PERSONNEL
set FIRST_NAME = 'Tuan Tu
where PERSON_ID = '10007';
-- expected: error

delete from SEC_MGR.PERSONNEL
where PERSON_ID = '10007';
-- expected: error


update SEC_MGR.P_PROJECT
SET START_DATE = '01-JAN-22'
WHERE PROJECT_ID = '00001';
-- expect: ok

update SEC_MGR.P_PROJECT
SET BUDGET = 100000
WHERE PROJECT_ID = '00001';
--expect: error



conn minhnhan/minhnhan123

select * from SEC_MGR.PERSONNEL;
-- expect: data of TuanTai, TuTai, MinhTai, HoangCong, ThanhCong, QuocCong, minhnhan and trongnhan (trongnhan's salary is excluded)

INSERT INTO SEC_MGR.PERSONNEL(PERSON_ID, FIRST_NAME, LAST_NAME, EMAIL, P_RANK, SALARY, TAXCODE, DIRECTOR_FLAG, PERSONNEL_DEPART_FLAG, PERSONNEL_DEPART_MANAGER_FLAG, NORMAL_DEPART_FLAG, NORMAL_DEPART_MANAGER_FLAG, PROJECT_FLAG, PROJECT_MANAGER_FLAG) 
VALUES('10054', 'Trong Nhan', 'Pham', '', 'STAFF', 15000000, '10004', 0, 1, 0, 0, 0, 0, 0);
-- expect: error

update SEC_MGR.PERSONNEL
SET FIRST_NAME = 'Trong Nhann'
WHERE PERSON_ID = '10004';
-- expect: error


update SEC_MGR.PERSONNEL
set FIRST_NAME = 'Tuan Tu1'
where PERSON_ID = '10007';
-- expect: success

select * from SEC_MGR.P_PROJECT
-- expect: error

conn nhan/nhan123;

select * from SEC_MGR.PERSONNEL
-- data of all employees (salary of CongBach, TaiAn, and HoangAn are excluded)

update SEC_MGR.PERSONNEL
SET FIRST_NAME = 'TAI ANN'
WHERE PERSON_ID = '10006'
-- expect: success

update SEC_MGR.PERSONNEL
SET SALARY = 1000000
WHERE PERSON_ID = '10006'
-- expect: error

select * from SEC_MGR.P_PROJECT
-- expect: error


