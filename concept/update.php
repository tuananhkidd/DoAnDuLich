<?php
include 'DBHelper.php';
if(count($_POST)>0){
	if($_POST['type']==2){
		$id=$_POST['id'];
		$name=$_POST['name'];
		$address=$_POST['address'];
		$phone=$_POST['phone'];
		$category=$_POST['category'];
		$sql = "UPDATE hotel SET `hotel_name`= '$name',`hotel_address` = '$address',`hotel_numberphone` = '$phone',`hotel_categorie` = '$category' WHERE hotel_id=$id";
		if (mysqli_query($con, $sql)) {
			echo json_encode(array("statusCode"=>200));
		} 
		else {
			// echo "Error: " . $sql . "<br>" . mysqli_error($conn);
			echo json_encode(array("statusCode"=>201));
			// console.log(mysqli_error($con))
		}
		mysqli_close($con);
	}
}

if(count($_POST)>0){
	if($_POST['type']==1){
		$name=$_POST['name'];
		$address=$_POST['address'];
		$phone=$_POST['phone'];
		$category=$_POST['category'];
		$sql = "INSERT INTO hotel ( `hotel_name`, `hotel_address`,`hotel_numberphone`,`hotel_categorie`,`hotel_image`) 
		VALUES ('$name','$address','$phone','$category','https://ezcloud.vn/wp-content/uploads/2019/03/kinh-doanh-khach-san-1.jpg')";
		if (mysqli_query($con, $sql)) {
			echo json_encode(array("statusCode"=>200));
		} 
		else {
			echo json_encode(array("statusCode"=>201));
		}
		mysqli_close($con);
	}
}


?>