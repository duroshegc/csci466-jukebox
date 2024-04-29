<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DJ Interface</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <?php
        // Database config
        $host = 'courses';
        $dbname = 'z1978798';
        $username = 'z1978798'; // your zID
        $password = '2002Sep17'; // your birthday

        // Try to connect, or print and quit
        $dsn = "mysql:host=$host;dbname=$dbname";
        $options = [
            PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_EMULATE_PREPARES   => false,
        ];
        try {
            $pdo = new PDO($dsn, $username, $password, $options);
        } catch (PDOException $e) {
        die("        <p>Connection to database failed: {$e->getMessage()}</p>\n");
        }
    
    ?>
    <nav>
        <ul>
            <li><a href="home.php">Home</a></li>
            <li><a href="sign_a_song.php">Sign a Song</a></li>
            <li><a href="dj_interface.php">DJ Interface</a></li>
        </ul>
    </nav>

    <main>
        <header>
            <h1>DJ Interface</h1>
        </header>
        <section id="queue-container">
            <h3>Regular Queue</h3>
            <div class="song-list-container">
                <table class="song-list">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Title</th>
                            <th>Artist</th>
                            <th>Version</th>
                            <th>Year</th>
                            <th>Duration</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        include 'secrets.php';
                        $query = "SELECT q.QueueID, s.Title, s.Artist, s.Version, s.Year, s.Duration 
                                  FROM Queue q
                                  JOIN Song s ON q.SongID = s.SongID AND q.Version = s.Version
                                  ORDER BY q.TimePoint";
                        $result = $pdo->query($query);
                        while ($row = $result->fetch()) {
                            echo "<tr><td>{$row['QueueID']}</td><td>{$row['Title']}</td><td>{$row['Artist']}</td><td>{$row['Version']}</td><td>{$row['Year']}</td><td>{$row['Duration']}</td></tr>";
                        }
                        ?>
                    </tbody>
                </table>
            </div>
            <h3>Priority Queue</h3>
            <div class="song-list-container">
                <table class="song-list">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Title</th>
                            <th>Artist</th>
                            <th>Version</th>
                            <th>Year</th>
                            <th>Duration</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $query_priority = "SELECT pq.PriorityQueueID, s.Title, s.Artist, s.Version, s.Year, s.Duration 
                                           FROM PriorityQueue pq
                                           JOIN Song s ON pq.SongID = s.SongID AND pq.Version = s.Version
                                           ORDER BY pq.Time";
                        $result_priority = $pdo->query($query_priority);
                        while ($row_priority = $result_priority->fetch()) {
                            echo "<tr><td>{$row_priority['PriorityQueueID']}</td><td>{$row_priority['Title']}</td><td>{$row_priority['Artist']}</td><td>{$row_priority['Version']}</td><td>{$row_priority['Year']}</td><td>{$row_priority['Duration']}</td></tr>";
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Karaoke Event Application</p>
    </footer>
</body>
</html>
