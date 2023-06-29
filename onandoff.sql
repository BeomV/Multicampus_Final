---------- userinfo 
CREATE TABLE USERINFO (
    NUM NUMBER NOT NULL , 
    USER_ID VARCHAR2(50) NOT NULL , 
    PW VARCHAR2(50) NOT NULL , 
    NAME VARCHAR2(20) NOT NULL, 
    EMAIL VARCHAR2(100) NOT NULL , 
    SAVE_NAME VARCHAR2(200) DEFAULT 'default.png' NOT NULL , 
    MSG VARCHAR2(2000) , 
    ALERT VARCHAR2(2000) , 
    POINT NUMBER DEFAULT 0 NOT NULL ,
    CONSTRAINT USERINFO_PK PRIMARY KEY  (
    NUM
    )  
    ENABLE ); 
    
ALTER TABLE USERINFO 
ADD CONSTRAINT USERINFO_UK1 UNIQUE 
(
    USER_ID
) 
ENABLE;

COMMENT ON COLUMN USERINFO.NUM IS 'pk'; 
COMMENT ON COLUMN USERINFO.USER_ID IS '���̵�'; 
COMMENT ON COLUMN USERINFO.PW IS '��й�ȣ'; 
COMMENT ON COLUMN USERINFO.NAME IS '�̸�'; 
COMMENT ON COLUMN USERINFO.EMAIL IS '�̸���'; 
COMMENT ON COLUMN USERINFO.SAVE_NAME IS '�����ʻ�����'; 
COMMENT ON COLUMN USERINFO.MSG IS '����'; 
COMMENT ON COLUMN USERINFO.ALERT IS '�˸�'; 
COMMENT ON COLUMN USERINFO.POINT IS '����Ʈ';  
--drop table userinfo; 

create sequence seq_userinfo;
--drop sequence seq_userinfo; 

insert into userinfo (num, user_id, pw, name, email, point) 
values (seq_userinfo.nextval, 'tester', 'hi111', 'kim12', 'ddjsjdf@naver.com', 300); 

insert into userinfo (num, user_id, pw, name, email, point) 
values (seq_userinfo.nextval, 'tester1', 'hi111', 'kim55', 'aaxcvz@naver.com', 300); 

select * from userinfo; 


--------------------------myfeed 
CREATE TABLE MYFEED (  
NUM NUMBER NOT NULL , 
USER_ID VARCHAR2(50) NOT NULL , 
SAVE_NAME VARCHAR2(100) DEFAULT 'default_profile.png' NOT NULL ,
GOOD_COUNT NUMBER DEFAULT 0 NOT NULL , 
HATE_COUNT NUMBER DEFAULT 0 NOT NULL ,
CONSTRAINT MYFEED_PK PRIMARY KEY  (NUM)  ENABLE ); 

ALTER TABLE MYFEED ADD CONSTRAINT MYFEED_FK1 FOREIGN KEY (USER_ID) REFERENCES USERINFO (USER_ID) ENABLE; 

COMMENT ON COLUMN MYFEED.NUM IS 'pk'; 
COMMENT ON COLUMN MYFEED.USER_ID IS '���̵�'; 
COMMENT ON COLUMN MYFEED.SAVE_NAME IS '�����ʻ���'; 
COMMENT ON COLUMN MYFEED.GOOD_COUNT IS '���ƿ�'; 
COMMENT ON COLUMN MYFEED.HATE_COUNT IS '�Ű�'; 

--drop table myfeed; 

create sequence seq_myfeed; 
--drop sequence seq_myfeed; 

insert into myfeed (num, user_id, good_count, hate_count) 
values (seq_myfeed.nextval, 'tester', 33, 2);

select * from myfeed; 

----------------------------somoim
CREATE TABLE SOMOIM (  
NUM NUMBER NOT NULL , 
SOM_TITLE VARCHAR2(100) NOT NULL , 
CATEGORY VARCHAR2(100) NOT NULL , 
CONSTRAINT SOMOIM_PK PRIMARY KEY  (NUM)  ENABLE ); 

ALTER TABLE SOMOIM ADD CONSTRAINT SOMOIM_UK1 UNIQUE (SOM_TITLE) ENABLE; 

