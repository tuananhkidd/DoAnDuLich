//place
$(document).on('click','.update_place',function(e) {
	var id=$(this).attr("data-id");
	var name=$(this).attr("data-name");
	var address=$(this).attr("data-address");
	var detail=$(this).attr("data-detail");
	$('#id_u').val(id);
	$('#name_u').val(name);
	$('#address_u').val(address);
	$('#detail_u').val(detail);
});

$(document).on('click','#update_place',function(e) {
	var data = $("#update_form").serialize();
	$.ajax({
		data: data,
		type: "post",
		url: "update.php",
		success: function(dataResult){
			var dataResult = JSON.parse(dataResult);
			if(dataResult.statusCode==200){
				$('#editPlace').modal('hide');
				alert('Data updated successfully !'); 
				location.reload();						
			}
			else if(dataResult.statusCode==201){
				alert(dataResult);
			}
		}
	});
});


$(document).on("click", ".delete_place", function() { 
	var id=$(this).attr("data-id");
	$('#id_d').val(id);
	
});
$(document).on("click", "#delete_place", function() { 
	$.ajax({
		url: "delete.php",
		type: "POST",
		cache: false,
		data:{
			type:6,
			id: $("#id_d").val()
		},
		success: function(dataResult){
			$('#deletePlace').modal('hide');
			$("#"+dataResult).remove();
			alert('Xóa thành công'); 
			location.reload();	
		}
	});
});

$(document).on('click','#btn-add-place',function(e) {
	var data = $("#user_form").serialize();
	$.ajax({
		data: data,
		type: "post",
		url: "update.php",
		success: function(dataResult){
			var dataResult = JSON.parse(dataResult);
			if(dataResult.statusCode==200){
				$('#addPlace').modal('hide');
				alert('Data added successfully !'); 
				location.reload();						
			}
			else if(dataResult.statusCode==201){
				alert(dataResult);
			}
		}
	});
});


//end place

//Hotel
$(document).on("click", ".delete", function() { 
	var id=$(this).attr("data-id");
	$('#id_d').val(id);
	
});
$(document).on("click", "#delete", function() { 
	$.ajax({
		url: "delete.php",
		type: "POST",
		cache: false,
		data:{
			type:3,
			id: $("#id_d").val()
		},
		success: function(dataResult){
			$('#deleteHotel').modal('hide');
			$("#"+dataResult).remove();
			alert('Xóa thành công'); 
			location.reload();	
		}
	});
});


$(document).on('click','.update',function(e) {
	var id=$(this).attr("data-id");
	var name=$(this).attr("data-name");
	var address=$(this).attr("data-address");
	var phone=$(this).attr("data-phone");
	var category=$(this).attr("data-category");
	$('#id_u').val(id);
	$('#name_u').val(name);
	$('#address_u').val(address);
	$('#phone_u').val(phone);
	$('#category_u').val(category);
});

$(document).on('click','#update',function(e) {
	var data = $("#update_form").serialize();
	$.ajax({
		data: data,
		type: "post",
		url: "update.php",
		success: function(dataResult){
			var dataResult = JSON.parse(dataResult);
			if(dataResult.statusCode==200){
				$('#editHotel').modal('hide');
				alert('Data updated successfully !'); 
				location.reload();						
			}
			else if(dataResult.statusCode==201){
				alert(dataResult);
			}
		}
	});
});

$(document).on('click','#btn-add',function(e) {
	var data = $("#user_form").serialize();
	$.ajax({
		data: data,
		type: "post",
		url: "update.php",
		success: function(dataResult){
			var dataResult = JSON.parse(dataResult);
			if(dataResult.statusCode==200){
				$('#addHotel').modal('hide');
				alert('Data added successfully !'); 
				location.reload();						
			}
			else if(dataResult.statusCode==201){
				alert(dataResult);
			}
		}
	});
});
//end hotel

//food
$(document).on('click','.update_food',function(e) {
	var id=$(this).attr("data-id");
	var name=$(this).attr("data-name");
	var address=$(this).attr("data-address");
	var detail=$(this).attr("data-detail");
	$('#id_u').val(id);
	$('#name_u').val(name);
	$('#address_u').val(address);
	$('#detail_u').val(detail);
});

$(document).on('click','#update_food',function(e) {
	var data = $("#update_form").serialize();
	$.ajax({
		data: data,
		type: "post",
		url: "update.php",
		success: function(dataResult){
			var dataResult = JSON.parse(dataResult);
			if(dataResult.statusCode==200){
				$('#editFood').modal('hide');
				alert('Data updated successfully !'); 
				location.reload();						
			}
			else if(dataResult.statusCode==201){
				alert(dataResult);
			}
		}
	});
});


$(document).on("click", ".delete_food", function() { 
	var id=$(this).attr("data-id");
	$('#id_d').val(id);
	
});
$(document).on("click", "#delete_food", function() { 
	$.ajax({
		url: "delete.php",
		type: "POST",
		cache: false,
		data:{
			type:9,
			id: $("#id_d").val()
		},
		success: function(dataResult){
			$('#deleteFood').modal('hide');
			$("#"+dataResult).remove();
			alert('Xóa thành công'); 
			location.reload();	
		}
	});
});

$(document).on('click','#btn-add-food',function(e) {
	var data = $("#user_form").serialize();
	$.ajax({
		data: data,
		type: "post",
		url: "update.php",
		success: function(dataResult){
			var dataResult = JSON.parse(dataResult);
			if(dataResult.statusCode==200){
				$('#addFood').modal('hide');
				alert('Data added successfully !'); 
				location.reload();						
			}
			else if(dataResult.statusCode==500){
				alert(dataResult);
			}
		}
	});
});
//end food