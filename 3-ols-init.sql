--create policy
BEGIN
SA_SYSDBA.CREATE_POLICY(
    policy_name => 'ACCESS_EMP_INFO',
    column_name => 'OLS_EMP'
);
END;


-- create level

EXECUTE sa_components.create_level ('ACCESS_EMP_INFO',500,'TS','TOP_SECRET');

EXECUTE sa_components.create_level ('ACCESS_EMP_INFO',400,'S','SECRET');

EXECUTE sa_components.create_level ('ACCESS_EMP_INFO',300,'C','CONFIDENTIAL');

EXECUTE sa_components.create_level ('ACCESS_EMP_INFO',200,'P','PUBLIC');


-- create compartment
EXECUTE sa_components.create_compartment ('ACCESS_EMP_INFO',100,'PRJ','PROJECT');

EXECUTE sa_components.create_compartment ('ACCESS_EMP_INFO',200,'HUM','HUMAN');

EXECUTE sa_components.create_compartment ('ACCESS_EMP_INFO',300,'FIN','FINANCIAL');

-- create group
EXECUTE sa_components.create_group('ACCESS_EMP_INFO',1100,'LDR','LEADER',NULL);

EXECUTE sa_components.create_group('ACCESS_EMP_INFO',1200,'HR','HUMAN_RESOURCE','LDR');

EXECUTE sa_components.create_group('ACCESS_EMP_INFO',1300,'DEV','DEV_TEAM','LDR');


-- create data label
EXECUTE sa_label_admin.create_label ('ACCESS_EMP_INFO',1000,'C:PRJ:LDR,DEV');

EXECUTE sa_label_admin.create_label ('ACCESS_EMP_INFO',1100,'C:HUM:');

EXECUTE sa_label_admin.create_label ('ACCESS_EMP_INFO',1200,'S:HUM:HR');

EXECUTE sa_label_admin.create_label ('ACCESS_EMP_INFO',1300,'TS:HUM:LDR');

-- create role
CREATE ROLE NORMAL_EMP;

CREATE ROLE PROJECT_MANAGER;

CREATE ROLE HR_EMP;

CREATE ROLE HR_MANAGER;

CREATE ROLE DIRECTOR;

-- assign level to role
EXECUTE sa_user_admin.set_levels('ACCESS_EMP_INFO','NORMAL_EMP','C','P','C','P');

EXECUTE sa_user_admin.set_levels('ACCESS_EMP_INFO','PROJECT_MANAGER','TS','C','TS','C');

EXECUTE sa_user_admin.set_levels('ACCESS_EMP_INFO','HR_EMP','S','C','S','C');

EXECUTE sa_user_admin.set_levels('ACCESS_EMP_INFO','HR_MANAGER','TS','C','TS','C');

EXECUTE sa_user_admin.set_levels('ACCESS_EMP_INFO','DIRECTOR','TS','p','TS','TS');


-- assign compartment to role
EXECUTE sa_user_admin.set_compartments('ACCESS_EMP_INFO', 'NORMAL_EMP', 'PRJ', NULL, NULL, NULL);

EXECUTE sa_user_admin.set_compartments('ACCESS_EMP_INFO', 'PROJECT_MANAGER', 'PRJ,HUM', 'PRJ', NULL, NULL);

EXECUTE sa_user_admin.set_compartments('ACCESS_EMP_INFO', 'HR_EMP', 'HUM', 'HUM', NULL, NULL);

EXECUTE sa_user_admin.set_compartments('ACCESS_EMP_INFO', 'HR_MANAGER', 'HUM', 'HUM', NULL, NULL);

EXECUTE sa_user_admin.set_compartments('ACCESS_EMP_INFO', 'DIRECTOR', 'PRJ,HUM', 'PRJ,HUM', NULL, NULL);

-- assign group to role
EXECUTE sa_user_admin.set_groups('ACCESS_EMP_INFO', 'NORMAL_EMP', 'DEV', NULL, NULL, NULL);

EXECUTE sa_user_admin.set_groups('ACCESS_EMP_INFO', 'PROJECT_MANAGER', 'LDR', 'LDR', NULL, NULL);

EXECUTE sa_user_admin.set_groups('ACCESS_EMP_INFO', 'HR_EMP', 'HR', NULL, NULL, NULL);

EXECUTE sa_user_admin.set_groups('ACCESS_EMP_INFO', 'HR_MANAGER', 'LDR', 'LDR', NULL, NULL);

EXECUTE sa_user_admin.set_groups('ACCESS_EMP_INFO', 'DIRECTOR', 'LDR', 'LDR', NULL, NULL);





