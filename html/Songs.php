<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pick a Song</title>
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
            <li><a href="Home.html">Home</a></li>
            <li><a href="Register.php">Register</a></li>
            <li><a href="Dj.php">DJ Interface</a></li>
        </ul>
    </nav>

    <main id="song-selection-wrapper">
        <h1>Pick a Song!</h1>
        <p>Choose a song to queue by writing the SongID below.</p>
        <h2>Welcome to the Karaoke Service!</h2>
        <form id="song-filter-form" method="post" action="">
            <label for="section-filter">Choose a section to filter:</label>
            <select id="section-filter" name="filter-type">
                <option value="Title">Title</option>
                <option value="Artist">Artist</option>
                <option value="Version">Version</option>
                <option value="Year">Year</option>
                <option value="Duration">Duration</option>
            </select>
            <input type="text" id="song-search" name="search-term" placeholder="Search for a song...">
            <button type="submit">Search</button>
        </form>
        <table id="song-table">
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
                include 'config.php'; // Ensure this file includes the correct database connection setup

                // Default query to display all songs
                $query = $pdo->prepare("SELECT SongID, Title, Artist, Version, Year, TIME_FORMAT(Duration, '%H:%i') AS Duration FROM Song");
                $query->execute();

                // Display each song in a row
                while ($row = $query->fetch()) {
                    echo "<tr>
                            <td>{$row['SongID']}</td>
                            <td>{$row['Title']}</td>
                            <td>{$row['Artist']}</td>
                            <td>{$row['Version']}</td>
                            <td>{$row['Year']}</td>
                            <td>{$row['Duration']}</td>
                          </tr>";
                }

                // Filter results based on user input
                if ($_SERVER["REQUEST_METHOD"] == "POST" && !empty($_POST['search-term'])) {
                    $filterType = $_POST['filter-type'];
                    $searchTerm = "%" . $_POST['search-term'] . "%";

                    if (in_array($filterType, ['Title', 'Artist', 'Version', 'Year', 'Duration'])) {
                        $query = $pdo->prepare("SELECT SongID, Title, Artist, Version, Year, TIME_FORMAT(Duration, '%H:%i') AS Duration FROM Song WHERE $filterType LIKE :searchTerm");
                        $query->execute(['searchTerm' => $searchTerm]);

                        // Clear existing rows
                        echo "<script>document.querySelector('#song-table tbody').innerHTML = '';</script>";

                        // Output new filtered rows
                        while ($row = $query->fetch()) {
                            echo "<tr>
                                    <td>{$row['SongID']}</td>
                                    <td>{$row['Title']}</td>
                                    <td>{$row['Artist']}</td>
                                    <td>{$row['Version']}</td>
                                    <td>{$row['Year']}</td>
                                    <td>{$row['Duration']}</td>
                                  </tr>";
                        }
                    }
                }
                ?>
            </tbody>
        </table>
    </main>

    <footer>
        <p>&copy; 2024 Karaoke Event Application</p>
    </footer>
</body>
</html>
