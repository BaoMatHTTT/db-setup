--init supporting function
create or replace FUNCTION get_session
RETURN VARCHAR2
IS n CHAR(14);
BEGIN
    SELECT USER INTO n FROM DUAL;
    RETURN n;
END get_session;
/

CREATE OR REPLACE FUNCTION get_user
RETURN VARCHAR2
IS i CHAR(14);usrname CHAR(14);
BEGIN 
    usrname :=get_session();
    SELECT PERSON_ID INTO i FROM LOGIN_DATA WHERE username = usrname;  
    RETURN i;
END get_user;
/


CREATE OR REPLACE FUNCTION my_project 
RETURN VARCHAR2
IS username CHAR(25);
BEGIN 
    username := get_user();
    RETURN 'SELECT projectID FROM PROJECT_MEMBER WHERE personID = '||username;
END my_project;
/

create or replace FUNCTION get_role
RETURN VARCHAR2
IS username CHAR(25);
BEGIN 
    username := get_user();
    DECLARE 
    CURSOR c1 is SELECT * FROM PERSONNEL WHERE PERSON_ID = username;
    p_rec c1%ROWTYPE;
    BEGIN 
        OPEN c1;
        FETCH c1 INTO p_rec;
        if p_rec.PERSONNEL_DEPART_FLAG > 0 then return 'HR';
        elsif p_rec.NORMAL_DEPART_FLAG >0 then return 'EMP';
        elsif p_rec.NORMAL_DEPART_MANAGER_FLAG >0 then return 'PM';
        elsif p_rec.PROJECT_MANAGER_FLAG >0 then return 'PM';
        elsif p_rec.PERSONNEL_DEPART_FLAG >0 then return 'DIRECTOR' ;
        elsif p_rec.DIRECTOR_FLAG>0 then return 'DIRECTOR';
        else return 'DIRECTOR';
        END if;
        CLOSE c1;
    END;
END get_role;
/

-- init policy function to return 
CREATE OR REPLACE FUNCTION  auth
(p_schema IN VARCHAR2 DEFAULT NULL,
 p_object IN VARCHAR2 DEFAULT NULL)
RETURN VARCHAR2
IS username CHAR(25);
BEGIN 
    username := get_session();
    return 'username = '||username;
END;
/


CREATE OR REPLACE FUNCTION  intersect_project
(p_schema IN VARCHAR2 DEFAULT NULL,
 p_object IN VARCHAR2 DEFAULT NULL)
RETURN VARCHAR2
AS ro CHAR(14);prj char(200);usr char(20);
BEGIN
    ro:=get_role();
    prj:=my_project();
    usr:=get_user();
    if ro = 'EMP' THEN 
        RETURN 'ProjectStaffFlag == 1 and PERSON_ID IN (SELECT PERSON_ID FROM PROJECT_MEMBER WHERE project_ID IN ('|| prj ||'))'; 
    elsif ro='PM' THEN 
        RETURN 'PERSON_ID IN (SELECT PERSON_ID FROM PROJECT_MEMBER WHERE projectID IN (' || prj ||')) OR person_ID='||usr;
    RETURN '1=1';
    END IF;
END;
/


CREATE OR REPLACE FUNCTION  hr_view
(p_schema IN VARCHAR2 DEFAULT NULL,
 p_object IN VARCHAR2 DEFAULT NULL)
RETURN VARCHAR2
AS ro CHAR(14);prj char(200);usr char(20);
BEGIN
    ro:=get_role();
    prj:=my_project();
    usr:=get_user();
    if ro='EMP' THEN return 'person_ID = '||usr;   
    elsif ro = 'HR' THEN  return 'NORMAL_DEPART_FLAG==1 OR person_ID='||usr;
    elsif ro='PM'THEN RETURN 'person_ID IN (SELECT person_ID FROM PROJECT_MEMBER WHERE project_ID IN ('||prj||')) OR person_ID='||usr;
    -- else if ro='DIRECTOR' return 'NormalFlag=1 or personID ='||usr;
    end if;
    RETURN '1=1';
END;
/


CREATE OR REPLACE FUNCTION  auth_leader
(p_schema IN VARCHAR2 DEFAULT NULL,
 p_object IN VARCHAR2 DEFAULT NULL)
RETURN VARCHAR2
AS ro CHAR(14);usr char(20);
BEGIN
    ro:=get_role();
    usr:=get_user();
    if ro = 'PM'then return 'personID='||usr;
    end if;
    RETURN '1=1';
END;
/


CREATE OR REPLACE FUNCTION  auth_director
(p_schema IN VARCHAR2 DEFAULT NULL,
 p_object IN VARCHAR2 DEFAULT NULL)
RETURN VARCHAR2
AS ro CHAR(14);
BEGIN
    ro:=get_role();
    if ro='DIRECTOR' then return '1=1';
    end if;
    RETURN '0=1';
END;
/





BEGIN
DBMS_RLS.add_policy
(
object_name => 'LOGIN_DATA',
policy_name => 'only_my_username',
policy_function => 'auth',
statement_types => 'SELECT',
sec_relevant_cols => 'username'
);
END;
/


BEGIN
DBMS_RLS.add_policy
(
object_name => 'PERSONNEL',
policy_name => 'hide_salary',
policy_function => 'hr_view',
sec_relevant_cols => 'SALARY'
);
END;
/

BEGIN
DBMS_RLS.add_policy
(
object_name => 'PERSONNEL',
policy_name => 'hide_leader',
policy_function => 'auth_leader'
);
END;
/



BEGIN
DBMS_RLS.add_policy
(
object_name => 'PERSONNEL',
policy_name => 'hide_flag',
policy_function => 'auth_director',
statement_types => 'SELECT',
sec_relevant_cols => 'P_RANK, DIRECTOR_FLAG, PERSONNEL_DEPART_FLAG, PERSONNEL_DEPART_MANAGER_FLAG, NORMAL_DEPART_FLAG, NORMAL_DEPART_MANAGER_FLAG, PROJECT_FLAG, PROJECT_MANAGER_FLAG'
);
END;
/


GRANT EXEMPT ACCESS POLICY TO hoangan;

