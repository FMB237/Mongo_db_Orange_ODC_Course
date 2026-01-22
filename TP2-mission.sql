-- **************************************************************************
-- Creation de la Base de donnees entreprise

-- DROP DATABASE IF EXISTS entreprise;
-- CREATE DATABASE entreprise;

-- USE entreprise;

-- **************************************************************************
-- 1. DROP all tables
-- Note: beware of foreign keys

drop table if exists Mission;
drop table if exists Employe;
drop table if exists Departement;

-- **************************************************************************
-- 2. CREATE TABLES 

-- Change default storage engine so that
-- primary and foreign keys are enforced
-- set storage_engine = INNODB;

-- Force MySQL to comply with standard
-- SQL regarding "group by"

set session sql_mode = 'ONLY_FULL_GROUP_BY';

-- Structure de la table Departement

CREATE TABLE  IF NOT EXISTS Departement (
    NumDep int(2),
    Nom varchar(20) not null,
    Ville varchar(50) not null,
    constraint Departement_PK primary key (NumDep)
) engine=InnoDB DEFAULT CHARSET=latin1;

-- Structure de la table Employe 

CREATE TABLE  IF NOT EXISTS Employe (
    NumE int(4),
    Nom varchar(25) not null,
    Fonction varchar(50) not null,
    NumChef int(4),
    DateEntree date not null,
    Salaire decimal(6 , 2) not null,
    Commission decimal(6 , 2),
    NumDep int(2),
    constraint Employe_PK primary key (NumE),
	constraint Employe_FK_Departement foreign key (NumDep) references Departement(NumDep)
) engine=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE Employe ADD constraint Employe_FK_Chef foreign key (NumChef) references Employe(NumE);
    

-- Structure de la table Mission

CREATE TABLE IF NOT EXISTS Mission (
  NumM int(3),
  NumE int(4) REFERENCES Employe(NumE),
  CIENAME varchar(50),
  Ville varchar(25),
  DateDebut date,
  DateFin date,
  PRIMARY KEY (NumM)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- **************************************************************************
-- 3. POPULATE database
-- Note: beware of foreign keys

-- Contenu de la table Departement

INSERT INTO Departement (NumDep, Nom, Ville) VALUES (10, 'FINANCES', 'PARIS');
INSERT INTO Departement (NumDep, Nom, Ville) VALUES (20, 'DSI', 'NICE');
INSERT INTO Departement (NumDep, Nom, Ville) VALUES (30, 'VENTES','PARIS');
INSERT INTO Departement (NumDep, Nom, Ville) VALUES (40, 'RH', 'LYON');

INSERT INTO Departement VALUES (50, 'MARKETING', 'NICE');

-- Contenu de la table Employe

INSERT INTO Employe VALUES
(7839, 'KING',   'PRESIDENT',  NULL, '2008-11-17', 5000, NULL, NULL),
(7566, 'MARC',   'MANAGER',    7839, '2008-04-02', 2975, NULL, 20),
(7698, 'JULIE',  'MANAGER',    7839, '2008-05-01', 2850, NULL, 30),
(7782, 'CLARK',  'MANAGER',    7839, '2008-06-09', 2650, NULL, 10),
(8000, 'SARAH',  'MANAGER',    7839, '2007-12-17', 3000.00, null, 10),
(7499, 'PIERRE', 'VENDEUR',    7698, '2008-02-20', 1900,  300, 30),
(7521, 'MARIE',  'VENDEUR',    7698, '2008-02-22', 1950,  500, 30),
(7654, 'MARTIN', 'VENDEUR',    7698, '2008-09-28', 1950, 1400, 30),
(7844, 'TURNER', 'VENDEUR',    7698, '2008-09-08', 1500,    0, 30),
(7788, 'SCOTT',  'ANALYSTE',   7566, '2010-12-09', 2000, 200, 20),
(7902, 'FORD',   'ANALYSTE',   7566, '2011-12-03', 2200, NULL, 20),
(7369, 'SARAH',  'SECRETAIRE', 7902, '2007-12-17', 1800, NULL, 20),
(7370, 'SARAH',  'SECRETAIRE', 7839, '2007-12-17', 2200, 200, 20),
(7876, 'SAM',    'SECRETAIRE', 7788, '2011-12-01', 1400, NULL, 20),
(7900, 'JAMES',  'SECRETAIRE', 7698, '2008-02-03', 1950, NULL, 30),
(7934, 'HELENE', 'SECRETAIRE', 7782, '2020-01-23', 1300, 400, 10);

-- Contenu de la table Mission

insert into Mission values(218, 7499, 'Decathlon',  'LYON',     date '2011-12-26', date '2013-12-23');
insert into Mission values(209, 7654, 'BMW',        'BERLIN',   date '2011-02-09', date '2011-02-24');
insert into Mission values(212, 7698, 'MacDo',      'LYON',     date '2011-03-04', date '2012-12-24');
insert into Mission values(216, 7698, 'IBM',        'PARIS',    date '2013-02-09', date '2015-12-24');
insert into Mission values(219, 7782, 'BMW',        'NICE',     date '2011-08-16', date '2011-10-15');
insert into Mission values(214, 7900, 'Fidal',      'PARIS',    date '2011-06-07', date '2013-12-24');
insert into Mission values(213, 7902, 'Oracle',     'NICE',     date '2012-04-11', date '2014-12-24');
insert into Mission values(220, 7369, 'IBM',        'LONDON',   date '2018-06-20', date '2020-12-24');
insert into Mission values(300, 8000, 'EFREI',      'PARIS',    date '2020-10-16', date '2020-12-15');


