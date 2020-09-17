create database HGH_Kargo
use HGH_Kargo

create table Yer
(
yer_id int primary key identity(300,1),
sehir nvarchar(20),
)


create table Personel
(
p_id int primary key identity(1000,1),
ad nvarchar(20),
soyad nvarchar(20),
tc varchar(11),
tel varchar(11),
d_tarih nvarchar(20),
maas nvarchar(20),
gorev nvarchar(150),
durum nvarchar(80),

)

create table Fatura
(
kargo_id int primary key identity (100,1),
takip_no nvarchar(20),
gtc nvarchar(11),
atc nvarchar(11),
gisim nvarchar(40),
aisim nvarchar(40),
gsoyad nvarchar(40),
asoyad nvarchar(40), 
gtel varchar(11),
atel varchar(11),
gposta nvarchar(100),
aposta nvarchar(100),
gadres nvarchar(250),
aadres nvarchar(250),
tarih nvarchar(20),
notlar nvarchar(250),
ucret nvarchar(20),
yer nvarchar(20),
kargo_durum nvarchar(50),
yer_id int,
p_id int,
FOREIGN KEY (yer_id) REFERENCES Yer(yer_id),
FOREIGN KEY (p_id) REFERENCES Personel(p_id),
)

create table Kargo_Durum
(
kargoDurum_id int primary key identity(200,1),
kargo_id int ,
kargo_durum nvarchar(50),
FOREIGN KEY (kargo_id ) REFERENCES Fatura (kargo_id),
)