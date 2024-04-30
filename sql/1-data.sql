-- DML file for inserting instance data
\T DMLTable.txt

INSERT INTO Singer (Name, Email)
VALUES
    ('John', 'john@gmail.com'),
    ('Emmanuel', 'emmanuel@ehotmail.com'),
    ('Dami', 'dami@icloud.com'),
    ('Duro', 'duro@gmail.com'),
    ('Habeeb', 'habeeb@icloud.com');
    DESCRIBE Singer;
INSERT INTO Song (SongID, Artist, Title, Version, Duration, Year, Genre)
VALUES
    (1, 'Justin Bieber', 'Sorry', 'Single', '00:03:20', 2015, 'Pop'),
    (2, 'Drake', 'Hotline Bling', 'Single', '00:04:27', 2015, 'Hip Hop'),
    (3, 'Davido', 'If', 'Single', '00:03:59', 2017, 'Afrobeats'),
    (4, 'Wizkid', 'Ojuelegba', 'Single', '00:04:11', 2014, 'Afrobeats'),
    (5, 'Post Malone', 'Circles', 'Single', '00:03:34', 2019, 'Pop'),
    (6, 'J. Cole', 'No Role Modelz', 'Single', '00:04:52', 2014, 'Hip Hop'),
    (7, 'Kendrick Lamar', 'HUMBLE.', 'Single', '00:03:04', 2017, 'Hip Hop'),
    (8, 'Tems', 'Try Me', 'Single', '00:03:19', 2019, 'Afrobeats'),
    (9, 'Travis Scott', 'SICKO MODE', 'Single', '00:05:12', 2018, 'Hip Hop'),
    (10, 'Aaske', 'Better Not', 'Single', '00:03:34', 2022, 'Pop'),
    (11, 'Kanye West', 'Stronger', 'Single', '00:04:08', 2007, 'Hip Hop'),
    (12, 'The Beatles', 'Hey Jude', 'Single', '00:07:11', 1968, 'Rock'),
    (13, 'Justin Bieber', 'Love Yourself', 'Single', '00:03:53', 2015, 'Pop'),
    (14, 'Drake', 'Work (ft. Rihanna)', 'Duet', '00:03:39', 2016, 'Hip Hop'),
    (15, 'Davido', 'Fem', 'Single', '00:03:20', 2020, 'Afrobeats'),
    (16, 'Wizkid', 'Essence (ft. Tems)', 'Duet', '00:04:09', 2020, 'Afrobeats'),
    (17, 'Post Malone', 'Sunflower (ft. Swae Lee)', 'Duet', '00:02:38', 2018, 'Pop'),
    (18, 'J. Cole', 'Middle Child', 'Single', '00:03:33', 2019, 'Hip Hop'),
    (19, 'Kendrick Lamar', 'Alright', 'Single', '00:03:39', 2015, 'Hip Hop'),
    (20, 'Travis Scott', 'Goosebumps (ft. Kendrick Lamar)', 'Duet', '00:04:04', 2016, 'Hip Hop');
    DESCRIBE Song;
-- Producers and Writers for Songs
   INSERT INTO Contributor (Name, Role, SongID, Version)
