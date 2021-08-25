$(document).ready(function(){
	$(".summernote").summernote({
		height: "200",
		callbacks: {
		    onKeydown: function(e) {
				var limiteCaracteres = 255;
				var caracteres = $(".note-editable").text();
				var totalCaracteres = caracteres.length;
                var div = document.createElement("div");
                div.id = "total-caracteres";
                document.getElementById("id_body_iframe").appendChild(div);
				//Update value
				$("#total-caracteres").text(totalCaracteres);
					      
		    }
		}					
	});
});