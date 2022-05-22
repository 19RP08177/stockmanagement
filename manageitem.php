<?php
require 'connect.php';
$sql = 'SELECT * FROM item_tbl';
$statement = $connection->prepare($sql);
$statement->execute();
$item_tbl= $statement->fetchAll(PDO::FETCH_OBJ);
 ?>
<?php require 'header1.php'; ?><br>
<?php require 'header2.php'; ?>

<div class="container">
  <div class="card mt-5">
    <div class="card-header">
     <center> <h2>All ITEMS STORED </h2></center>
    </div>
    <div class="card-body">
      <table class="table table-bordered">
        <tr>
          <th>ID</th>
          <th>Name_item</th>
          <th>cost</th>
          <th>enter_date</th>
          <th>serial number</th> 
          <th>Action</th>

        </tr>
        <?php foreach($item_tbl as $st): ?>
          <tr>
            <td><?= $st->item_id; ?></td>
            <td><?= $st->item_name; ?></td>
            <td><?= $st->cost; ?></td>
            <td><?= $st->enter_date; ?></td>
            <td><?= $st->serial_number; ?></td>
            <td>
              <a href="edit.php?item_id=<?= $st->item_id ?>" class="btn btn-info">Edit</a>
              <a onclick="return confirm('Are you sure you want to delete this entry?')" href="delete.php?item_id=<?= $st->item_id ?>" class='btn btn-danger'>Remove</a>
            </td>
          </tr>
        <?php endforeach; ?>
      </table>
     <!-- <center><a href="login.php"><B><H1> LOGOUT <H1></B></a> </center>-->
    </div>
  </div>
</div>