VALUES
    ('Max Martin', 'Producer', 1, 'Single'), -- Justin Bieber - Sorry
    ('Justin Tranter', 'Writer', 1, 'Single'), -- Justin Bieber - Sorry
    ('Paul Epworth', 'Producer', 2, 'Single'), -- Drake - Hotline Bling
    ('Aubrey Graham', 'Writer', 2, 'Single'), -- Drake - Hotline Bling
    ('Kiddominant', 'Producer', 3, 'Single'), -- Davido - If
    ('Tekno', 'Writer', 3, 'Single'), -- Davido - If
    ('Sarz', 'Producer', 4, 'Single'), -- Wizkid - Ojuelegba
    ('Wizkid', 'Writer', 4, 'Single'), -- Wizkid - Ojuelegba
    ('Frank Dukes', 'Producer', 5, 'Single'), -- Post Malone - Circles
    ('Post Malone', 'Writer', 5, 'Single'), -- Post Malone - Circles
    ('J. Cole', 'Producer', 6, 'Single'), -- J. Cole - No Role Modelz
    ('J. Cole', 'Writer', 6, 'Single'), -- J. Cole - No Role Modelz
    ('Mike WiLL Made-It', 'Producer', 7, 'Single'), -- Kendrick Lamar - HUMBLE.
    ('Kendrick Lamar', 'Writer', 7, 'Single'), -- Kendrick Lamar - HUMBLE.
    ('Oscar', 'Producer', 8, 'Single'), -- Tems - Try Me
    ('Tems', 'Writer', 8, 'Single'), -- Tems - Try Me
    ('Travis Scott', 'Producer', 9, 'Single'), -- Travis Scott - SICKO MODE
    ('Drake', 'Writer', 9, 'Single'), -- Travis Scott - SICKO MODE
    ('Yonatan Ayal', 'Producer', 10, 'Single'), -- Aaske - Better Not
    ('Aaske', 'Writer', 10, 'Single'), -- Aaske - Better Not
    ('Kanye West', 'Producer', 11, 'Single'), -- Kanye West - Stronger
    ('Kanye West', 'Writer', 11, 'Single'), -- Kanye West - Stronger
    ('Paul McCartney', 'Writer', 12, 'Single'), -- The Beatles - Hey Jude
    ('John Lennon', 'Writer', 12, 'Single'), -- The Beatles - Hey Jude
    ('Ed Sheeran', 'Writer', 13, 'Single'), -- Justin Bieber - Love Yourself
    ('Steve Mac', 'Writer', 13, 'Single'), -- Justin Bieber - Love Yourself
    ('Boi-1da', 'Producer', 14, 'Duet'), -- Drake - Work
    ('Rihanna', 'Writer', 14, 'Duet'), -- Drake - Work
    ('Napoleon Beatz', 'Producer', 16, 'Duet'), -- Wizkid - Essence (ft. Tems)
    ('Legendury Beatz', 'Producer', 16, 'Duet'), -- Wizkid - Essence (ft. Tems)
    ('Khalid', 'Writer', 16, 'Duet'), -- Wizkid - Essence (ft. Tems)
    ('Swae Lee', 'Writer', 17, 'Duet'), -- Post Malone - Sunflower (ft. Swae Lee)
    ('William Roberts II', 'Writer', 17, 'Duet'), -- Post Malone - Sunflower (ft. Swae Lee)
    ('T-Minus', 'Producer', 19, 'Single'), -- Kendrick Lamar - Alright
    ('Kendrick Lamar', 'Writer', 19, 'Single'), -- Kendrick Lamar - Alright
    ('Cardo', 'Producer', 20, 'Duet'), -- Travis Scott - Goosebumps (ft. Kendrick Lamar)
    ('Kendrick Lamar', 'Writer', 20, 'Duet'); -- Travis Scott - Goosebumps (ft. Kendrick Lamar)
    DESCRIBE Contributor;
-- Insert DJ names into the DJ table
INSERT INTO DJ (Name)
VALUES
    ('DJ Tee kay'),
    ('DJ MO'),
    ('DJ AY');
    DESCRIBE DJ;