COMMENT ON COLUMN SOMOIM.NUM IS 'pk'; 
COMMENT ON COLUMN SOMOIM.SOM_TITLE IS '�Ҹ����̸�'; 
COMMENT ON COLUMN SOMOIM.CATEGORY IS '�Ҹ��� ī�װ�'; 

--drop table somoim; 

create sequence seq_somoim; 
--drop sequence seq_somoim; 

insert into somoim (num, som_title, category) 
values (seq_somoim.nextval, '����ȫ�뿡�������ޱ�', '�米/�θ�');

insert into somoim (num, som_title, category) 
values (seq_somoim.nextval, '��°���������', '�米/�θ�');

select * from somoim;


----------------------somoim_member
CREATE TABLE SOMOIM_MEMBER 
(
  NUM NUMBER NOT NULL 
, USER_ID VARCHAR2(100) NOT NULL 
, JOIN_DATE DATE DEFAULT SYSDATE NOT NULL 
, POSITION VARCHAR2(100) DEFAULT '���ӿ�' NOT NULL 
, SOM_TITLE VARCHAR2(200) NOT NULL 
, SAVE_NAME VARCHAR2(200) DEFAULT 'default.png' NOT NULL
, CONSTRAINT SOMOIM_MEMBER_PK PRIMARY KEY 
  (
    NUM 
  )
  ENABLE 
);

ALTER TABLE SOMOIM_MEMBER
ADD CONSTRAINT SOMOIM_MEMBER_FK1 FOREIGN KEY
(
  USER_ID 
)
REFERENCES USERINFO
(
  USER_ID 
)
ENABLE;

ALTER TABLE SOMOIM_MEMBER
ADD CONSTRAINT SOMOIM_MEMBER_FK2 FOREIGN KEY
(
  SOM_TITLE 
)
REFERENCES SOMOIM
(
  SOM_TITLE 
)
ENABLE;

COMMENT ON COLUMN SOMOIM_MEMBER.NUM IS 'pk';
COMMENT ON COLUMN SOMOIM_MEMBER.USER_ID IS '���̵�';
COMMENT ON COLUMN SOMOIM_MEMBER.JOIN_DATE IS '���Գ�¥';
COMMENT ON COLUMN SOMOIM_MEMBER.POSITION IS '����';
COMMENT ON COLUMN SOMOIM_MEMBER.SOM_TITLE IS '�Ҹ����̸�';
COMMENT ON COLUMN SOMOIM_MEMBER.SAVE_NAME IS '�̹����ϸ�';

--drop table somoim_member;

create sequence seq_somoim_member;
--drop sequence seq_somoim_member;

insert into somoim_member (num, user_id, som_title) 
values (seq_somoim_member.nextval, 'tester', '����ȫ�뿡�������ޱ�');

insert into somoim_member (num, user_id, som_title) 
values (seq_somoim_member.nextval, 'tester1', '��°���������');

select * from somoim_member;


----------------------------somoim_question_vote
CREATE TABLE SOMOIM_QUESTION_VOTE ( 
NUM NUMBER NOT NULL , 
SOM_MEMBER_NUM NUMBER NOT NULL, 
QUESTION VARCHAR2(100),
CONSTRAINT SOMOIM_QUESTION_VOTE_PK PRIMARY KEY  (NUM)  ENABLE ); 

ALTER TABLE SOMOIM_QUESTION_VOTE 
ADD CONSTRAINT SOMOIM_QUESTION_VOTE_FK1 FOREIGN KEY 
(
    SOM_MEMBER_NUM
)
REFERENCES SOMOIM_MEMBER
(
    NUM
) 
ENABLE;

COMMENT ON COLUMN SOMOIM_QUESTION_VOTE.NUM IS 'pk'; 
COMMENT ON COLUMN SOMOIM_QUESTION_VOTE.SOM_MEMBER_NUM IS '��ǥ ������ ������ȣ'; 
COMMENT ON COLUMN SOMOIM_QUESTION_VOTE.QUESTION IS '��ǥ ����'; 

--drop table somoim_question_vote; 

