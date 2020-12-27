<?php
	include '../concept/DBHelper.php';
	/** Array for JSON response*/
	date_default_timezone_set('Asia/Ho_Chi_Minh');
	$response = array();
	if($_SERVER['REQUEST_METHOD']=='POST'){
		$user_name = $_POST['user_name'];
		$password = $_POST['password'];
		$device = $_POST['device'];
		$sql = "SELECT user_id,user_name, email FROM account WHERE user_name = '$user_name' AND password='$password' AND role = 'USER'";
		if(mysqli_num_rows(@mysqli_query($con,$sql)) > 0){
			    $result= mysqli_query($con,$sql);
                $row = mysqli_fetch_array($result);
				$user_name = $row["user_name"];
				$email = $row["email"];
				
				$response["success"] = 1;
				$response["message"] = "Đăng nhập thành công";
				$response["user_name"] = $user_name;
				$response["email"] = $email;
				$response["id"] = $row["user_id"];
				$currentDate = date("Y-m-d H:i:s");
				$userId = $row['user_id'];
				$sql = "INSERT INTO user_log (user_id,device,created_date) VALUES ('$userId', '$device', '$currentDate')";
				mysqli_query($con, $sql);
		}else{
			$response["success"] = 0;
			$response["message"] = "Đăng nhập thất bại.";
		}
		
		echo json_encode($response);
	} 
?>