-- Karaoke Files for Songs
INSERT INTO KaraokeFile (Lyrics, SongID, Version)
VALUES
    ('You gotta go and get angry at all of my honesty
    You know I try but I don''t do too well with apologies', 1, 'Single'), -- Justin Bieber - Sorry
    ('You used to call me on my cell phone
    Late night when you need my love', 2, 'Single'), -- Drake - Hotline Bling
    ('If I tell you say I love you o
    My money my body na your own o baby
    Thirty billion for the account o', 3, 'Single'), -- Davido - If
    ('Ni ojuelegba
    They know my story
    From modox studio', 4, 'Single'), -- Wizkid - Ojuelegba
    ('Seasons change and our love went cold
    Feed the flame ''cause we can''t let go', 5, 'Single'), -- Post Malone - Circles
    ('First things first rest in peace Uncle Phil
    For real, you the only father that I ever knew', 6, 'Single'), -- J. Cole - No Role Modelz
    ('Ayy, I remember syrup sandwiches and crime allowances
    Finesse a nigga with some counterfeits, but now I''m countin'' this', 7, 'Single'), -- Kendrick Lamar - HUMBLE.
    ('Try me, try me
    I''m not afraid of you
    Oh, my God, you the devil
    Try me, try me, try me', 8, 'Single'), -- Tems - Try Me
    ('Astro, yeah
    Sun is down, freezin'' cold
    That''s how we already know winter''s here', 9, 'Single'), -- Travis Scott - SICKO MODE
    ('I see you sippin'' White Russians, baby
    Does he really share with you
    Does he really care for you
    Does he really want you, baby?', 10, 'Single'), -- Aaske - Better Not
    ('N-now th-that that don''t kill me
    Can only make me stronger
    I need you to hurry up now
    ''Cause I can''t wait much longer', 11, 'Single'), -- Kanye West - Stronger
    ('Hey Jude, don''t make it bad
    Take a sad song and make it better', 12, 'Single'), -- The Beatles - Hey Jude
    ('My mama don''t like you and she likes everyone
    And I never like to admit that I was wrong', 13, 'Single'), -- Justin Bieber - Love Yourself
    ('If I ever said I''m never scared
    Just know I mean it', 14, 'Duet'), -- Drake - Work (ft. Rihanna)
    ('You don''t need no other body
    Only you fi hold my body', 16, 'Duet'), -- Wizkid - Essence (ft. Tems)
    ('Needless to say, I keep her in check
    She was all bad-bad, nevertheless', 17, 'Duet'), -- Post Malone - Sunflower (ft. Swae Lee)
    ('We gon'' be alright
    We gon'' be alright', 19, 'Single'), -- Kendrick Lamar - Alright
    ('I get those goosebumps every time, yeah, you come around
    You ease my mind, you make everything feel fine', 20, 'Duet'); -- Travis Scott - Goosebumps (ft. Kendrick Lamar)
    DESCRIBE KaraokeFile;
INSERT INTO Queue (SingerID, SongID, Version, TimePoint)
VALUES
    (1, 1, 'Single', '2024-04-28 12:00:00'), -- John queues Justin Bieber - Sorry
    (2, 2, 'Single', '2024-04-28 12:05:00'), -- Emmanuel queues Drake - Hotline Bling
    (3, 3, 'Single', '2024-04-28 12:10:00'), -- Dami queues Davido - If
    (4, 4, 'Single', '2024-04-28 12:15:00'), -- Duro queues Wizkid - Ojuelegba
    (5, 5, 'Single', '2024-04-28 12:20:00'), -- Habeeb queues Post Malone - Circles
    (1, 6, 'Single', '2024-04-28 12:25:00'), -- John queues J. Cole - No Role Modelz
    (2, 7, 'Single', '2024-04-28 12:30:00'), -- Emmanuel queues Kendrick Lamar - HUMBLE.
    (3, 8, 'Single', '2024-04-28 12:35:00'), -- Dami queues Tems - Try Me
    (4, 9, 'Single', '2024-04-28 12:40:00'), -- Duro queues Travis Scott - SICKO MODE
    (5, 10, 'Single', '2024-04-28 12:45:00'), -- Habeeb queues Aaske - Better Not
    (1, 11, 'Single', '2024-04-28 12:50:00'), -- John queues Kanye West - Stronger
    (2, 12, 'Single', '2024-04-28 12:55:00'), -- Emmanuel queues The Beatles - Hey Jude
    (3, 13, 'Single', '2024-04-28 13:00:00'), -- Dami queues Justin Bieber - Love Yourself
    (4, 14, 'Duet', '2024-04-28 13:05:00'), -- Duro queues Drake - Work (ft. Rihanna)
    (5, 16, 'Duet', '2024-04-28 13:10:00'), -- Habeeb queues Wizkid - Essence (ft. Tems)
    (1, 17, 'Duet', '2024-04-28 13:15:00'), -- John queues Post Malone - Sunflower (ft. Swae Lee)
    (2, 19, 'Single', '2024-04-28 13:20:00'), -- Emmanuel queues Kendrick Lamar - Alright
    (3, 20, 'Duet', '2024-04-28 13:25:00'); -- Dami queues Travis Scott - Goosebumps (ft. Kendrick Lamar)
    DESCRIBE Queue;
    INSERT INTO PriorityQueue (SingerID, SongID, Version, Time, Payment)
VALUES
    (1, 1, 'Single', '2024-04-28 14:00:00', 5.00), -- John requests Justin Bieber - Sorry (Single) with a payment of $5.00
    (2, 2, 'Single', '2024-04-28 14:05:00', 4.50), -- Emmanuel requests Drake - Hotline Bling (Single) with a payment of $4.50
    (3, 3, 'Single', '2024-04-28 14:10:00', 6.00), -- Dami requests Davido - If (Single) with a payment of $6.00
    (4, 4, 'Single', '2024-04-28 14:15:00', 3.75), -- Duro requests Wizkid - Ojuelegba (Single) with a payment of $3.75
    (5, 5, 'Single', '2024-04-28 14:20:00', 4.25), -- Habeeb requests Post Malone - Circles (Single) with a payment of $4.25
    (1, 6, 'Single', '2024-04-28 14:25:00', 5.50), -- John requests J. Cole - No Role Modelz (Single) with a payment of $5.50
    (2, 7, 'Single', '2024-04-28 14:30:00', 7.00), -- Emmanuel requests Kendrick Lamar - HUMBLE. (Single) with a payment of $7.00
    (3, 8, 'Single', '2024-04-28 14:35:00', 4.00), -- Dami requests Tems - Try Me (Single) with a payment of $4.00
    (4, 9, 'Single', '2024-04-28 14:40:00', 6.50), -- Duro requests Travis Scott - SICKO MODE (Single) with a payment of $6.50
    (5, 10, 'Single', '2024-04-28 14:45:00', 5.75), -- Habeeb requests Aaske - Better Not (Single) with a payment of $5.75
    (1, 11, 'Single', '2024-04-28 14:50:00', 4.50), -- John requests Kanye West - Stronger (Single) with a payment of $4.50
    (2, 12, 'Single', '2024-04-28 14:55:00', 6.75), -- Emmanuel requests The Beatles - Hey Jude (Single) with a payment of $6.75
    (3, 13, 'Single', '2024-04-28 15:00:00', 5.25), -- Dami requests Justin Bieber - Love Yourself (Single) with a payment of $5.25
    (4, 14, 'Duet', '2024-04-28 15:05:00', 8.00), -- Duro requests Drake - Work (Duet) with a payment of $8.00
    (5, 16, 'Duet', '2024-04-28 15:10:00', 7.50), -- Habeeb requests Wizkid - Essence (ft. Tems) (Duet) with a payment of $7.50
    (1, 17, 'Duet', '2024-04-28 15:15:00', 6.25), -- John requests Post Malone - Sunflower (ft. Swae Lee) (Duet) with a payment of $6.25
    (2, 19, 'Single', '2024-04-28 15:20:00', 5.00), -- Emmanuel requests Kendrick Lamar - Alright (Single) with a payment of $5.00
    (3, 20, 'Duet', '2024-04-28 15:25:00', 6.75); -- Dami requests Travis Scott - Goosebumps (ft. Kendrick Lamar) (Duet) with a payment of $6.75
    DESCRIBE PriorityQueue;
    INSERT INTO InCharge (DJID, PriorityQueueID, QueueID)
VALUES
    (1, 1, 1), -- Tee Kay is in charge of Priority Queue ID 1 and Queue ID 1
    (2, 2, 2), -- MO is in charge of Priority Queue ID 2 and Queue ID 2
    (3, 3, 3), -- AY is in charge of Priority Queue ID 3 and Queue ID 3
    (1, 4, 4), -- Tee Kay is in charge of Priority Queue ID 4 and Queue ID 4
    (2, 5, 5), -- MO is in charge of Priority Queue ID 5 and Queue ID 5
    (3, 6, 6), -- AY is in charge of Priority Queue ID 6 and Queue ID 6
    (1, 7, 7), -- Tee Kay is in charge of Priority Queue ID 7 and Queue ID 7
    (2, 8, 8), -- MO is in charge of Priority Queue ID 8 and Queue ID 8
    (3, 9, 9), -- AY is in charge of Priority Queue ID 9 and Queue ID 9
    (1, 10, 10), -- Tee Kay is in charge of Priority Queue ID 10 and Queue ID 10
    (2, 11, 11), -- MO is in charge of Priority Queue ID 11 and Queue ID 11
    (3, 12, 12); -- AY is in charge of Priority Queue ID 12 and Queue ID 12
    DESCRIBE InCharge;
    INSERT INTO Registers (SingerID, SongID, Version, QueueID, PriorityQueueID)
VALUES
    (1, 1, 'Single', 1, 1), -- John registers to sing Justin Bieber - Sorry from Queue 1 (Priority Queue 1)
    (2, 2, 'Single', 2, 2), -- Emmanuel registers to sing Drake - Hotline Bling from Queue 2 (Priority Queue 2)
    (3, 3, 'Single', 3, 3), -- Dami registers to sing Davido - If from Queue 3 (Priority Queue 3)
    (4, 4, 'Single', 4, 4), -- Duro registers to sing Wizkid - Ojuelegba from Queue 4 (Priority Queue 4)
    (5, 5, 'Single', 5, 5); -- Habeeb registers to sing Post Malone - Circles from Queue 5 (Priority Queue 5)
    DESCRIBE Registers;
    INSERT INTO Pick (DJID, KaraokeFileID)
VALUES
    (1, 2), 
    (2, 1), 
    (3, 2); 
 DESCRIBE Pick;

 \t