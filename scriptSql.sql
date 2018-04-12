DROP DATABASE IF EXISTS Formulaire_questionnnaire; 
CREATE TABLE Categorie_question (
    ID_categorie_question int,
    Libelle text
    primary key( ID_categorie_question) 
);



CREATE TABLE Reponse (
    ID_Reponse int,
    Libelle text
    primary key(ID_Reponse) 
);


CREATE TABLE Groupe_de_question (
    ID_Groupe_de_question int,
    Libelle text,
    primary key(ID_Groupe_de_question ) 
);

CREATE TABLE Question (
	ID_Question int,
	Libelle text,
	ID_reponse int,
	ID_categorie int,
	ID_groupe_de_question int,
	Difficulte int,
	Type_Question text,
	int FOREIGN KEY REFERENCES Persons(PersonID)
);