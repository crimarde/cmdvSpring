/*
 * Archivo de confcuración de javascript
 */

function redirige(id,nombre,ape,email,tel){
	alert("El nombre es: " + nombre);
	window.location = 'edit?id='+id+'&firstName='+nombre+'&lastName='+ape+'&email='+email+'&phone='+tel;
}

function eliminar(id){
	window.location = 'delete?id='+id;
}

function add(){
	window.location = 'form';
}

function formReset(event) {
	var obj = $('input:valid');
	$.each(obj,function(){
		if($(this).val() != 'Actualizar'){
			$(this).val('');
		}
	});
}

$(document).ready(function(){
	$("p").click(function(){
        $(this).hide();
    });
	
	$('#registerForm').on('submit',function(event){
		//event.preventDefault();
		$.get('./check',{firstName:$('#firstName').val(), lastName:$('#lastName').val(), email:$('#email').val(), phone:$('#phone').val()}, function (data){
			if(data){
				alert("Es un true");
				// Hace el submit
				return true;
			}else{
				alert("No se puede registar, ya existe");
				return false;
			}
		});
	});
});