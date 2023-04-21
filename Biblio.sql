begin transaction;
DROP SCHEMA IF EXISTS Biblio CASCADE;
create schema Biblio;
set search_path to Biblio;


CREATE TABLE Status(
	status text primary key
);

INSERT INTO Status VALUES
	('en cours'),('annulée'),('honorée');

CREATE TABLE Sexe(
	sexe text primary key
);

INSERT INTO Sexe VALUES
	('H'),('F'),('O');

CREATE TABLE Genres(
	genre text primary key
);

INSERT INTO Genres VALUES
	('Sci-fi'),('Romance'),('Fiction Littéraire'),('Fiction Historique'),('Fiction'),('Action et Aventure'),
	('Horreur'),('Mystère Suspense'),('Fantaisie'),('Biographie'),('Poésie'),('Art'),('Musique'),('Humour'),
	('Religion'),('Mythologie'),('Croyance Alternative'),('Santé'),('Science'),('Sciences Sociales'),('Psychologie'),
	('Self Help'),('Educatif'),('Business'),('Référence'),('Communications'),('Maison, jardin et bricolage'),
	('Pet Care'),('Loisirs'),('Cuisine'),('Crime');


CREATE TABLE Adherents(
	id_ad integer,
	nom text,
	sexe text default 'O',
	adresse text,
	primary key (id_ad),
	foreign key (sexe) references Sexe(sexe)
);

CREATE TABLE Livres(
	id_liv integer,
	titre text,
	genre text,
	primary key (id_liv)
);

CREATE TABLE Auteurs(
	id_liv integer,
	nom_aut text,
	primary key (id_liv, nom_aut),
	foreign key (id_liv) references Livres(id_liv)
);

CREATE TABLE Emprunts(
	n_emp integer,
	date_emp date default current_date,
	date_ret date default null,
	id_ad integer,
	id_liv integer,
	primary key (n_emp),
	foreign key (id_ad) references Adherents(id_ad),
	foreign key (id_liv) references Livres(id_liv)
);

CREATE TABLE Commandes(
	n_com integer,
	id_ad integer,
	date_com date default current_date,
	status text default 'en cours',
	id_liv integer,
	primary key (n_com),
	foreign key (id_ad) references Adherents(id_ad),
	foreign key (id_liv) references Livres(id_liv),
	foreign key (status) references Status(status)
);


