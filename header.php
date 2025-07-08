<?php
    include('include/connect_db.php');
    session_start();
    if(empty($_SESSION['FNAME']))
    {
        header('Location: index.php');
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Document</title>
</head>
<body>
    <header style="min-height: 100px;">
        <div class="logo">
            <img src='./img/logo.png' alt='ТОВ фірма Грона'>
        </div>
        <div class="top_menu">
            <ul>
                <li><a class='btn' href="#"><?php echo $_SESSION['FNAME'].' '.$_SESSION['LNAME'];?></a></li>
                <li><a class='btn' href="home.php">Головна</a></li>
                <li><a class='btn' href="catrige.php">Картриджі</a></li>
                <li><a class='btn' href="history.php">Історія</a></li>
                <li><a class='btn' href="index.php">Вихід</a></li>
            </ul>
        </div>
    </header>
    <script src='js/TopMenuActive.js'></script>