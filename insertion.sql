begin transaction;

INSERT INTO Adherents VALUES (1, 'John Smith', 'H', '731 Fondren, Houston TX');
INSERT INTO Adherents VALUES (2, 'Franklin Wong', 'H', '638 Voss, Houston  TX');
INSERT INTO Adherents VALUES (3, 'Alicia Zelaya', 'F', '3321 Castle, Spring TX');
INSERT INTO Adherents VALUES (4, 'Jennifer Wallace', 'F', '291 Berry, Bellaire TX');
INSERT INTO Adherents VALUES (5, 'Ramesh Narayan', 'H', '975 Fire Oak, Humble TX');
INSERT INTO Adherents VALUES (6, 'Joyce English', 'F', '5631 Rice, Houston TX');
INSERT INTO Adherents VALUES (7, 'Ahmad Jabbar', 'H', '980 Dallas, Houston TX');
INSERT INTO Adherents VALUES (8, 'James Borg', 'H', '450 Stone, Houston TX');
INSERT INTO Adherents VALUES (9, 'Kevin Wayne', 'H', '291 Berry, Bellaire');
INSERT INTO Adherents VALUES (10, 'Sasha Hudson', 'F', '638 Voss, Houston TX');
INSERT INTO Adherents VALUES (11, 'Walter White', 'H', '308 Negro Arroyo Lane, Alburquerque NM');

INSERT INTO Livres VALUES (1, 'Dune', 'Sci-Fi');
INSERT INTO Livres VALUES (2, 'Harry Potter and the Sorcerers Stone', 'Fantaisie');
INSERT INTO Livres VALUES (3, 'Tellement Frais', 'Cuisine');
INSERT INTO Livres VALUES (4, 'Fundamentals of database systems', 'Science');
INSERT INTO Livres VALUES (5, 'Candide', 'Fiction Littéraire');
INSERT INTO Livres VALUES (6, 'Sapiens', 'Histoire');
INSERT INTO Livres VALUES (7, 'Seigneur des Anneaux', 'Fantaisie');
INSERT INTO Livres VALUES (8, 'Twilight', 'Fantaisie');
INSERT INTO Livres VALUES (9, 'Encyclopédie, ou Dictionnaire Raisonné des Arts et des Métiers', 'Référence');
INSERT INTO Livres VALUES (10, 'Giger', 'Art');
INSERT INTO Livres VALUES (11, 'Leaves of Grass', 'Poésie');
INSERT INTO Livres VALUES (12, 'Harry Potter and the Chamber of Secrets', 'Fantaisie');
INSERT INTO Livres VALUES (13, 'Fire and Fury', 'Histoire');
INSERT INTO Livres VALUES (14, 'Fire and Fury', 'Histoire');


INSERT INTO Auteurs VALUES (1, 'Frank Herbert');
INSERT INTO Auteurs VALUES (2, 'J.K. Rowling');
INSERT INTO Auteurs VALUES (3, 'Geneviève OGleman');
INSERT INTO Auteurs VALUES (4, 'Ramez Elmasri');
INSERT INTO Auteurs VALUES (4, 'Shamkant B. Navathe');
INSERT INTO Auteurs VALUES (5, 'Voltaire');
INSERT INTO Auteurs VALUES (6, 'Yuval Noah Harari');
INSERT INTO Auteurs VALUES (7, 'J.R.R. Tolkien');
INSERT INTO Auteurs VALUES (8, 'Stephenie Meyer');
INSERT INTO Auteurs VALUES (9, 'Denis Diderot');
INSERT INTO Auteurs VALUES (9, 'Jean le Rond dAlembert');
INSERT INTO Auteurs VALUES (10, 'HR Giger');
INSERT INTO Auteurs VALUES (11, 'Walt Whitman');
INSERT INTO Auteurs VALUES (12, 'J.K. Rowling');
INSERT INTO Auteurs VALUES (13, 'Randall Hansen');
INSERT INTO Auteurs VALUES (14, 'Michael Wolff');


INSERT INTO Commandes VALUES (1, 11, '2023-01-03', 'honorée', 11);
INSERT INTO Commandes VALUES (2, 5, '2023-01-21', 'annulée', 1);
INSERT INTO Commandes VALUES (3, 7, '2023-02-05', 'honorée', 2);
INSERT INTO Commandes VALUES (4, 7, '2023-02-12', 'annulée', 2);
INSERT INTO Commandes VALUES (5, 5, '2023-02-15', 'honorée', 2);
INSERT INTO Commandes VALUES (6, 5, '2023-03-02', 'honorée', 12);
INSERT INTO Commandes VALUES (7, 1, '2023-03-07', 'annulée', 9);
INSERT INTO Commandes VALUES (8, 8, '2023-04-07', 'honorée', 4);
INSERT INTO Commandes VALUES (9, 3, '2023-04-17', 'honorée', 5);
INSERT INTO Commandes VALUES (10, 4, '2023-04-04', 'en cours', 10);
INSERT INTO Commandes VALUES (11, 9, '2023-04-21', 'en cours', 3);

INSERT INTO Emprunts(n_emp, id_ad, id_liv) VALUES (1, 1, 1)

INSERT INTO Emprunts VALUES (1, '2023-01-05', '2023-01-14', 11, 11);
INSERT INTO Emprunts VALUES (2, '2023-01-15', '2023-02-01', 1, 10);
INSERT INTO Emprunts VALUES (3, '2023-02-03', '2023-02-15', 4, 4);
INSERT INTO Emprunts VALUES (4, '2023-02-07', '2023-02-27', 7, 2);
INSERT INTO Emprunts VALUES (5, '2023-02-21', '2023-03-04', 5, 2);
INSERT INTO Emprunts VALUES (6, '2023-03-08', '2023-03-25', 5, 12);
INSERT INTO Emprunts VALUES (7, '2023-03-13', '2023-03-20', 8, 6);
INSERT INTO Emprunts VALUES (8, '2023-03-25', '2023-04-11', 6, 14);
INSERT INTO Emprunts VALUES (9, '2023-04-12', null, 8, 4);
INSERT INTO Emprunts VALUES (10, '2023-04-20', null, 3, 5);

