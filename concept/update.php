<?php
include 'DBHelper.php';
//hotel
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
//end hotel

//place
if(count($_POST)>0){
	if($_POST['type']==5){
		$id=$_POST['id'];
		$name=$_POST['name'];
		$address=$_POST['address'];
		$detail=$_POST['detail'];
		$sql = "UPDATE place SET `place_name`= '$name',`place_address` = '$address',`place_detail` = '$detail' WHERE id=$id";
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
	if($_POST['type']==4){
		$name=$_POST['name'];
		$address=$_POST['address'];
		$detail=$_POST['detail'];
		$sql = "INSERT INTO place ( `place_name`, `place_address`,`place_detail`,`place_image`) 
		VALUES ('$name','$address','$detail','https://ezcloud.vn/wp-content/uploads/2019/03/kinh-doanh-khach-san-1.jpg')";
		if (mysqli_query($con, $sql)) {
			echo json_encode(array("statusCode"=>200));
		} 
		else {
			echo json_encode(array("statusCode"=>201));
		}
		mysqli_close($con);
	}
}
//end place

//food
if(count($_POST)>0){
	if($_POST['type']==7){
		$id=$_POST['id'];
		$name=$_POST['name'];
		$address=$_POST['address'];
		$detail=$_POST['detail'];
		$sql = "UPDATE food SET `food_name`= '$name',`food_address` = '$address',`food_detail` = '$detail' WHERE id=$id";
		if (mysqli_query($con, $sql)) {
			echo json_encode(array("statusCode"=>200));
		} 
		else {
			// echo "Error: " . $sql . "<br>" . mysqli_error($conn);
			echo json_encode(array("statusCode"=>500));
			// console.log(mysqli_error($con))
		}
		mysqli_close($con);
	}
}

if(count($_POST)>0){
	if($_POST['type']==8){
		$name=$_POST['name'];
		$address=$_POST['address'];
		$detail=$_POST['detail'];
		$sql = "INSERT INTO food ( `food_name`, `food_address`,`food_detail`,`food_image`) 
		VALUES ('$name','$address','$detail','https://ezcloud.vn/wp-content/uploads/2019/03/kinh-doanh-khach-san-1.jpg')";
		if (mysqli_query($con, $sql)) {
			echo json_encode(array("statusCode"=>200));
		} 
		else {
			echo json_encode(array("statusCode"=>500));
		}
		mysqli_close($con);
	}
}

//end food

?>