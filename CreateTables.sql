USE bothnian

BEGIN TRAN
IF EXISTS
(
	SELECT	TABLE_NAME 
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'NounStem'
)
DROP TABLE NounStem

CREATE TABLE NounStem
(
	ProtoBothnian	VARCHAR(64) PRIMARY KEY,
	�verkalixm�l		VARCHAR(64),
	Lulem�l			VARCHAR(64),
	Pitem�l			VARCHAR(64),
	FOREIGN KEY (�verkalixm�l) REFERENCES �verkalixm�l(Stem),
	FOREIGN KEY (Lulem�l)	REFERENCES Lulem�l(Stem),
	FOREIGN KEY (Pitem�l)	REFERENCES Pitem�l(Stem)
	
)

IF EXISTS
(
	SELECT	TABLE_NAME 
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = '�verkalixm�l'
)
DROP TABLE �verkalixm�l
CREATE TABLE �verkalixm�l
(
	Stem						VARCHAR(64) PRIMARY KEY,
	SingularDefinite			VARCHAR(64),
	PluralDefinite				VARCHAR(64),
	SingularIndefinite			VARCHAR(64),
	PluralIndefinite			VARCHAR(64),
	SingularDefiniteDative		VARCHAR(64),
	PluralDefiniteDative		VARCHAR(64)
)

IF EXISTS
(
	SELECT	TABLE_NAME 
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'Lulem�l'
)
DROP TABLE Lulem�l
CREATE TABLE Lulem�l
(
	Stem						VARCHAR(64) PRIMARY KEY,
	Gender						VARCHAR(16),
	DeclinsionType				VARCHAR(8),
	SingularDefinite			VARCHAR(64),
	PluralDefinite				VARCHAR(64),
	SingularIndefinite			VARCHAR(64),
	PluralIndefinite			VARCHAR(64),
	SingularDefiniteDative		VARCHAR(64),
	PluralDefiniteDative		VARCHAR(64)
)

IF EXISTS
(
	SELECT	TABLE_NAME 
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'Pitem�l'
)
DROP TABLE Pitem�l
CREATE TABLE Pitem�l
(
	Stem						VARCHAR(64) PRIMARY KEY,
	SingularDefinite			VARCHAR(64),
	PluralDefinite				VARCHAR(64),
	SingularIndefinite			VARCHAR(64),
	PluralIndefinite			VARCHAR(64),
	SingularDefiniteDative		VARCHAR(64),
	PluralDefiniteDative		VARCHAR(64)
)

COMMIT TRAN