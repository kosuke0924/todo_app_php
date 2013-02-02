<?php

require_once('config.php');
require_once('functions.php');

// DBに接続
$dbh = connectDb();

$sql = "UPDATE tasks SET title = :title, modified = now() WHERE id = :id";
$stmt = $dbh->prepare($sql);
$stmt->execute(array(
    ":id" => (int)$_POST['id'],
    ":title" => $_POST['title']
));
