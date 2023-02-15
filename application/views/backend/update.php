<?php
$newValue = $_POST["newst"];

$sql = "UPDATE medicine SET instock = '$newValue' WHERE id = 1";

if ($conn->query($sql) === TRUE) {
  echo "Record updated successfully";
} else {
  echo "Error updating record: " . $conn->error;
}

?>