create sequence seq_somoim_question_vote; 
--drop sequence seq_somoim_question_vote; 

insert into somoim_question_vote (num, som_member_num, question) 
values (seq_somoim_question_vote.nextval, 1, '7�� ������� �Ļ� �޴� ����');

select * from somoim_question_vote;


----------------------------somoim_choice_vote
CREATE TABLE SOMOIM_CHOICE_VOTE (  
NUM NUMBER NOT NULL , 
SOM_QVOTE_NUM NUMBER NOT NULL, 
CHOICE VARCHAR2(50) NOT NULL, 
COUNT NUMBER DEFAULT 0 NOT NULL ,
CONSTRAINT SOMOIM_CHOICE_VOTE_PK PRIMARY KEY  (NUM)  ENABLE ); 

ALTER TABLE SOMOIM_CHOICE_VOTE 
ADD CONSTRAINT SOMOIM_CHOICE_VOTE_FK1 FOREIGN KEY 
(
    SOM_QVOTE_NUM
) 
REFERENCES SOMOIM_QUESTION_VOTE 
(
    NUM
) 
ENABLE;

COMMENT ON COLUMN SOMOIM_CHOICE_VOTE.NUM IS 'pk'; 
COMMENT ON COLUMN SOMOIM_CHOICE_VOTE.SOM_QVOTE_NUM IS '��ǥ ����'; 
COMMENT ON COLUMN SOMOIM_CHOICE_VOTE.CHOICE IS '��ǥ �׸�'; 
COMMENT ON COLUMN SOMOIM_CHOICE_VOTE.COUNT IS '��ǥ��'; 

--drop table somoim_choice_vote; 

create sequence seq_somoim_choice_vote; 
--drop sequence seq_somoim_choice_vote; 

insert into somoim_choice_vote (num, som_qvote_num, choice) 
values (seq_somoim_choice_vote.nextval, 1, '�ѽ�');
insert into somoim_choice_vote (num, som_qvote_num, choice) 
values (seq_somoim_choice_vote.nextval, 1, '�Ͻ�');

select * from somoim_choice_vote;


-----------------------------somoim_board
CREATE TABLE SOMOIM_BOARD 
(
  NUM NUMBER NOT NULL 
, TITLE VARCHAR2(200) NOT NULL 
, CONTENT VARCHAR2(2000) NOT NULL 
, SAVE_NAME VARCHAR2(200) 
, WRITE_DATE DATE DEFAULT SYSDATE NOT NULL 
, VIEW_COUNT NUMBER DEFAULT 0 NOT NULL 
, GOOD_COUNT NUMBER DEFAULT 0 NOT NULL 
, VOTE_NUM NUMBER 
, SOM_MEMBER_NUM NUMBER NOT NULL 
, CONSTRAINT SOMOIM_BOARD_PK PRIMARY KEY 
  (
    NUM 
  )
  ENABLE 
);

ALTER TABLE SOMOIM_BOARD
ADD CONSTRAINT SOMOIM_BOARD_FK1 FOREIGN KEY
(
  SOM_MEMBER_NUM 
)
REFERENCES SOMOIM_MEMBER
(
  NUM 
)
ENABLE;

COMMENT ON COLUMN SOMOIM_BOARD.NUM IS 'pk';
COMMENT ON COLUMN SOMOIM_BOARD.TITLE IS '������';
COMMENT ON COLUMN SOMOIM_BOARD.CONTENT IS '�۳���';
COMMENT ON COLUMN SOMOIM_BOARD.SAVE_NAME IS '�����̸�';
COMMENT ON COLUMN SOMOIM_BOARD.WRITE_DATE IS '�ۼ��ð�';
COMMENT ON COLUMN SOMOIM_BOARD.VIEW_COUNT IS '��ȸ��';
COMMENT ON COLUMN SOMOIM_BOARD.GOOD_COUNT IS '���ƿ�';
COMMENT ON COLUMN SOMOIM_BOARD.VOTE_NUM IS '��ǥ���̺��ȣ';
COMMENT ON COLUMN SOMOIM_BOARD.SOM_MEMBER_NUM IS '�Խñ� �ۼ��� ������ȣ';

