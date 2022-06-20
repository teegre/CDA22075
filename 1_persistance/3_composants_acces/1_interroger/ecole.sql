drop database if exists ecole;

create database ecole;

use ecole;

create table etudiant (
  id int not null auto_increment primary key,
  nom char(8) not null default upper(left(md5(rand()), 8)) unique
);

-- ajout de 15 étudiants.
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
  libelle varchar(8) not null default upper(left(md5(rand()), 8)) unique,
  coeff int not null default (floor(rand()*5)+1)
);

-- ajout de 5 matières.
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
  date int default unix_timestamp(),
  note int not null default floor(rand()*11),
  primary key(id, id_etudiant, id_matiere),
  foreign key (id_etudiant) references etudiant(id),
  foreign key (id_matiere) references matiere(id)
);

-- ajout de 10 notes par matière pour chaque élève.
delimiter //

create procedure ajout_notes()

begin
  declare iter int;
  set iter = 10;

  theloop: while iter > 0 do
    insert into eval (id_etudiant, id_matiere)
    select etudiant.id, matiere.id from etudiant, matiere;
    set iter = iter - 1;
  end while theloop;
end //

delimiter ;

call ajout_notes;

drop procedure ajout_notes;

-- affiche la moyenne de chaque élève par matière.
create view moyenne_eleve_matiere as
select nom, libelle, avg(note) as moyenne
from eval
join matiere on eval.id_matiere = matiere.id
join etudiant on eval.id_etudiant = etudiant.id
group by etudiant.id, matiere.id;

-- affiche la moyenne générale pondérée de chaque éléve.
create view moyenne_generale_ponderee_eleve as
select nom, sum(note*coeff)/sum(coeff) as moyenne_generale_ponderee
from eval
join matiere on eval.id_matiere = matiere.id
join etudiant on eval.id_etudiant = etudiant.id
group by eval.id_etudiant
order by nom;

delimiter O_o

-- retourne la moyenne générale pondérée.
create function moyenne_generale_ponderee() returns float unsigned
begin
  return (
    select (sum(note*coeff)/sum(coeff))
    from eval
    join matiere on eval.id_matiere = matiere.id
  );
end O_o

delimiter ;

-- affiche les élèves dont la moyenne générale pondérée est supérieure à la moyenne générale générale.
create view moyenne_eleve_sup_moyenne_gen as
select nom, sum(note*coeff)/sum(coeff) as moyenne_generale, moyenne_generale_ponderee() as mgp
from eval
join matiere on eval.id_matiere = matiere.id
join etudiant on eval.id_etudiant = etudiant.id
group by eval.id_etudiant
having moyenne_generale >= mgp
order by moyenne_generale desc;
