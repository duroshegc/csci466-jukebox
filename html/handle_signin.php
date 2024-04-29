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
include 'secrets.php'; // Your PDO connection file

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $customerID = $_POST['customer-id'];

    $stmt = $pdo->prepare("SELECT * FROM Singer WHERE SingerID = ?");
    $stmt->execute([$customerID]);
    $user = $stmt->fetch();

    if ($user) {
        echo "Welcome back, " . htmlspecialchars($user['SingerName']) . "!";
        // Optionally, start a session and redirect the user
        // header('Location: user_dashboard.php');
    } else {
        echo "Customer ID not found. Please register.";
        // Optionally, provide a link back to the registration form
    }
}
?>
