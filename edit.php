<?php
require 'connect.php';
$item_id = $_GET['item_id'];
$sql = 'SELECT * FROM item_tbl WHERE item_id=:item_id';
$statement = $connection->prepare($sql);
$statement->execute([':item_id' => $item_id ]);
$item_tbl = $statement->fetch(PDO::FETCH_OBJ);
if (isset ($_POST['item_name']) && isset($_POST['cost']) && isset($_POST['enter_date']) && isset($_POST['serial_number'])) {
  $item_name = $_POST['item_name'];
  $cost = $_POST['cost'];
  $enter_date = $_POST['enter_date'];
  $serial_number = $_POST['serial_number'];

 $sql = 'UPDATE item_tbl SET item_name=:item_name, cost=:cost, enter_date=:enter_date, serial_number=:serial_number WHERE item_id=:item_id';
  $statement = $connection->prepare($sql);
  if ($statement->execute([':item_name' => $item_name, ':cost' => $cost,  ':enter_date' => $enter_date, ':serial_number' => $serial_number, ':item_id' => $item_id])) {
    header("Location: manageitem.php");
  }

}
 
 ?>
<?php require 'header1.php'; ?>
<div class="container">
  <div class="card mt-5">
    <div class="card-header">
      <h2>Update any item you want!!!!!</h2>
    </div>
    <div class="card-body">
      <?php if(!empty($message)): ?>
        <div class="alert alert-success">
          <?= $message; ?>
        </div>
      <?php endif; ?>
      <form method="post">
        <div class="form-group">
          <label for="item_name">Name_item</label>
          <input value="<?= $item_tbl->item_name; ?>" type="text" name="item_name" id="item_name" class="form-control">
        </div>
        <div class="form-group">
          <label for="cost">cost</label>
          <input type="text"  value="<?=$item_tbl->cost; ?>" name="cost" id="cost" class="form-control">
        </div>
        <div class="form-group">
          <label for="enter_date">enter_date</label>
          <input type="text" value="<?= $item_tbl->enter_date; ?>"  name="enter_date" id="enter_date" class="form-control">
        </div>
        <div class="form-group">
          <label for="serial_number">serial_number</label>
          <input type="text" value="<?= $item_tbl->serial_number; ?>"  name="serial_number" id="serial_number" class="form-control">
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-info">update item</button>
        </div>
      </form>
    </div>
  </div>
</div>