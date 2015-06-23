$(function(){

	$("#new_drink").submit(function(event){
		event.preventDefault();

		var drink_name = $("#drink_name").val();

		var directions = $("#drink_directions").val();

		var picture = $("#drink_picture").val();

		drinkCreation(drink_name, directions, picture);

	});


	function drinkCreation(drink_name, directions, picture){

		$.ajax({
			type: "post",
			url: "/drinks",
			dataType: "JSON",
			data: {
				name: drink_name,
				directions: directions,
				picture: picture
			},

			success: function(data, textStatus, jqXHR){

				var html = "<li>"+drink_name+"</li>"+"<li>"+drink_directions+"</li>"+"<li>"+drink_picture+"</li>";
				$("#results").prepend(html);

			},
			error: function(jqXHR, textStatus, errorThrown){
				alert("ERROR");
			}

		});
	}
});

