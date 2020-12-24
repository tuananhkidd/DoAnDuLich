<?php
//$con = mysqli_connect('localhost', 'username', 'password', 'database');
	$con = mysqli_connect("localhost","id14138645_andyphuong", "Nguyenphuong-0908", "id14138645_andyphuong");
	mysqli_select_db($con,"id14138645_andyphuong");
	//mysqli_query($con,"SET NAMES 'utf8'");
	

$foodcantho = mysqli_query($con,"SELECT * FROM food" ); 

//	echo mysqli_num_rows($hotelcantho); // in ra số hàng trong bảng
$mang = array();
$mangStr = array();
while($row = mysqli_fetch_array($foodcantho)){
	//echo '<br>name'.$row["food_name"];
		$food_name = $row["food_name"];
		$food_address = $row["food_address"];
		$food_detail = $row["food_detail"];
		$food_image    = $row["food_image"];
	

	array_push($mang, new Food($food_name, $food_address , $food_detail, $food_image));	
}

echo json_encode($mang); //mảng cần chuyển qua json

class Food{
	var $name;
	var $address;
	var $detail;
	var $image;
	
	function __construct($n, $a, $d, $i){
		$this->name = $n;
		$this->address = $a;
		$this->detail =$d;
		$this->image = $i;
	}	
}
?>
