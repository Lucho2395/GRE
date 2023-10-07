
//CONSULTAR DATOS CLIENTE

function consultar_documento(valor, client_name, client_address){
    var tipo_doc = $('#select_tipodocumento').val();
    $.ajax({
        type: "POST",
        url: urlweb + "api/Cliente/obtener_datos_x_dni",
        data: "numero="+valor,
        dataType: 'json',
        success:function (r) {
            if(r.result.resultado == 1){
                $("#"+client_name).val(r.result.name);
                $("#"+client_address).val(r.result.direccion);
            }else{
                if(tipo_doc == "2"){
                    ObtenerDatosDni(valor, client_name, client_address);
                }else if(tipo_doc == "4"){
                    if(valor.length == 11){
                        ObtenerDatosRuc(valor, client_name, client_address)
                    }else{
                        respuesta('¡El RUC tiene que teer 11 dígitos!', 'error');
                        $("#"+client_name).val('');
                        $("#"+client_address).val('');
                    }
                }
            }
        }
    });
}

function ObtenerDatosDni(valor, client_name, client_address){
    var numero_dni =  valor;

    cambiar_estado_boton('cliente_nombre', 'buscando...', true);
    var formData = new FormData();
    formData.append("token", "WNxcDmZ1Nftc1QeJcSHpDgdaW5ynN9gL8t2VQvjAQGBYt4HcUlPzxvf03c4c");
    formData.append("dni", numero_dni);
    var request = new XMLHttpRequest();
    request.open("POST", "https://api.migo.pe/api/v1/dni");
    request.setRequestHeader("Accept", "application/json");
    request.send(formData);
    //$('.loader').show();
    request.onload = function() {
        var data = JSON.parse(this.response);
        if(data.success){
            //$('.loader').hide();
            console.log("Datos Encontrados");
            cambiar_estado_boton('cliente_nombre', "", false);
            //$('#cotizacion_beneficiario').val(data.nombre);
            $("#"+client_name).val(data.nombre);
            //$('#cliente_direccion').val('');
            //$('#cliente_condicion').val("HABIDO");
        }else{
            //$('.loader').hide();
            console.log(data.message);
        }
    };
}
function ObtenerDatosRuc(valor, client_name, client_address){
    var numero_ruc =  valor;

    cambiar_estado_boton('cliente_nombre', 'buscando...', true);
    cambiar_estado_boton('cliente_direccion', 'buscando...', true);
    var formData = new FormData();
    formData.append("token", "WNxcDmZ1Nftc1QeJcSHpDgdaW5ynN9gL8t2VQvjAQGBYt4HcUlPzxvf03c4c");
    formData.append("ruc", numero_ruc);
    var request = new XMLHttpRequest();
    request.open("POST", "https://api.migo.pe/api/v1/ruc");
    request.setRequestHeader("Accept", "application/json");
    request.send(formData);
    $('.loader').show();
    request.onload = function() {
        var data = JSON.parse(this.response);
        if(data.success){
            //$('.loader').hide();
            console.log("Datos Encontrados");
            cambiar_estado_boton('cliente_nombre', "", false);
            cambiar_estado_boton('cliente_direccion', "", false);
            //$('#cotizacion_beneficiario').val(data.nombre_o_razon_social);
            $("#"+client_name).val(data.nombre_o_razon_social);
            $("#"+client_address).val(data.direccion);
        }else{
            //$('.loader').hide();
            console.log(data.message);
        }
    };
    /*$.ajax({
        type: "POST",
        url: urlweb + "api/Cliente/obtener_datos_x_ruc",
        data: "numero_ruc="+numero_ruc,
        dataType: 'json',
        success:function (r) {
            $("#client_name").val(r.result.razon_social);
        }
    });*/
}

