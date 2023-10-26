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
	Överkalixmål		VARCHAR(64),
	Lulemål			VARCHAR(64),
	Pitemål			VARCHAR(64),
	FOREIGN KEY (Överkalixmål) REFERENCES Överkalixmål(Stem),
	FOREIGN KEY (Lulemål)	REFERENCES Lulemål(Stem),
	FOREIGN KEY (Pitemål)	REFERENCES Pitemål(Stem)
	
)

IF EXISTS
(
	SELECT	TABLE_NAME 
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'Överkalixmål'
)
DROP TABLE Överkalixmål
CREATE TABLE Överkalixmål
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
	WHERE	TABLE_NAME = 'Lulemål'
)
DROP TABLE Lulemål
CREATE TABLE Lulemål
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
	WHERE	TABLE_NAME = 'Pitemål'
)
DROP TABLE Pitemål
CREATE TABLE Pitemål
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