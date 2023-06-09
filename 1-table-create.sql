CREATE TABLE PERSONNEL(
    PERSON_ID                       CHAR(5),
    FIRST_NAME                      VARCHAR2(50)    NOT NULL,
    LAST_NAME                       VARCHAR2(50),
    EMAIL                           VARCHAR2(50),
    P_RANK                          VARCHAR2(7)     CHECK (P_RANK IN ('STAFF', 'MANAGER')),
    SALARY                          NUMBER(9,0)     CHECK (SALARY > 0),
    TAXCODE                         VARCHAR2(20)    NOT NULL    UNIQUE,
    DIRECTOR_FLAG                   CHAR(1)         NOT NULL    CHECK (DIRECTOR_FLAG >= 0),
    PERSONNEL_DEPART_FLAG           CHAR(1)         NOT NULL    CHECK (PERSONNEL_DEPART_FLAG >= 0),
    PERSONNEL_DEPART_MANAGER_FLAG   CHAR(1)         NOT NULL    CHECK (PERSONNEL_DEPART_MANAGER_FLAG >= 0),
    NORMAL_DEPART_FLAG              CHAR(1)         NOT NULL    CHECK (NORMAL_DEPART_FLAG >= 0),   
    NORMAL_DEPART_MANAGER_FLAG      CHAR(1)         NOT NULL    CHECK (NORMAL_DEPART_MANAGER_FLAG >= 0),
    PROJECT_FLAG                    CHAR(1)         NOT NULL    CHECK (PROJECT_FLAG >= 0),
    PROJECT_MANAGER_FLAG            CHAR(1)         NOT NULL    CHECK (PROJECT_MANAGER_FLAG >= 0),
    
    PRIMARY KEY (PERSON_ID),
    CHECK (DIRECTOR_FLAG + PERSONNEL_DEPART_FLAG + NORMAL_DEPART_FLAG = 1),
    CHECK (DIRECTOR_FLAG + PERSONNEL_DEPART_FLAG + PROJECT_FLAG <= 1),
    CHECK (NORMAL_DEPART_MANAGER_FLAG != 1 or PROJECT_MANAGER_FLAG != 1),
    CHECK (PERSONNEL_DEPART_FLAG != 0 or PERSONNEL_DEPART_MANAGER_FLAG != 1),
    CHECK (NORMAL_DEPART_FLAG != 0 or NORMAL_DEPART_MANAGER_FLAG != 1),
    CHECK (PROJECT_FLAG != 0 or PROJECT_MANAGER_FLAG != 1)
);

CREATE TABLE LOGIN_DATA(
    USERNAME    VARCHAR2(20),    
    PERSON_ID   CHAR(5)         UNIQUE,
    
    PRIMARY KEY (USERNAME),
    FOREIGN KEY (PERSON_ID) REFERENCES PERSONNEL(PERSON_ID) ON DELETE CASCADE
);

CREATE TABLE P_PROJECT(
    PROJECT_ID          CHAR(5),
    MANAGER_ID          CHAR(5),
    P_NAME              VARCHAR2(200)    UNIQUE NOT NULL,
    START_DATE          DATE            NOT NULL,
    EXPECTED_END_DATE   DATE            NOT NULL,
    ACTUAL_END_DATE     DATE,
    BUDGET      NUMBER(12,0)    CHECK (BUDGET > 0),
    P_DESCRIPTION       VARCHAR(1000),
    
    PRIMARY KEY (PROJECT_ID),
    FOREIGN KEY (MANAGER_ID) REFERENCES PERSONNEL(PERSON_ID) ON DELETE CASCADE,
    CHECK (EXPECTED_END_DATE > START_DATE),
    CHECK ((ACTUAL_END_DATE is null) or (ACTUAL_END_DATE > START_DATE))
);

CREATE TABLE PROJECT_MEMBER(
    PROJECT_ID  CHAR(5),
    STAFF_ID    CHAR(5),
    START_DATE  DATE        NOT NULL,
    END_DATE    DATE,
    
    PRIMARY KEY (PROJECT_ID, STAFF_ID),
    FOREIGN KEY (PROJECT_ID) REFERENCES P_PROJECT(PROJECT_ID) ON DELETE CASCADE,
    FOREIGN KEY (STAFF_ID) REFERENCES PERSONNEL(PERSON_ID) ON DELETE CASCADE,
    CHECK ((END_DATE is null) or (END_DATE > START_DATE))
);

CREATE TABLE DEPARTMENT(
    DEPARTMENT_ID           CHAR(5),
    MANAGER_ID              CHAR(5),
    D_NAME                  VARCHAR2(200)    NOT NULL,
    PERSONNEL_DEPART_FLAG   CHAR(1)         CHECK (PERSONNEL_DEPART_FLAG >= 0),
    NORMAL_DEPART_FLAG      CHAR(1)         CHECK (NORMAL_DEPART_FLAG >= 0),
    
    PRIMARY KEY (DEPARTMENT_ID),
    FOREIGN KEY (MANAGER_ID) REFERENCES PERSONNEL(PERSON_ID) ON DELETE CASCADE,
    CHECK (PERSONNEL_DEPART_FLAG + NORMAL_DEPART_FLAG = 1) 
);

CREATE TABLE DEPARTMENT_MEMBER(
    DEPARTMENT_ID   CHAR(5),
    STAFF_ID        CHAR(5),
    START_DATE      DATE        NOT NULL,
    END_DATE        DATE,
    
    PRIMARY KEY (DEPARTMENT_ID, STAFF_ID),
    FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENT(DEPARTMENT_ID) ON DELETE CASCADE,
    FOREIGN KEY (STAFF_ID) REFERENCES PERSONNEL(PERSON_ID) ON DELETE CASCADE,
    CHECK ((END_DATE is null) or (END_DATE > START_DATE))
);