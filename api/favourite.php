<?php
	include '../concept/DBHelper.php';
	/** Array for JSON response*/
	date_default_timezone_set('Asia/Ho_Chi_Minh');
	$response = array();
	if($_SERVER['REQUEST_METHOD']=='POST'){
		$userId = $_POST['user_id'];
		$placeId = $_POST['place_id'];
		$currentDate = date("Y-m-d H:i:s");
		$sql = "INSERT INTO favourite_place (user_id,place_id,created_date) VALUES ('$userId', '$placeId', '$currentDate')";
		$result = mysqli_query($con, $sql);
		if($result){
			$response["success"] = 1;
			$response["message"] = "Thành công";
		}else{
			$response["success"] = 0;
			$response["message"] = "Thất bại";
		}
		
		echo json_encode($response);
	} 
?>
