-- DDL file for table creation
\T DDLTable.txt

DROP TABLE IF EXISTS Pick;
DROP TABLE IF EXISTS Registers;
DROP TABLE IF EXISTS InCharge;
DROP TABLE IF EXISTS SongContrib;
DROP TABLE IF EXISTS PriorityQueue;
DROP TABLE IF EXISTS Queue;
DROP TABLE IF EXISTS DJ;
DROP TABLE IF EXISTS Contributor;
DROP TABLE IF EXISTS Song;
DROP TABLE IF EXISTS Singer;




CREATE TABLE Singer(
    SingerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

CREATE TABLE Song(
    SongID INT,
    Artist VARCHAR(100) NOT NULL,
    Title VARCHAR(100) NOT NULL,
    Version VARCHAR(100) NOT NULL,
    Duration TIME NOT NULL,
    Year INT NOT NULL,
    Genre VARCHAR(100) NOT NULL,
    PRIMARY KEY (SongID, Version)
);

CREATE TABLE Contributor(
    ContributorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
    
);

CREATE TABLE DJ(
    DJID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);



CREATE TABLE Queue(
    SingerID INT NOT NULL,
    SongID INT NOT NULL,
    Version VARCHAR(100) NOT NULL,
    TimePoint DATETIME NOT NULL,

    PRIMARY KEY(SingerID, SongID, Version),
    FOREIGN KEY(SingerID) REFERENCES Singer(SingerID),
    FOREIGN KEY(SongID, Version) REFERENCES Song(SongID, Version)
);

CREATE TABLE PriorityQueue(
    SingerID INT NOT NULL,
    SongID INT NOT NULL,
    Version VARCHAR(100) NOT NULL,
    Time DATETIME NOT NULL,
    Payment DECIMAL(5, 2) NOT NULL,

    PRIMARY KEY(SingerID, SongID, Version),
    FOREIGN KEY(SingerID) REFERENCES Singer(SingerID),
    FOREIGN KEY(SongID, Version) REFERENCES Song(SongID, Version)
);

CREATE TABLE SongContrib(
    ContributorID INT NOT NULL,
    SongID INT NOT NULL,
    Version VARCHAR(100) NOT NULL,
    Role VARCHAR(100) NOT NULL,

    PRIMARY KEY(ContributorID, SongID, Version, Role),
    FOREIGN KEY(ContributorID) REFERENCES Contributor(ContributorID),
    FOREIGN KEY (SongID, Version) REFERENCES Song(SongID, Version)
);







\t
