CREATE PROFILE APP_USER LIMIT
    FAILED_LOGIN_ATTEMPTS   5
    SESSIONS_PER_USER        2
    CONNECT_TIME            1440
    IDLE_TIME               1440;

CREATE USER hoangan IDENTIFIED BY hoangan123
TEMPORARY TABLESPACE TEMP
DEFAULT TABLESPACE USERS
QUOTA 100M ON users
PROFILE app_user;

CREATE USER nhan IDENTIFIED BY nhan123
TEMPORARY TABLESPACE TEMP
DEFAULT TABLESPACE USERS
QUOTA 100M ON users
PROFILE app_user;

CREATE USER minhnhan IDENTIFIED BY minhnhan123
TEMPORARY TABLESPACE TEMP
DEFAULT TABLESPACE USERS
QUOTA 100M ON users
PROFILE app_user;

CREATE USER trongnhan IDENTIFIED BY trongnhan123
TEMPORARY TABLESPACE TEMP
DEFAULT TABLESPACE USERS
QUOTA 100M ON users
PROFILE app_user;

CREATE USER tai IDENTIFIED BY tai123
TEMPORARY TABLESPACE TEMP
DEFAULT TABLESPACE USERS
QUOTA 100M ON users
PROFILE app_user;

CREATE USER taian IDENTIFIED BY taian123
TEMPORARY TABLESPACE TEMP
DEFAULT TABLESPACE USERS
QUOTA 100M ON users
PROFILE app_user;

CREATE USER tuantai IDENTIFIED BY tuantai123
TEMPORARY TABLESPACE TEMP
DEFAULT TABLESPACE USERS
QUOTA 100M ON users
PROFILE app_user;

CREATE USER minhtai IDENTIFIED BY minhtai123
TEMPORARY TABLESPACE TEMP
DEFAULT TABLESPACE USERS
QUOTA 100M ON users
PROFILE app_user;

CREATE USER tutai IDENTIFIED BY tutai123
TEMPORARY TABLESPACE TEMP
DEFAULT TABLESPACE USERS
QUOTA 100M ON users
PROFILE app_user;

CREATE USER cong IDENTIFIED BY cong123
TEMPORARY TABLESPACE TEMP
DEFAULT TABLESPACE USERS
QUOTA 100M ON users
PROFILE app_user;

CREATE USER congbach IDENTIFIED BY congbach123
TEMPORARY TABLESPACE TEMP
DEFAULT TABLESPACE USERS
QUOTA 100M ON users
PROFILE app_user;

CREATE USER hoangcong IDENTIFIED BY hoangcong123
TEMPORARY TABLESPACE TEMP
DEFAULT TABLESPACE USERS
QUOTA 100M ON users
PROFILE app_user;

CREATE USER thanhcong IDENTIFIED BY thanhcong123
TEMPORARY TABLESPACE TEMP
DEFAULT TABLESPACE USERS
QUOTA 100M ON users
PROFILE app_user;

CREATE USER quoccong IDENTIFIED BY quoccong123
TEMPORARY TABLESPACE TEMP
DEFAULT TABLESPACE USERS
QUOTA 100M ON users
PROFILE app_user;