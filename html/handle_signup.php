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
include 'secrets.php'; // Ensure this includes your database connection setup

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $newCustomerID = $_POST['new-customer-id'];
    $password = $_POST['password']; // For a real application, you should hash this password

    // Check if the user ID already exists
    $checkStmt = $pdo->prepare("SELECT * FROM Singer WHERE SingerID = ?");
    $checkStmt->execute([$newCustomerID]);
    if ($checkStmt->fetch()) {
        echo "This Customer ID already exists. Please try a different one.";
    } else {
        $stmt = $pdo->prepare("INSERT INTO Singer (SingerID, SingerName, Password) VALUES (?, ?, ?)");
        $stmt->execute([$newCustomerID, $newCustomerID, $password]); // Using ID as name for simplicity
        echo "New customer ID created successfully. Please sign in.";
    }
}
?>
