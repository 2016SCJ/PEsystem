create database PEsystem
use PEsystem

create table College(             --ѧԺ
	id int identity(1,1) primary key,             --id
	colName nvarchar(15) not null   --ѧԺ����
)

insert into College values('�����ѧԺ')
insert into College values('��ѧԺ')
insert into College values('����ѧԺ')
insert into College values('��ϢѧԺ')
insert into College values('�����ѧԺ')
insert into College values('��ҵ�Զ���ѧԺ')
insert into College values('���������ѧԺ')
insert into College values('�����뻷��ѧԺ')
insert into College values('��������ѧԺ')
select * from College

create table Profession(          --רҵ
	id int identity(1,1) primary key,             --id(3λ����
	col_id int,                      --��� ѧԺCollege��id
	proName nvarchar(15) not null,  --רҵ����
	constraint ProfessionFK1 foreign key(col_id) references College(id)
)

insert into Profession values(1, '��������')
insert into Profession values(1, '����ý�弼��')
insert into Profession values(1, '���繤��')
insert into Profession values(1, '�������ѧ�뼼��')
insert into Profession values(2, '�г�Ӫ��')
insert into Profession values(2, '��������')
insert into Profession values(3, '���м���')
insert into Profession values(3, '��ͨ����')
insert into Profession values(4, 'ͨ�Ź���')
insert into Profession values(4, '��Ϣ����')
insert into Profession values(4, '�Զ���')
insert into Profession values(4, '�������̼����Զ���')
insert into Profession values(5, '����Ӣ��')
insert into Profession values(5, 'Ӣ��')
insert into Profession values(5, '����')
insert into Profession values(5, '����')
insert into Profession values(6, '��е���ӹ���')
insert into Profession values(6, '��������')
insert into Profession values(6, '��ͨ����')
insert into Profession values(6, '��ҵ����')
insert into Profession values(7, '�������')
insert into Profession values(7, '��װ��������')
insert into Profession values(7, '��Ʒ���')
insert into Profession values(7, '��������')
insert into Profession values(7, '����ý������')
insert into Profession values(8, '��������')
insert into Profession values(8, '���﹤��')
insert into Profession values(8, 'Ӧ�û�ѧ')
insert into Profession values(8, '��ȫ����')
insert into Profession values(9, '���ѧ')
insert into Profession values(9, '�������')
insert into Profession values(9, '���ڹ���')
insert into Profession values(9, '���ѧ')
select * from Profession

create table Student(              --ѧ��
	id int identity(1,1) primary key,              --id
	pro_id int,                       --��� רҵProfession��id
	stuNo nvarchar(9),              --ѧ�� 2016 001 00001  ��Ϊ�˷��㣬��������ݵ�ʱ������꼶+id  2016  00001 -��9λ���־ͺ��ˡ�
	stuName nvarchar(30) not null,    --����
	stuSex nvarchar(4) not null,      --�Ա�
	stuPhone nvarchar(12),            --��ϵ�绰
	stuPassword nvarchar(20) not null,--����
	constraint StudentFK1 foreign key(pro_id) references Profession(id)
)

insert into Student values(1, '201600001', '�����', '��', '13134567890', '1234')
insert into Student values(1, '201600002', '�����', '��', '13134567891', '1234')
insert into Student values(1, '201600003', '�ܾ�', '��', '13134567892', '1234')
insert into Student values(1, '201600004', '��С��', 'Ů', '13134567893', '1234')
insert into Student values(1, '201600005', '��¶', 'Ů', '13134567894', '1234')
insert into Student values(1, '201600006', '����ǿ', '��', '13134567895', '1234')
insert into Student values(1, '201600007', '����', 'Ů', '13134567896', '1234')
insert into Student values(1, '201600008', '�ߴ���', '��', '13134567897', '1234')
insert into Student values(1, '201600009', '����÷', 'Ů', '13134567898', '1234')
insert into Student values(1, '201600010', '�»�', '��', '13134567899', '1234')
insert into Student values(1, '201600011', '����', '��', '13134567880', '1234')
insert into Student values(2, '201600012', '����', 'Ů', '13134567881', '1234')
insert into Student values(2, '201600013', '����ƽ', '��', '13134567882', '1234')
insert into Student values(2, '201600014', '���ȶ�', '��', '13134567883', '1234')
insert into Student values(2, '201600015', '����', '��', '13134567884', '1234')
insert into Student values(2, '201600016', '������', '��', '13134567885', '1234')
insert into Student values(2, '201600017', '����ϼ', 'Ů', '13134567886', '1234')
insert into Student values(2, '201600018', '�����', '��', '13134567887', '1234')
insert into Student values(2, '201600019', '������', '��', '13134567888', '1234')
insert into Student values(2, '201600020', '�ο���', '��', '13134567889', '1234')
insert into Student values(3, '201600021', '�����', '��', '13134567870', '1234')
insert into Student values(3, '201600022', '�⾲�', 'Ů', '13134567871', '1234')
insert into Student values(3, '201600023', '����ɺ', 'Ů', '13134567872', '1234')
insert into Student values(3, '201600024', '���Ȼ', '��', '13134567873', '1234')
insert into Student values(3, '201600025', '�¾���', '��', '13134567874', '1234')
insert into Student values(3, '201600026', '���κ�', 'Ů', '13134567875', '1234')
insert into Student values(3, '201600027', '��ΰ��', '��', '13134567876', '1234')
insert into Student values(3, '201600028', '�ﾺ��', '��', '13134567877', '1234')
insert into Student values(3, '201600029', '�����', 'Ů', '13134567878', '1234')
insert into Student values(3, '201600030', '��˼͢', 'Ů', '13134567879', '1234')
insert into Student values(4, '201600031', '������', 'Ů', '13134567860', '1234')
insert into Student values(4, '201600032', '���氺', '��', '13134567861', '1234')
insert into Student values(4, '201600033', '��Ѻ�', '��', '13134567862', '1234')
insert into Student values(4, '201600034', 'Ҧ��', 'Ů', '13134567863', '1234')
insert into Student values(4, '201600035', '������', 'Ů', '13134567864', '1234')
insert into Student values(4, '201600036', 'лӾ��', '��', '13134567865', '1234')
insert into Student values(4, '201600037', '�����', 'Ů', '13134567866', '1234')
insert into Student values(4, '201600038', '���', '��', '13134567867', '1234')
insert into Student values(4, '201600039', '��ӱ÷', 'Ů', '13134567868', '1234')
insert into Student values(4, '201600040', '������', '��', '13134567869', '1234')
insert into Student values(5, '201600041', '������', '��', '13134567850', '1234')
insert into Student values(5, '201600042', '�»���', 'Ů', '13134567851', '1234')
insert into Student values(5, '201600043', '������', 'Ů', '13134567852', '1234')
insert into Student values(5, '201600044', '�����', '��', '13134567853', '1234')
insert into Student values(5, '201600045', '÷��', 'Ů', '13134567854', '1234')
insert into Student values(5, '201600046', '�ż���', 'Ů', '13134567855', '1234')
insert into Student values(5, '201600047', '��·�', 'Ů', '13134567856', '1234')
insert into Student values(5, '201600048', '������', '��', '13134567857', '1234')
insert into Student values(5, '201600049', '������', 'Ů', '13134567858', '1234')
insert into Student values(5, '201600050', '����', '��', '13134567859', '1234')
insert into Student values(5, '201600051', '����', '��', '13134565978', '1234')

select * from Student

create table Teacher(             --��ʦ
	id int identity(1,1) primary key,
	teaNo nvarchar(5),   --����  00001
	teaName nvarchar(30) not null,    --����
	teaSex nvarchar(4) not null,      --�Ա�
	teaPhone nvarchar(12),            --��ϵ�绰
	teaPassword nvarchar(20) not null --����
)
insert into Teacher values('00001', '����ʦ', '��', '13145689899', '1234')
insert into Teacher values('00002', '����ʦ', '��', '13145689898', '1234')
insert into Teacher values('00003', '����ʦ', '��', '13145689897', '1234')
insert into Teacher values('00004', '����ʦ', '��', '13145689896', '1234')
insert into Teacher values('00005', '����ʦ', '��', '13145689896', '1234')

select * from Teacher

create table Course(              --�γ�
	id int identity(1,1) primary key,
	couName nvarchar(30)  not null,   --�γ���
	couHour int not null,             --��ʱ
	couCredit int not null            --ѧ��
)

insert into Course values('ƹ����', 32, 2)
insert into Course values('�ֻ�', 32, 2)
insert into Course values('ɢ��', 32, 2)
insert into Course values('����', 32, 2)
insert into Course values('����', 32, 2)

select* from Course

create table StartClass(               --���ΰ�
	id int identity(1,1) primary key,--id
	cou_id int,                  --�γ̺�(�����
	tea_id int,                  --����(�����
	claLocation nvarchar(50),            --�Ͽεص�
	claTime nvarchar(50),                --�Ͽ�ʱ��
	claCapacity int,             --���ΰ�����
	claRemain int,               --���ΰ�ʣ������
	constraint StartClassFK1 foreign key(tea_id) references Teacher(id),
	constraint StartClassFK2 foreign key(cou_id) references Course(id)
)

insert into StartClass values(1, 4, '35��¥��', '��1-16����������3-4��', 50, 50)
insert into StartClass values(2, 1, '�ֻ���', '��1-16����������3-4��', 50, 50)
insert into StartClass values(3, 3, '���н������ң���������Ӿ��һ�㣩', '��1-16����������3-4��', 50, 50)
insert into StartClass values(4, 2, '����', '��1-16����������3-4��', 50, 50)
insert into StartClass values(5, 5, '����', '��1-16����������3-4��', 50, 50)

select * from StartClass

create table Score(               --�ɼ�
	id int identity(1,1) primary key,
	cla_id int,           --���ΰ�ţ������
	stu_id int,               --ѧ�ţ������
	score1 int,                     --ƽʱ�ɼ�
	score2 int,                     --���۳ɼ�
	score3 int,                     --��ĩ����
	total int,                   --�ܳɼ�
	constraint ScoreFK1 foreign key(stu_id) references Student(id),
	constraint ScoreFK2 foreign key(cla_id) references StartClass(id)
)
select * from StartClass
select * from Score
select * from Student

create table t_User(  --����Ա
	id int identity(1,1) primary key,
	loginName nvarchar(12),
	loginPassword nvarchar(20)
)
insert into t_User values('admin', 'admin')
select * from t_User