--drop table somoim_board;

create sequence seq_somoim_board;
--drop sequence seq_somoim_board;

insert into somoim_board (num, title, content, som_member_num) 
values (seq_somoim_board.nextval, '�׽�Ʈ�Խñ��Դϴ�.', '�׽�Ʈ �ƾ� ����ũ�׽�Ʈ', 1);

insert into somoim_board (num, title, content, som_member_num, save_name) 
values (seq_somoim_board.nextval, '���̵�����', '�׽�Ʈ�� ���� �������Դϴ�.', 2, 'boardimg.png');

select * from somoim_board;


---------- somoim_board_comments
CREATE TABLE SOMOIM_BOARD_COMMENTS (  
NUM NUMBER NOT NULL , 
SOM_MEMBER_NUM NUMBER NOT NULL, 
CONTENT VARCHAR2(2000 BYTE) NOT NULL, 
WRITE_DATE DATE DEFAULT sysdate NOT NULL , 
GOOD_COUNT NUMBER DEFAULT 0 NOT NULL , 
SOM_BOARD_NUM NUMBER NOT NULL, 
CONSTRAINT SOMOIM_BOARD_COMMENTS_PK PRIMARY KEY  (NUM)  ENABLE ); 

ALTER TABLE SOMOIM_BOARD_COMMENTS 
ADD CONSTRAINT SOMOIM_BOARD_COMMENTS_FK1 FOREIGN KEY
(
    SOM_BOARD_NUM
) 
REFERENCES SOMOIM_BOARD
(
    NUM
) 
ENABLE; 

ALTER TABLE SOMOIM_BOARD_COMMENTS 
ADD CONSTRAINT SOMOIM_BOARD_COMMENTS_FK2 
FOREIGN KEY (SOM_MEMBER_NUM) 
REFERENCES SOMOIM_MEMBER
(
    NUM
) 
ENABLE; 

COMMENT ON COLUMN SOMOIM_BOARD_COMMENTS.NUM IS 'PK'; 
COMMENT ON COLUMN SOMOIM_BOARD_COMMENTS.SOM_MEMBER_NUM IS '��� �ۼ��� ������ȣ'; 
COMMENT ON COLUMN SOMOIM_BOARD_COMMENTS.CONTENT IS '��� ����'; 
COMMENT ON COLUMN SOMOIM_BOARD_COMMENTS.WRITE_DATE IS '��� �ۼ� ��¥'; 
COMMENT ON COLUMN SOMOIM_BOARD_COMMENTS.GOOD_COUNT IS '���ƿ�'; 
COMMENT ON COLUMN SOMOIM_BOARD_COMMENTS.SOM_BOARD_NUM IS '�Խñ� ��ȣ';

--drop table somoim_board_comments; 

create sequence seq_somoim_board_comments; 
--drop sequence seq_somoim_board_comments; 

insert into somoim_board_comments (num, som_member_num, content, good_count, som_board_num) 
values (SEQ_SOMOIM_BOARD_COMMENTS.nextval, 1, '���� �� �����մϴ�',33,1); 

select * from somoim_board_comments;


----------------------notice
CREATE TABLE NOTICE 
(
  NUM NUMBER NOT NULL 
, USER_ID VARCHAR2(100) NOT NULL 
, TITLE VARCHAR2(200) NOT NULL 
, CONTENT VARCHAR2(2000) NOT NULL 
, WRITE_DATE DATE DEFAULT SYSDATE NOT NULL 
, SAVE_NAME VARCHAR2(200)
, CONSTRAINT NOTICE_PK PRIMARY KEY 
  (
    NUM 
  )
  ENABLE 
);

ALTER TABLE NOTICE
ADD CONSTRAINT NOTICE_FK1 FOREIGN KEY
(
  USER_ID 
)
REFERENCES USERINFO
(
  USER_ID 
)
ENABLE;

COMMENT ON COLUMN NOTICE.NUM IS 'pk';
COMMENT ON COLUMN NOTICE.USER_ID IS '���̵�';
COMMENT ON COLUMN NOTICE.TITLE IS '������';
COMMENT ON COLUMN NOTICE.CONTENT IS '�۳���';
COMMENT ON COLUMN NOTICE.WRITE_DATE IS '���ۼ��ð�';
COMMENT ON COLUMN NOTICE.SAVE_NAME IS '���������ϸ�';

