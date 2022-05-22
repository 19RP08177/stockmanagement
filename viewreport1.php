<?php
require 'connect.php';
$sql = 'SELECT * FROM person,item_tbl WHERE person.item_id=item_tbl.item_id and status=0';
$statement = $connection->prepare($sql);
$statement->execute();
$item_tbl= $statement->fetchAll(PDO::FETCH_OBJ);
 ?>
<?php require 'header1.php'; ?><br>
<?php require 'header2.php'; ?>

<div class="container">
  <div class="card mt-5">
    <div class="card-header">
     <center> <h2>Borrowed Items </h2></center>
    </div>
    <div class="card-body">
      <table class="table table-bordered">
        <tr>
          <th>FullName</th>
          <th>PhoneNumber</th>
          <th>ItemName</th>
          <th>serial number</th> 
          <th>Borrow date</th>
          <th>Action</th>

        </tr>
        <?php foreach($item_tbl as $st): ?>
          <tr>
            <td><?= $st->fullname; ?></td>
            <td><?= $st->phonenumber; ?></td>
            <td><?= $st->item_name; ?></td>
            <td><?= $st->serial_number; ?></td>
            <td><?= $st->borrowdate; ?></td>
            <td>
            <a onclick="return confirm('Are you sure you want to delete this entry?')" href="delete.php?id=<?= $st->id ?>" class='btn btn-danger'>Remove </a>
            </td>
          </tr>
        <?php endforeach; ?>
      </table>
     <!-- <center><a href="login.php"><B><H1> LOGOUT <H1></B></a> </center>-->
    </div>
  </div>
</div>
