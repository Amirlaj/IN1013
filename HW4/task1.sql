create table petPet (
  petname varchar(20) not null primary key,
  owner varchar(45),
  species varchar(45),
  gender varchar(1),
  birth date,
  death date
);
create table petEvent (
  eventid int not null auto_increment primary key,
  petname varchar(20) not null,
  constraint c1 foreign key (petname) references petpet (petname) on delete cascade,
  eventdate date,
  eventtype varchar(15),
  remark varchar(255)
);