--drop table notice;

create sequence seq_notice;
--drop sequence seq_notice;

insert into notice (num, user_id, title, content) 
values (seq_notice.nextval, 'tester1', '�׽�Ʈ�����Դϴ�.', '�׽�Ʈ��������ũ�׽�Ʈ�ƾ��ϳ����ϳ���');
insert into notice (num, user_id, title, content, SAVE_NAME) 
values (seq_notice.nextval, 'tester', '�׽�Ʈ�����Դϴ�.', '�׽�Ʈ��������ũ�׽�Ʈ�ƾ��ϳ����ϳ���', 
'hinotice.png');

select * from notice;


--------------------somoim_gallery  // MongDB�� ���� ����
--CREATE TABLE SOMOIM_GALLERY 
--(
--  NUM NUMBER NOT NULL 
--, SOM_MEMBER_NUM NUMBER NOT NULL
--, SAVE_NAME VARCHAR2(150) DEFAULT 'default.png' NOT NULL 
--, GOOD_COUNT NUMBER DEFAULT 0 NOT NULL 
--, CONSTRAINT SOMOIM_GALLERY_PK PRIMARY KEY 
--  (
--    NUM 
--  )
--  ENABLE 
--);
--
--ALTER TABLE SOMOIM_GALLERY
--ADD CONSTRAINT SOMOIM_GALLERY_FK1 FOREIGN KEY
--(
--  SOM_MEMBER_NUM 
--)
--REFERENCES SOMOIM_MEMBER
--(
--  NUMS 
--)
--ENABLE;
--
--COMMENT ON COLUMN SOMOIM_GALLERY.NUM IS 'pk';
--COMMENT ON COLUMN SOMOIM_GALLERY.SOM_MEMBER_NUM IS '�Ҹ��Ӻ� ������ �ۼ��� ������ȣ';
--COMMENT ON COLUMN SOMOIM_GALLERY.SAVE_NAME IS '�̹������ϸ�';
--COMMENT ON COLUMN SOMOIM_GALLERY.GOOD_COUNT IS '���ƿ�';
--
----drop table somoim_gallery
--
--create sequence seq_somoim_gallery;
----drop sequence seq_somoim_gallery;
--
--insert into somoim_gallery (num, som_member_num) 
--values (seq_somoim_gallery.nextval, 1);
--
--select * from somoim_gallery;


----------------------------schedule // ������ Į��(PARTICIPANT)�� �����Ͱ� �ߺ��� ���� �־ UK ���� �Ұ� 
CREATE TABLE SOMOIM_SCHEDULE ( 
NUM NUMBER NOT NULL , 
SCHEDULE_DATE VARCHAR2(100) NOT NULL, 
SCHEDULE_TIME VARCHAR2(100) NOT NULL, 
SCHEDULE_TITLE VARCHAR2(100) NOT NULL , 
PLACE VARCHAR2(100) NOT NULL , 
MONEY NUMBER, 
SOM_MEMBER_NUM NUMBER NOT NULL, 
PARTICIPANT VARCHAR2(2000 BYTE) , 
PARTICIPANT_COUNT NUMBER,
CONSTRAINT SOMOIM_SCHEDULE_PK PRIMARY KEY  (NUM)  ENABLE ); 
 
ALTER TABLE SOMOIM_SCHEDULE 
ADD CONSTRAINT SOMOIM_SCHEDULE_FK1 FOREIGN KEY 
(
    SOM_MEMBER_NUM
) 
REFERENCES SOMOIM_MEMBER
(
    NUM
) 
ENABLE;


