    create database __Covid_Data
    go
    use __Covid_Data
    go

  create table Adress
  (ID decimal(3) primary key identity(1,1),
  city varchar(25),
  street varchar(25),
  num_house decimal(3))

 create table Vaccines
 (ID decimal(5) primary key identity(2,2),
 vac_date DATE,
 manufacturer varchar(25))

 create table Emploee_Details
 (ID decimal(5) primary key identity(101,1) ,
 name varchar(25),
 familly_name varchar(25),
 T_Z varchar(25),
 adress_id decimal(3) foreign key references Adress(ID),
 date_of_birth DATE,
 phone varchar(25),
 pelephone varchar(25),
 first_vac decimal(5) foreign key references Vaccines(ID),
 second_vac decimal(5) foreign key references Vaccines(ID),
 third_vac decimal(5) foreign key references Vaccines(ID),
 fourth_vac decimal(5) foreign key references Vaccines(ID),
 pos_date DATE,
 recove_date DATE
 )

