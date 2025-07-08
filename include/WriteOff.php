<?php
    include('connect_db.php');

    $ID = $_POST['id'];
    $date = new DateTime();
    $date->modify('+1 hours');
    $sql = "UPDATE catriges SET status_catrige = 'Списано' WHERE id = ".$ID;
    mysqli_query($mysql, $sql);
    $sql = "INSERT INTO history_catriges (id_catrige, status_catrige, date_time) VALUES (".$ID.", 'Списано', '".$date->format('Y-m-d H:i:s')."')";
    mysqli_query($mysql, $sql);
    header('Location: ../home.php');
?>