COMMENT ON COLUMN SOMOIM_SCHEDULE.NUM IS 'pk'; 
COMMENT ON COLUMN SOMOIM_SCHEDULE.SCHEDULE_DATE IS '���� ��¥'; 
COMMENT ON COLUMN SOMOIM_SCHEDULE.SCHEDULE_TIME IS '���� �ð�'; 
COMMENT ON COLUMN SOMOIM_SCHEDULE.SCHEDULE_TITLE IS  '���� �̸�'; 
COMMENT ON COLUMN SOMOIM_SCHEDULE.PLACE IS '���� ���'; 
COMMENT ON COLUMN SOMOIM_SCHEDULE.MONEY IS '������'; -- �����ϱ�� ��, ���� �ʿ�
COMMENT ON COLUMN SOMOIM_SCHEDULE.SOM_MEMBER_NUM IS '���� �ۼ��� ������ȣ';
COMMENT ON COLUMN SOMOIM_SCHEDULE.PARTICIPANT IS '������ ���';
COMMENT ON COLUMN SOMOIM_SCHEDULE.PARTICIPANT_COUNT IS '������ ��';

--drop table somoim_schedule;

create sequence seq_somoim_schedule; 
--drop sequence seq_somoim_schedule; 

insert into somoim_schedule (num, schedule_date, schedule_time, schedule_title, place, money, som_member_num, participant, participant_count) 
values (seq_somoim_schedule.nextval, '20230701', '19:00', '7���������','������',10000, 1,'��ö��/�迵��/tester',3);

select * from somoim_schedule;


----------------------------pay // ������ ������ ���� ���� �ʿ�
CREATE TABLE SOMOIM_PAY (  
NUM NUMBER NOT NULL , 
MONEY NUMBER NOT NULL, 
SOM_SCHEDULE_NUM NUMBER NOT NULL, 
BANK_ACCOUNT VARCHAR2(50) NOT NULL, 
PAY_COMPLETE_PARTICIPANT VARCHAR2(200), 
PARTICIPANT VARCHAR2(200) NOT NULL, 
SADARI VARCHAR2(30),
CONSTRAINT SOMOIM_PAY_PK PRIMARY KEY  
(
    NUM
)  
ENABLE); 

ALTER TABLE SOMOIM_PAY 
ADD CONSTRAINT SOMOIM_PAY_FK1 FOREIGN KEY 
(
    SOM_SCHEDULE_NUM
) 
REFERENCES SOMOIM_SCHEDULE 
(
    NUM
) 
ENABLE;

COMMENT ON COLUMN SOMOIM_PAY.NUM IS 'pk'; 
COMMENT ON COLUMN SOMOIM_PAY.MONEY IS '���� �ݾ�'; 
COMMENT ON COLUMN SOMOIM_PAY.SOM_SCHEDULE_NUM IS '���� ������ȣ'; 
COMMENT ON COLUMN SOMOIM_PAY.BANK_ACCOUNT IS '���� ������ ���¹�ȣ';
COMMENT ON COLUMN SOMOIM_PAY.PAY_COMPLETE_PARTICIPANT IS '���� �Ϸ��� ���';
COMMENT ON COLUMN SOMOIM_PAY.SADARI IS '��ٸ�Ÿ��';
COMMENT ON COLUMN SOMOIM_PAY.PARTICIPANT IS '������ ���';

--drop table somoim_pay; 

create sequence seq_somoim_pay; 
--drop sequence seq_somoim_pay; 

insert into somoim_pay (num, money, som_schedule_num, bank_account, pay_complete_participant, sadari, participant) --��ܿ��� ó��
values (seq_somoim_pay.nextval, 20000, 1,'110-259-626110','��ö��/tester', '��ٸ�Ÿ��', 'tseter');

select * from somoim_pay;

----------------------------following
CREATE TABLE FOLLOWING
(
  NUM NUMBER NOT NULL
, USER_ID VARCHAR2(50) NOT NULL 
, FOLLOWING_ID VARCHAR2(500) 
, FOLLOWING_COUNT NUMBER DEFAULT 0 NOT NULL 
, CONSTRAINT FOLLOWING_PK PRIMARY KEY
  (
    NUM
  )
  ENABLE
);
ALTER TABLE FOLLOWING
ADD CONSTRAINT FOLLOWING_FK1 FOREIGN KEY
(
  FOLLOWING_ID
)
REFERENCES USERINFO
(
  USER_ID
)
ENABLE;

