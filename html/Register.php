<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign a Song</title>
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
    <header>
        <nav>
            <ul>
                <li><a href="Home.html">Home</a></li>
                <li><a href="Register.php">Register</a></li>
                <li><a href="Dj.php">DJ Interface</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section id="message-section">
            <p>Sign In, or create a new Customer ID</p>
            <p>In order to select a song, you must first sign in by providing your Customer ID below. If you do not have a Customer ID, you can create one below.</p>
        </section>

        <section class="form-container">
            <h2>Sign In</h2>
            <form id="signin-form" method="post" action="handle_signin.php">
                <div class="form-input">
                    <label for="customer-id">Customer ID:</label>
                    <input type="text" id="customer-id" name="customer-id" required>
                </div>
                <button type="submit">Sign In</button>
            </form>
        </section>

        <section class="form-container">
            <h2>Create New SingerID</h2>
            <form id="signup-form" method="post" action="handle_signup.php">
                <div class="form-input">
                    <label for="Email">Email:</label>
                    <input type="Email" id="Email" name="Email" required>
                </div>
                <div class="form-input">
                    <label for="Name">Name:</label>
                    <input type="Name" id="Name" name="Name" required>
                </div>
                <button type="submit">Sign Up</button>
            </form>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Karaoke Event Application</p>
    </footer>
</body>
</html>
