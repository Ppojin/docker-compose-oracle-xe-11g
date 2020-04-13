CREATE TABLE DEPT 
(
	DEPT_ID     NUMBER (4) NOT NULL PRIMARY KEY,
	DEPT_NAME   VARCHAR2 (30) CONSTRAINT DEPT_NAME_NN NOT NULL
);

insert into DEPT values (10,'�����а�');
insert into DEPT values (20,'��ǻ�Ͱ��а�');
insert into DEPT values (30,'������а�');
insert into DEPT values (40,'������а�');
commit;

CREATE TABLE STUDENT 
(
	STU_ID         NUMBER (6) NOT NULL PRIMARY KEY,
	STU_NAME       VARCHAR2 (20) NOT NULL,
	STU_AGE        NUMBER (3) NOT NULL,
	STU_GRADE      VARCHAR2 (20),
	STU_DAYNIGHT   VARCHAR2 (20),
	DEPT_ID        NUMBER (4) NOT NULL,
	FOREIGN KEY (DEPT_ID) REFERENCES DEPT (DEPT_ID)
);

insert into student values (1002,'ȫ�浿',20,'1�г�','�ְ�',30);
commit;

CREATE TABLE COURSE 
(
	COURSE_ID     NUMBER (4) NOT NULL PRIMARY KEY,
	COURSE_NAME   VARCHAR2 (50),
	COURSE_INSTRUCTOR VARCHAR2 (50)
);
insert into COURSE values (1,'�ڹ����α׷���','���ڹ�');
insert into COURSE values (2,'���̽����α׷���','�����̽�');
commit;

CREATE TABLE COURSE_STATUS 
(
    STATUS_ID   NUMBER (6) NOT NULL PRIMARY KEY,
	STU_ID      NUMBER (6) NOT NULL,
	COURSE_ID   NUMBER (4) NOT NULL,
	COURSE_SCORE NUMBER (4) NOT NULL,
	FOREIGN KEY(STU_ID) REFERENCES STUDENT(STU_ID),
	FOREIGN KEY(COURSE_ID) REFERENCES COURSE(COURSE_ID) 
);
insert into COURSE_STATUS values (1,1002,1,90);
insert into COURSE_STATUS values (2,1002,2,80);
commit;