COMMENT ON COLUMN FOLLOWING.USER_ID IS '�� ���̵�';
COMMENT ON COLUMN FOLLOWING.FOLLOWING_ID IS '�ȷ��� ���̵�';
COMMENT ON COLUMN FOLLOWING.FOLLOWING_COUNT IS '�ȷ��� ��';

--drop table following;

create sequence seq_following;
--drop sequence seq_following;

insert into following (num, user_id, following_count, FOLLOWING_ID)
values (SEQ_FOLLOWING.nextval, 'tester1', 1, 'tester');

select * from following;

------------------------------follower
CREATE TABLE FOLLOWER
(
  NUM NUMBER NOT NULL 
, FOLLOWER_ID VARCHAR2(200) 
, USER_ID VARCHAR2(100) NOT NULL 
, follower_COUNT NUMBER DEFAULT 0 NOT NULL 
, CONSTRAINT FOLLOWER_PK PRIMARY KEY
  (
    NUM
  )
  ENABLE
);
ALTER TABLE FOLLOWER
ADD CONSTRAINT FOLLOWER_FK1 FOREIGN KEY
(
  follower_id
)
REFERENCES USERINFO
(
  USER_ID
)
ENABLE;


COMMENT ON COLUMN FOLLOWER.USER_ID IS '�� ���̵�';
COMMENT ON COLUMN FOLLOWER.FOLLOWER_ID IS '�ȷο� ���̵�';
COMMENT ON COLUMN FOLLOWER.NUM IS 'pk';
COMMENT ON COLUMN FOLLOWER.follower_COUNT IS '�ȷο� ��';

--drop table follower;

create sequence seq_follower;
--drop sequence seq_follower;

insert into follower (num, user_id, follower_count, FOLLOWER_ID)
values (SEQ_FOLLOWER.nextval, 'tester1',1,'TESTER');

select * from follower;


------------------------------community board
create table community_board
(
 num number not null
, title varchar2(200) not null
, user_id varchar2(50) not null
, content varchar2(2000) not null
, save_name varchar2(200)
, write_date date default sysdate not null
, view_count number default 0 not null
, good_count number default 0 not null
, constraint community_board_pk primary key
(
    NUM
)  
    ENABLE
);
ALTER TABLE community_BOARD
ADD CONSTRAINT community_BOARD_FK1 FOREIGN KEY
(
  USER_ID
)
REFERENCES USERINFO
(
  USER_ID
)
ENABLE;
COMMENT ON COLUMN community_BOARD.NUM IS 'pk';
COMMENT ON COLUMN community_BOARD.TITLE IS '������';
COMMENT ON COLUMN community_BOARD.USER_ID IS '�ۼ��� ���̵�';
COMMENT ON COLUMN community_BOARD.CONTENT IS '�۳���';
COMMENT ON COLUMN community_BOARD.SAVE_NAME IS '�����̸�';
COMMENT ON COLUMN community_BOARD.WRITE_DATE IS '�ۼ��ð�';
COMMENT ON COLUMN community_BOARD.VIEW_COUNT IS '��ȸ��';
COMMENT ON COLUMN community_BOARD.GOOD_COUNT IS '���ƿ�';
--drop table community_board;
create sequence seq_community_board;
--drop sequence seq_community_board;
insert into community_board (num, title, USER_ID, content,SAVE_NAME, VIEW_COUNT, GOOD_COUNT)
values (seq_community_board.nextval, '�׽�Ʈ ����','tester', '�׽�Ʈ ����', 'reviewimg.png',5,5);
select * from community_board;

---------------------alert
CREATE TABLE ALERT 
(
  NUM NUMBER NOT NULL 
, ALERT_CONTENT VARCHAR2(200) DEFAULT '�˸��� �������� �ʽ��ϴ�.' NOT NULL 
, USER_ID VARCHAR2(20) NOT NULL 
, CONSTRAINT ALERT_PK PRIMARY KEY 
  (
    NUM 
  )
  ENABLE 
);

COMMENT ON COLUMN ALERT.NUM IS 'pk';
COMMENT ON COLUMN ALERT.ALERT_CONTENT IS '�˸�����';
COMMENT ON COLUMN ALERT.USER_ID IS '�޴»��';

