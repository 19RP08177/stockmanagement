<?php
require 'connect.php';
$item_id = $_GET['item_id'];
$sql = 'DELETE FROM item_tbl WHERE item_id=:item_id';
$statement = $connection->prepare($sql);
if ($statement->execute([':item_id' => $item_id])) {
  header("Location: manageitem.php");
}