function agregar_cliente(){
    let boton = 'btn_guardar_cliente';
    let valor = true;
    let id_tipodocumento = $('#id_tipodocumento').val();
    let cliente_numero = $('#cliente_numero').val();
    let cliente_direccion = $('#cliente_direccion').val();
    let cliente_telefono = $('#cliente_telefono').val();
    let cliente_razonsocial = ''
    if(id_tipodocumento == 4){
        cliente_razonsocial = $('#cliente_razonsocial').val();
        valor = validar_campo_vacio('cliente_razonsocial', cliente_razonsocial, valor);
    }else{
        cliente_razonsocial = $('#cliente_nombre').val();
        valor = validar_campo_vacio('cliente_nombre', cliente_nombre, valor);
    }
    valor = validar_campo_vacio('id_tipodocumento', id_tipodocumento, valor);
    valor = validar_campo_vacio('cliente_numero', cliente_numero, valor);
    valor = validar_campo_vacio('cliente_direccion', cliente_direccion, valor);

    //Si var valor no ha cambiado de valor, procedemos a hacer la llamada de ajax
    if(valor) {
        $.ajax({
            type: "POST",
            url: urlweb + "api/Cliente/guardar_cliente",
            data: {
                "id_tipodocumento" : id_tipodocumento,
                "cliente_numero" : cliente_numero,
                "cliente_razonsocial" : cliente_razonsocial ,
                "cliente_direccion" : cliente_direccion ,
                "cliente_telefono" : cliente_telefono
            },
            dataType: 'json',
            beforeSend: function () {
                cambiar_estado_boton(boton, 'Guardando...', true);
            },
            success: function (r) {
                //cambiar_estado_boton(boton, "<i class=\"fa fa-save fa-sm text-white-50\"></i> Guardar", false);
                switch (r.result.code) {
                    case 1:
                        respuesta('¡Cliente guardado! Recargando...', 'success');
                        location.reload()
                        break;
                    case 2:
                        respuesta('Error al guardar Cliente, vuelva a intentarlo', 'error');
                        break;
                    case 5:
                        respuesta('El DNI ya se encuentra registrado', 'error');
                        $('#cliente_numero').css('border', 'solid red');
                        break;
                    default:
                        respuesta('¡Algo catastrofico ha ocurrido!', 'error');
                        break;
                }
            }
        });
    }
}
function editar_cliente(){
    let boton = 'btn-editar-cliente';
    let valor = true;
    let id_cliente = $('#id_cliente').val();
    let id_tipodocumento = $('#id_tipodocumento_e').val();
    let cliente_numero = $('#cliente_numero_e').val();
    let cliente_direccion = $('#cliente_direccion_e').val();
    let cliente_telefono = $('#cliente_telefono_e').val();
    let cliente_razonsocial = ''
    if(id_tipodocumento == 6){
        cliente_razonsocial = $('#cliente_razonsocial_e').val();
        valor = validar_campo_vacio('cliente_razonsocial', cliente_razonsocial, valor);
    }else{
        cliente_razonsocial = $('#cliente_nombre_e').val();
        valor = validar_campo_vacio('cliente_nombre', cliente_nombre, valor);
    }
    valor = validar_campo_vacio('id_tipodocumento', id_tipodocumento, valor);
    valor = validar_campo_vacio('cliente_numero', cliente_numero, valor);
    valor = validar_campo_vacio('cliente_direccion', cliente_direccion, valor);

    //Si var valor no ha cambiado de valor, procedemos a hacer la llamada de ajax
    if(valor) {
        $.ajax({
            type: "POST",
            url: urlweb + "api/Cliente/guardar_cliente",
            data: {
                "id_cliente" : id_cliente,
                "id_tipodocumento" : id_tipodocumento,
                "cliente_numero" : cliente_numero,
                "cliente_razonsocial" : cliente_razonsocial ,
                "cliente_direccion" : cliente_direccion ,
                "cliente_telefono" : cliente_telefono
            },
            dataType: 'json',
            beforeSend: function () {
                cambiar_estado_boton(boton, 'Guardando...', true);
            },
            success: function (r) {
                cambiar_estado_boton(boton, "<i class=\"fa fa-save fa-sm text-white-50\"></i> Guardar", false);
                switch (r.result.code) {
                    case 1:
                        respuesta('¡Cliente guardado! Recargando...', 'success');
                        location.reload()
                        break;
                    case 2:
                        respuesta('Error al guardar Cliente, vuelva a intentarlo', 'error');
                        break;
                    case 5:
                        respuesta('El DNI ya se encuentra registrado', 'error');
                        $('#cliente_numero').css('border', 'solid red');
                        break;
                    default:
                        respuesta('¡Algo catastrofico ha ocurrido!', 'error');
                        break;
                }
            }
        });
    }
}
$("#gestionarInfoCliente").on('submit', function(e){
    e.preventDefault();
    var valor = true;
    var id_tipodocumento = $('#id_tipodocumento').val();
    var cliente_numero = $('#cliente_numero').val();
    var cliente_nombre = $('#cliente_nombre').val();
    var cliente_razonsocial = $('#cliente_razonsocial').val();
    var cliente_direccion = $('#cliente_direccion').val();
    var cliente_telefono = $('#cliente_telefono').val();

    if(id_tipodocumento == 6){
        valor = validar_campo_vacio('cliente_razonsocial', cliente_razonsocial, valor);
    }else{
        valor = validar_campo_vacio('cliente_nombre', cliente_nombre, valor);
    }
    valor = validar_campo_vacio('id_tipodocumento', id_tipodocumento, valor);
    valor = validar_campo_vacio('cliente_numero', cliente_numero, valor);
    valor = validar_campo_vacio('cliente_direccion', cliente_direccion, valor);
    if (valor){
        let formData = new FormData(this);
        //formData.append('arr_correo', JSON.stringify(arr_correos));
        $.ajax({
            type:"POST",
            url: urlweb + "api/Cliente/guardar_cliente",
            data: formData,
            contentType: false,
            cache: false,
            processData:false,
            dataType: 'json',
            beforeSend: function () {
                $("#btn-cliente-agregar").html("Cargando...");
                $("#btn-cliente-agregar").attr("disabled", true);
            },
            success:function (r) {
                $("#btn-cliente-agregar").attr("disabled", false);
                $("#btn-cliente-agregar").html("Agregar Cliente");
                switch (r.result.code) {
                    case 1:
                        alertify.success("¡Guardado!");
                        setTimeout(function () {
                            location.href = urlweb +  'Cliente/listar';
                        }, 400);
                        break;
                    case 2:
                        alertify.error("Fallo el envio");
                        break;
                    case 6:
                        alertify.error("Algún dato fue ingresado de manera erronéa. Recargue la página por favor.");
                        break;
                    case 7:
                        alertify.error("El Cliente con este RUC/DNI ya existe.");
                        break;
                    default:
                        alertify.error("ERROR DESCONOCIDO");
                }
            }
        });

    }
});
$("#formClienteEdit").on('submit', function(e){
    e.preventDefault();
    var valor = true;
    var cliente_nombre = $('#cliente_nombre').val();
    var cliente_ruc = $('#cliente_ruc').val();
    var cliente_direccion = $('#cliente_direccion').val();
    valor = validar_campo_vacio('cliente_nombre', cliente_nombre, valor);
    valor = validar_campo_vacio('cliente_ruc', cliente_ruc, valor);
    valor = validar_campo_vacio('cliente_direccion', cliente_direccion, valor);
    if (valor){
        $.ajax({
            type:"POST",
            url: urlweb + "api/Cliente/guardar_cliente",
            data: new FormData(this),
            contentType: false,
            cache: false,
            processData:false,
            dataType: 'json',
            beforeSend: function () {
                $("#btn-cliente-editar").html("Cargando...");
                $("#btn-cliente-editar").attr("disabled", true);
            },
            success:function (r) {
                $("#btn-cliente-editar").attr("disabled", false);
                $("#btn-cliente-editar").html("Agregar Cliente");
                switch (r.result.code) {
                    case 1:
                        alertify.success("¡Guardado!");
                        setTimeout(function () {
                            location.href = urlweb +  'Cliente/listar';
                        }, 400);
                        break;
                    case 2:
                        alertify.error("Fallo el envio");
                        break;
                    case 6:
                        alertify.error("Algún dato fue ingresado de manera erronéa. Recargue la página por favor.");
                        break;
                    case 7:
                        alertify.error("El Cliente con este RUC ya existe.");
                        break;
                    default:
                        alertify.error("ERROR DESCONOCIDO");
                }
            }
        });
    }
});