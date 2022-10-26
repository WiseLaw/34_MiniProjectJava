create table usertbl( -- ���� ���� --
    userid varchar2(30) not NULL PRIMARY KEY, -- ���� ���̵� --
    userpw varchar2(30) NOT NULL, -- ��ȣ --
    username varchar2(20) not null, -- �̸� --
    userphone NUMBER(16) not null, -- ����ó --
    usernickname varchar2(30) not null primary key, -- �г��� --
    usermail VARCHAR2(100) not null, -- �̸��� --
    marketing varchar2(20) DEFAULT NULL, -- ������ ���� ���� --
    useraddress1 VARCHAR2(100) not null, -- �ּ� --
    useraddress2 VARCHAR2(100) not null, -- �� �ּ� --
    usergender varchar2(10) not null -- ���� --
    );
    
create table cpubox(
    cpumade VARCHAR2(30) not null, -- intel, amd --
    cpuname VARCHAR2(10) not null, -- cpu ���� ex) i7 12���� or Ryzen7 4����
    cpuseries VARCHAR2(30) not null, -- ��ǰ, ��ũ, �����
    cpucore number(5) not null, -- �ھ� �� --
    cputhread number(5) not null, -- ������ �� --
    cpusocket varchar2(20) not null -- ���� --
    );

create table mainboardbox(
    boardmade varchar2(20) not null, -- ���κ��� ������ ASUS,AMD,GIGABYTE --
    boardseries VARCHAR2(10) not null, -- ���� intel, amd
    boardsocket varchar2(20) not null, -- ���� 1151, 1200, 1700, AM4, AM5
    boardstandard varchar2(20) not null, -- �԰� ATX, M-ATX, E-ATX, M-ITX
    boardmemory varchar2(30) not null, -- DDR4, DDR5  --
    boardmemorysocket NUMBER(4) not null, -- �޸� ���� �� --
    boardpowersocket NUMBER(4) not null -- ������ ������ --
    );
 
create table rambox(
    ramproperty varchar2(20) not null, -- PC�� ��Ʈ�Ͽ� ������
    rammade varchar2(20) not null, -- ������
    ramseries varchar2(10) not null, -- DDR4 DDR5
    ramstorage NUMBER(3) not null, --�� �뷮
    ramclock number(4) not null -- �� Ŭ��
    );
    
create table vgabox(
    vgamseries varchar2(20) not null, -- NVDIA, AMD
    vgamade varchar2(20) not null, -- ������ MSI, ASUS
    vgatype varchar2(20) not null, -- RTX, GTX, GT, Radeon RX
    vgaconnect varchar2(20) not null, -- PCI ����
    vgamemory NUMBER(3) not null, -- �׷���ī�� �޸�
    vgamemorytype VARCHAR2(10) not null -- DDR5, DDR6
    );
    


create table board( -- �Խ��� --
num number(3) not null primary key, -- ����� ���̵�(PK)
writer varchar2(20),
email varchar2(50),
subject varchar2(50),
password varchar2(30),
reg_date date,
ref number(3),
re_step number(3),
re_level number(3),
readcount number(3),
content varchar2(500));

create sequence board_seq;
commit;
 
drop sequence board_seq;
drop table board;

select*from board;    
