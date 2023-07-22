//formulario para crear persona
$("#gestionarInfoPersona").on('submit', function(e){
    e.preventDefault();
    var valor = true;
    //Definimos el botón que activa la función
    var boton = "btn-agregar-usuario";
    //Extraemos las variable según los valores del campo consultado
    var persona_nombre = $('#persona_nombre').val();
    var persona_apellido_paterno = $('#persona_apellido_paterno').val();
    var persona_apellido_materno = $('#persona_apellido_materno').val();
    var persona_nacimiento = $('#persona_nacimiento').val();
    var persona_telefono = $('#persona_telefono').val();

    //Validamos si los campos a usar no se encuentran vacios
    valor = validar_campo_vacio('persona_nombre', persona_nombre, valor);
    valor = validar_campo_vacio('persona_apellido_paterno', persona_apellido_paterno, valor);
    valor = validar_campo_vacio('persona_apellido_materno', persona_apellido_materno, valor);
    valor = validar_campo_vacio('persona_nacimiento', persona_nacimiento, valor);
    valor = validar_campo_vacio('persona_telefono', persona_telefono, valor);

    //Si var valor no ha cambiado de valor, procedemos a hacer la llamada de ajax
    if(valor){
        //Cadena donde enviaremos los parametros por POST
        $.ajax({
            type: "POST",
            url: urlweb + "api/persona/guardar_nueva_persona",
            data: new FormData(this),
            contentType: false,
            cache: false,
            processData:false,
            dataType: 'json',
            beforeSend: function () {
                cambiar_estado_boton(boton, 'Guardando...', true);
            },
            success:function (r) {
                cambiar_estado_boton(boton, "<i class=\"fa fa-save fa-sm text-white-50\"></i> Guardar", false);
                switch (r.result.code) {
                    case 1:
                        respuesta('¡Usuario guardado! Recargando...', 'success');
                        setTimeout(function () {
                            location.reload();
                        }, 1000);
                        break;
                    case 2:
                        respuesta('Error al guardar usuario', 'error');
                        break;
                    default:
                        respuesta('¡Algo catastrofico ha ocurrido!', 'error');
                        break;
                }
            }
        });
    }
});
//se limpia el modal cada que se presiona en agregar nuevo
function agregacion_persona(){
    $('#id_persona').val("");
    $('#persona_nombre').val("");
    $('#persona_apellido_paterno').val("");
    $('#persona_apellido_materno').val("");
    $('#persona_nacimiento').val("");
    $('#persona_telefono').val("");
}
//eliminar persona que no tenga usuario
/*function preguntar_eliminar_persona(id_person){
    preguntar('¡Eliminar Persona, ¿Esta seguro que desea eliminar esta persona?', eliminar_persona(id_person)
        , function(){ respuesta('Error al eliminar persona', 'error');});
}*/
function eliminar_persona(id_persona){
    var valor = true;
    //Validamos si los campos a usar no se encuentran vacios
    valor = validar_parametro_vacio(id_persona, valor);
    //Si var valor no ha cambiado de valor, procedemos a hacer la llamada de ajax
    if(valor){
        //Definimos el mensaje y boton a afectar
        var mensaje_previo = "Eliminando...";
        var mensaje_posterior = "Eliminar Persona";
        var boton = "btn-eliminarpersona" + id_persona;

        //Cadena donde enviaremos los parametros por POST
        var cadena = "id_persona=" + id_persona;
        $.ajax({
            type: "POST",
            url: urlweb + "api/persona/eliminar_persona",
            data: cadena,
            dataType: 'json',
            beforeSend: function () {
                cambiar_estado_boton(boton, mensaje_previo, true);
            },
            success:function (r) {
                cambiar_estado_boton(boton, mensaje_posterior, false);
                switch (r.result.code) {
                    case 1:
                        respuesta('¡Esta Persona fue Elimina Exitosamente!', 'success');
                        location.reload();
                        break;
                    case 2:
                        respuesta('Error al Eliminar', 'error');
                        break;
                    default:
                        respuesta('¡Algo catastrofico ha ocurrido!', 'error');
                        break;
                }
            }
        });
    }
}