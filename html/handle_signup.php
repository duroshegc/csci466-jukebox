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

<?php
//include 'config.php'; // Ensure this includes your database connection setup

session_start(); // Start the session at the beginning of the script

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['Email'];
    $name = $_POST['Name'];

    // Insert new singer information into the database
    $stmt = $pdo->prepare("INSERT INTO Singer (Name, Email) VALUES (?, ?)");
    $stmt->execute([$name, $email]);
    $newSingerID = $pdo->lastInsertId(); // Retrieves the last inserted auto-increment ID

    $_SESSION['user'] = ['SingerID' => $newSingerID, 'Name' => $name, 'Email' => $email]; // Store user info in session
    header('Location: Songs.php'); // Redirect to the songs page
    exit(); // It's important to call exit() after header redirection to stop the script
}
?>
