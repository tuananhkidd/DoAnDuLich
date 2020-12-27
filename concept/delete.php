<?php
include 'DBHelper.php';
if(count($_POST)>0){
	if($_POST['type']==3){
		$id=$_POST['id'];
		$sql = "DELETE FROM hotel WHERE hotel_id=$id";
		if (mysqli_query($con, $sql)) {
			echo $id;
		} 
		else {
			echo "Error: " . $sql . "<br>" . mysqli_error($con);
		}
		mysqli_close($con);
	}
}

if(count($_POST)>0){
	if($_POST['type']==6){
		$id=$_POST['id'];
		$sql = "DELETE FROM place WHERE id=$id";
		if (mysqli_query($con, $sql)) {
			echo $id;
		} 
		else {
			echo "Error: " . $sql . "<br>" . mysqli_error($con);
		}
		mysqli_close($con);
	}
}

if(count($_POST)>0){
	if($_POST['type']==9){
		$id=$_POST['id'];
		$sql = "DELETE FROM food WHERE id=$id";
		if (mysqli_query($con, $sql)) {
			echo $id;
		} 
		else {
			echo "Error: " . $sql . "<br>" . mysqli_error($con);
		}
		mysqli_close($con);
	}
}
?>