--drop table alert;

create sequence seq_alert;
--drop sequence seq_alert;

insert into alert (num, user_id, alert_content) 
values (seq_alert.nextval, 'tester1', '�� �Խñۿ� ����� �޷Ⱦ��!');

select * from alert;

-------------community_comments
create table community_comments (
num number not null,
user_id varchar(50) not null,
content varchar(2000) not null,
write_date date default sysdate not null,
good_count number default 0 not null,
constraint review_comments_pk primary key
(
    NUM
)  
    ENABLE
);

ALTER TABLE REVIEW_comments
ADD CONSTRAINT REVIEW_comments_FK1 FOREIGN KEY
(
  USER_ID
)
REFERENCES USERINFO
(
  USER_ID
)
ENABLE;

COMMENT ON COLUMN community_comments.NUM IS 'pk';
COMMENT ON COLUMN community_comments.USER_ID IS '�ۼ��� ���̵�';
COMMENT ON COLUMN community_comments.CONTENT IS '��۳���';
COMMENT ON COLUMN community_comments.WRITE_DATE IS '�ۼ��ð�';
COMMENT ON COLUMN community_comments.GOOD_COUNT IS '���ƿ�';
--drop table community_comments;
create sequence seq_community_comments;
--drop sequence seq_community_commments;
insert into community_comments (num, USER_ID, content,GOOD_COUNT)
values (seq_community_comments.nextval, 'tester', '�׽�Ʈ ���',5);
select * from community_comments;

--------------------------------msg
CREATE TABLE MESSAGE 
(
  NUM NUMBER NOT NULL 
, MSG_TITLE VARCHAR2(50) NOT NULL 
, RECEIVER_ID VARCHAR2(50) NOT NULL 
, GUBUN NUMBER DEFAULT 0 NOT NULL 
, CREATE_DATE VARCHAR2(50) NOT NULL 
, MSG_CONTENT VARCHAR2(500) NOT NULL 
, SENDER_ID VARCHAR2(50) NOT NULL 
, USER_ID VARCHAR2(50) NOT NULL 
, READ_YN NUMBER DEFAULT 0 NOT NULL 
, CONSTRAINT MESSAGE_PK PRIMARY KEY 
  (
    NUM 
  )
  ENABLE 
);

ALTER TABLE MESSAGE
ADD CONSTRAINT MESSAGE_FK1 FOREIGN KEY
(
  RECEIVER_ID 
)
REFERENCES USERINFO
(
  USER_ID 
)
ENABLE;

ALTER TABLE MESSAGE
ADD CONSTRAINT MESSAGE_FK2 FOREIGN KEY
(
  SENDER_ID 
)
REFERENCES USERINFO
(
  USER_ID 
)
ENABLE;

COMMENT ON COLUMN MESSAGE.NUM IS 'pk';
COMMENT ON COLUMN MESSAGE.MSG_TITLE IS '���� ����';
COMMENT ON COLUMN MESSAGE.RECEIVER_ID IS '������ ���̵�';
COMMENT ON COLUMN MESSAGE.GUBUN IS '����/�߽� ����';
COMMENT ON COLUMN MESSAGE.CREATE_DATE IS '����/�߽� ��¥';
COMMENT ON COLUMN MESSAGE.MSG_CONTENT IS '���� ����';
COMMENT ON COLUMN MESSAGE.SENDER_ID IS '�߽��� ���̵�';
COMMENT ON COLUMN MESSAGE.USER_ID IS '���� ���̵�';
COMMENT ON COLUMN MESSAGE.READ_YN IS '����ǥ��';

--drop table message;

create sequence seq_message;
--drop sequence seq_message;

insert into message (num, user_id, gubun, msg_title, receiver_id, create_date, msg_content, sender_id, read_yn)
values (seq_message.nextval, 'tester', 0, '�ȳ��ϼ���??', 'tester', '2023-06-29', '���ú񰡿��ϴ��̾������', 'tester1', 1);

select * from message;



--somoim_gallery(mongoDB)
--myfeed_gallery(mongoDB)
--��Ÿ ���..



