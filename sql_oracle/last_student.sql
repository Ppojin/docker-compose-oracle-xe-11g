CREATE TABLE DEPT 
(
	DEPT_ID     NUMBER (4) NOT NULL PRIMARY KEY,
	DEPT_NAME   VARCHAR2 (30) CONSTRAINT DEPT_NAME_NN NOT NULL
);

insert into DEPT values (10,'경제학과');
insert into DEPT values (20,'컴퓨터공학과');
insert into DEPT values (30,'영어영문학과');
insert into DEPT values (40,'건축공학과');
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

insert into student values (1002,'홍길동',20,'1학년','주간',30);
commit;

CREATE TABLE COURSE 
(
	COURSE_ID     NUMBER (4) NOT NULL PRIMARY KEY,
	COURSE_NAME   VARCHAR2 (50),
	COURSE_INSTRUCTOR VARCHAR2 (50)
);
insert into COURSE values (1,'자바프로그래밍','김자바');
insert into COURSE values (2,'파이썬프로그래밍','박파이썬');
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

