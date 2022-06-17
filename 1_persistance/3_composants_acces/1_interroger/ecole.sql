drop database if exists ecole;

create database ecole;

use test;

create table etudiant (
  id int not null auto_increment primary key,
  nom char(8) not null default upper(left(md5(rand()), 8)) unique
);

insert into etudiant (id) values
(null),
(null),
(null),
(null),
(null),
(null),
(null),
(null),
(null),
(null),
(null),
(null),
(null),
(null),
(null);

create table matiere (
  id int not null auto_increment primary key,
  libelle varchar(8) not null default upper(left(md5(rand()), 8)) unique
);

insert into matiere (id) values
(null),
(null),
(null),
(null),
(null);

create table eval (
  id int not null auto_increment,
  id_etudiant int not null,
  id_matiere int not null,
  note int default floor(rand()*11),
  primary key(id, id_etudiant, id_matiere),
  foreign key (id_etudiant) references etudiant(id),
  foreign key (id_matiere) references matiere(id)
);

insert into eval (id)
select etudiant.id, matiere.id from etudiant, matiere;
