
$("#test").click(function() {
	$.ajax({
		type : "POST",
		async:true,
		url : "setStudent",
		dataType:"text",
		data : "name="+$("#name").val()+"&age="+$("#age").val(),

		success : function(data) {
			$("#result").text("SUCCESS");
		},
		error : function(data) {
			$("#result").text("FAILURE");
		}
	});
});
