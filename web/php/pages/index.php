<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <title>Web phụ kiện</title>
</head>
<body>
    <div class="wrapper">
        <?php 
            session_start();
            include("../admin/config/connect.php");
            include("header.php");
            include("menu.php");
            include("main.php");
            include("footer.php");
        ?>      
    </div>
</body>
</html>