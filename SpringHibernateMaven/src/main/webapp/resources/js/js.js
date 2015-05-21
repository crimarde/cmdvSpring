/*
 * Archivo de confcuración de javascript
 */

function redirige(id){
	window.location = 'edit?id='+id;
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
});