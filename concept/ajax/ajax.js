
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