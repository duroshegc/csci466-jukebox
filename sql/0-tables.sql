-- DDL file for table creation
\T DDLTable.txt

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
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(100) NOT NULL,
    SongID INT,
    Version VARCHAR(100) NOT NULL,
    FOREIGN KEY(SongID,Version) REFERENCES Song(SongID, Version)
);

CREATE TABLE DJ(
    DJID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE KaraokeFile(
    KaraokeFileID INT AUTO_INCREMENT PRIMARY KEY,
    Lyrics VARCHAR(300) NOT NULL,
    SongID INT,
    Version VARCHAR(100) NOT NULL,
    FOREIGN KEY(SongID, Version) REFERENCES Song(SongID, Version)
);

CREATE TABLE Queue(
    QueueID INT AUTO_INCREMENT PRIMARY KEY,
    SingerID INT,
    SongID INT,
    Version VARCHAR(100) NOT NULL,
    TimePoint DATETIME NOT NULL,
    FOREIGN KEY(SingerID) REFERENCES Singer(SingerID),
    FOREIGN KEY(SongID, Version) REFERENCES Song(SongID, Version)
);

CREATE TABLE PriorityQueue(
    PriorityQueueID INT AUTO_INCREMENT PRIMARY KEY,
    SingerID INT,
    SongID INT,
    Version VARCHAR(100) NOT NULL,
    Time DATETIME NOT NULL,
    Payment DECIMAL(5, 2) NOT NULL,
    FOREIGN KEY(SingerID) REFERENCES Singer(SingerID),
    FOREIGN KEY(SongID, Version) REFERENCES Song(SongID, Version)
);

CREATE TABLE InCharge(
    DJID INT,
    PriorityQueueID INT,
    QueueID INT,
    PRIMARY KEY(DJID, PriorityQueueID, QueueID),
    FOREIGN KEY(DJID) REFERENCES DJ(DJID),
    FOREIGN KEY(PriorityQueueID) REFERENCES PriorityQueue(PriorityQueueID),
    FOREIGN KEY(QueueID) REFERENCES Queue(QueueID)
);

CREATE TABLE Registers(
    SingerID INT,
    SongID INT,
    Version VARCHAR(100) NOT NULL,
    QueueID INT,
    PriorityQueueID INT,
    PRIMARY KEY(SingerID, SongID, Version, QueueID, PriorityQueueID),
    FOREIGN KEY(SingerID) REFERENCES Singer(SingerID),
    FOREIGN KEY(SongID, Version) REFERENCES Song(SongID, Version),
    FOREIGN KEY(QueueID) REFERENCES Queue(QueueID),
    FOREIGN KEY(PriorityQueueID) REFERENCES PriorityQueue(PriorityQueueID)
);

CREATE TABLE Pick(
    DJID INT,
    KaraokeFileID INT,
    PRIMARY KEY(DJID, KaraokeFileID),
    FOREIGN KEY(DJID) REFERENCES DJ(DJID),
    FOREIGN KEY(KaraokeFileID) REFERENCES KaraokeFile(KaraokeFileID)
);

\t
