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
	
	$('#registerForm').on('submit',function(event){
		event.preventDefault();
		$.get('./check',
				//{firstName:$('#firstName').val(), lastName:$('#lastName').val(), email:$('#email').val(), phone:$('#phone').val()}, 
				{$('#registerForm').serialize()}, 

				function (data){
					if(data){
						alert("No se puede registar, ya existe");
						return false;
					}else{
						alert("Se puede registar");
						$('#registerForm').off('submit').submit();
						return true;
					}
				});
	});
});