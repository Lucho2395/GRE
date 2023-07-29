<?php
/**
 * Created by PhpStorm
 * User: luiss
 * Date: 27/07/2023
 * Time: 19:11
 * Proyect the tesis
 */
?>

<div class="main-panel">
    <div class="content">
        <div class="page-inner">
            <div class="row" style=" margin: 20px 80px 20px 80px;">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12 col-lg-12" style="text-align: center; margin-bottom: 30px;">
                                    <h4 class="card-title">Generar Guía de Remisión Remitente / Transportista: </h4>
                                </div>
                            </div>
                            <div class="row ">
                                <div class="form-group col-md-3">
                                    <label for="tipo_guia">Tipo de Guía</label>
                                    <select class="form-control" name="tipo_guia" id="tipo_guia" onchange="serie_correlativo();tipo_guia();" style="height: 44px; font-size: 12px;">
                                        <option style="font-size: 10pt;" value="09">GUIA DE REMISION REMITENTE</option>
                                        <option style="font-size: 10pt;" value="31" selected>GUIA DE REMISION TRANSPORTISTA</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-2">
                                    <label for="id_serie">Serie</label>
                                    <select class="form-control" name="id_serie" id="id_serie" style="height: 44px; font-size: 12px;">
                                        <option value="">Seleccionar</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-2">
                                    <label for="correlativo">Correlativo</label>
                                    <input type="text" id="correlativo" name="correlativo" class="form-control" value="0" readonly>
                                </div>
                                <div class="form-group col-md-2">
                                    <label for="fecha_emision">Fecha Emisión</label>
                                    <input type="date" id="fecha_emision" class="form-control" name="fecha_emision" value="<?= date('Y-m-d') ?>" readonly>
                                </div>
                            </div>
                            <div class="row">
                                <input type="hidden" id="contenido" name="contenido">
                                <div class="form-group ocul col-md-3">
                                    <label for="id_cliente">Cliente</label>
                                    <select class="form-control" name="id_cliente" id="id_cliente" style="height: 44px; font-size: 12px;">
                                        <option value="">Seleccionar</option>
                                        <?php
                                        foreach ($clientes as $s){
                                            ?>
                                            <option value="<?= $s->id_cliente?>"><?= $s->cliente_nombre;?></option>
                                            <?php
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group ocul_transportista col-lg-3">
                                    <label for="tipo_trans_transportista">Tipo de Transporte</label>
                                    <select name="tipo_trans_transportista" class="form-control" id="tipo_trans_transportista">
                                        <option value=''>Seleccionar...</option>
                                        <option value='1'>TERRESTRE</option>
                                        <option value='3'>FLUVIAL</option>
                                    </select>
                                </div>
                                <div class="form-group ocul_remitente col-lg-3">
                                    <label for="tipo_trans">Tipo de Transporte</label>
                                    <select name="tipo_trans" class="form-control" id="tipo_trans">
                                        <option value="01">TRANSPORTE PÚBLICO</option>
                                        <option value="02" selected>TRANSPORTE PRIVADO</option>
                                    </select>
                                </div>
                                <div class="form-group ocul_remitente col-lg-3">
                                    <label for="motivo_tras">Motivo de Traslado</label>
                                    <select class="form-control" name="motivo_tras" id="motivo_tras" onchange="select_motivo_tras()">
                                        <option value="">Seleccionar...</option>
                                        <option value="01">VENTA</option>
                                        <option value="02">COMPRA</option>
                                        <option value="03">VENTA CON ENTREGA A TERCEROS</option>
                                        <option value="04">TRASLADO ENTRE ESTABLECIMIENTOS</option>
                                        <option value="05">CONSIGNACIÓN</option>
                                        <option value="06">DEVOLUCIÓN</option>
                                        <option value="07">RECOJO DE BIENES TRANSFORMADOS</option>
                                        <option value="08">IMPORTACION</option>
                                        <option value="09">EXPORTACION</option>
                                        <option value="13" selected >OTROS</option>
                                        <option value="14">VENTA SUJETA A CONFIRMACION DEL COMPRADOR</option>
                                        <option value="17">TRASLADO DE BIENES PARA TRANSFORMACIÓN</option>
                                        <option value="18">TRASLADO EMISOR ITINERANTE CP</option>
                                    </select>
                                </div>
                                <div class="form-group ocul_remitente col-lg-3" id="div_otros">
                                    <label for="motivo_tras_otros">Detalle OTROS</label>
                                    <textarea name="motivo_tras_otros" id="motivo_tras_otros" style="font-size: 10pt;" rows="1" class="form-control" maxlength="70"></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12" >
                                    <div class="card" style="border: 0 solid #74BFF6F7; border-radius: 20px 20px 0 0">
                                        <div data-toggle="collapse" href="#div_traslado" class="card-header" style="background: #E5EDFDFF; border-radius: 20px 20px 0 0; color: #585a64;">
                                            <h5 class="text-black">DATOS DEL TRASLADO</h5>
                                        </div>
                                        <div id="div_traslado" class="card-body collapse">
                                            <div class="row"  >
                                                <div class="col-lg-3">
                                                    <label for="fecha_traslado">Fecha Traslado</label>
                                                    <input type="date" id="fecha_tras" class="form-control" name="fecha_tras" value="<?= date('Y-m-d') ?>">
                                                </div>
                                                <div class="col-lg-2">
                                                    <label for="peso_bruto">Peso Bruto</label>
                                                    <input type="text" readonly id="peso_bruto" value="0" onkeyup="validar_numeros_decimales_dos(this.id)" class="form-control">
                                                </div>
                                                <div class="col-lg-3">
                                                    <label for="peso_unidad_medida">Peso - unidad de medidad</label>
                                                    <select name="peso_unidad_medida" class="form-control" id="peso_unidad_medida">
                                                        <option value="KGM" selected>KGM - KILOGRAMO</option>
                                                        <option value="TNE" >TNE - TONELADA</option>
                                                    </select>
                                                </div>
                                                <div class="col-lg-2 ocul_remitente">
                                                    <label for="numero_bultos">N° de Bultos</label>
                                                    <input type="text" onkeyup="validar_numeros_decimales_dos(this.id)" value="0" id="numero_bultos" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <div class="card-header" style="background: #E5EDFDFF; color: #585a64">
                                        <h5 data-toggle="collapse" class="text-black">ITEMS</h5>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                            <tr style="font-weight: bold;text-align: center">
                                                <th>Item</th>
                                                <th>Concepto</th>
                                                <th>U.M</th>
                                                <th>Cant.</th>
                                                <th>Peso <span id="span_peso_unidad"></span></th>
                                                <th>Acción</th>
                                            </tr>
                                            </thead>
                                            <tbody id="contenido_detalle_guia"></tbody>
                                            <tr>
                                                <td id="conteo">1</td>
                                                <td>
                                                    <textarea name="descripcion" id="descripcion" cols="50" rows="2" maxlength="250" style="font-size: 10pt;" class="form-control"></textarea>
                                                </td>
                                                <td>
                                                    <select id="um_guia" type="text" class="form-control" name="um_guia">
                                                        <?php
                                                        foreach ($unidades as $m){
                                                            ($m->medida_codigo_unidad=='NIU')?$selee='selected':$selee='';
                                                            ?>
                                                            <option value="<?= $m->medida_codigo_unidad ?>" <?= $selee;?>><?= $m->medida_nombre?></option>
                                                            <?php
                                                        }
                                                        ?>
                                                    </select>
                                                </td>
                                                <td>
                                                    <input style="background: #fff !important;color:#000 !important;text-align: right" id="cant_guia" type="text" class="form-control" onkeyup="return validar_numeros_decimales_tres(this.id)">
                                                </td>
                                                <td>
                                                    <input style="background: #fff !important;color:#000 !important;text-align: right" id="peso_item" type="text" class="form-control" onkeyup="return validar_numeros_decimales_tres(this.id)">
                                                </td>
                                                <td><a style="color:#fff;font-weight: bold;font-size: large" onclick="add()" class="btn btn-success"><i class="fa fa-check"></i></a></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="row" id="datos_transportista" >
                                <div class="col-md-12">
                                    <div class="card" style="border: 0 solid #74BFF6F7; border-radius: 20px 20px 0 0 ">
                                        <div data-toggle="collapse" href="#div_transportista" class="card-header text-black" style="background: #E5EDFDFF; border-radius: 20px 20px 0 0; color: #585a64">
                                            <h5>DATOS TRANSPORTISTA</h5>
                                        </div>
                                        <div id="div_transportista" class="card-body collapse">
                                            <div class="row">
                                                <div class="col-lg-3 ocul_remitente">
                                                    <label for="tipo_documento_trans">Tipo Documento</label>
                                                    <select class="form-control" name="tipo_documento_trans" id="tipo_documento_trans">
                                                        <!--<option value="">Seleccionar...</option>-->
                                                        <option value="6">RUC</option>
                                                        <!--<option value="1">DNI</option>
                                                        <option value="-">VARIOS- VENTAS MENORES DE S/. 700</option>
                                                        <option value="4">CARNET DE EXTRANJERIA</option>
                                                        <option value="7">PASAPORTE</option>
                                                        <option value="A">CEDULA</option>
                                                        <option value="0">NO DOMICIALIADO</option>-->
                                                    </select>
                                                </div>
                                                <div class="col-lg-2 ocul_remitente">
                                                    <label for="numero_doc_trans">Nº Documento</label>
                                                    <input type="text" id="numero_doc_trans" class="form-control" onkeyup="validar_numeros(this.id)">
                                                </div>
                                                <div class="col-lg-4 ocul_remitente">
                                                    <label for="denominacion_trans">Transporte Denominación</label>
                                                    <textarea name="denominacion_trans" style="font-size: 10pt;" id="denominacion_trans" rows="1" onkeyup="mayuscula(this.id)" class="form-control"></textarea>
                                                    <!--<input type="text" id="denominacion_trans" onkeyup="mayuscula(this.id)" class="form-control">-->
                                                </div>
                                                <div class="col-lg-3">
                                                    <label for="num_placa_trans">Transportista Nº Placa</label>
                                                    <select name="num_placa_trans" id="num_placa_trans" class="form-control">
                                                        <option value="">seleccionar...</option>
                                                    </select>
                                                    <!--<input type="text" id="num_placa_trans" class="form-control" placeholder="SIN GUIONES">-->
                                                </div>
                                                <div class="col-lg-3 ocul_transportista">
                                                    <label for="tuc_vehiculo">TUC Vehículo principal</label>
                                                    <input type="text" id="tuc_vehiculo" name="tuc_vehiculo" class="form-control" placeholder="(opcional)">
                                                </div>
                                                <div class="col-lg-3">
                                                    <label for="certificado_mtc">Certificado (MTC)</label>
                                                    <input type="text" id="certificado_mtc" name="certificado_mtc" class="form-control" placeholder="(opcional)">
                                                </div>
                                                <div class="col-lg-3">
                                                    <label for="carreta">Carreta</label>
                                                    <input type="text" id="carreta" name="carreta" class="form-control" placeholder="(opcional)">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row" id="datos_conductor">
                                <div class="col-md-12">
                                    <div class="card" style="border: 0 solid #74BFF6F7;">
                                        <div data-toggle="collapse" href="#div_conductor" class="card-header text-black" style="background: #E5EDFDFF; color: #585a64">
                                            <h5> DATOS DEL CONDUCTOR</h5>
                                        </div>
                                        <div id="div_conductor" class="card-body collapse">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <label for="id_conductor">Conductor</label>
                                                    <select name="id_conductor" id="id_conductor" class="form-control" style="width: 99%">
                                                        <option value="">Seleccionar...</option>
                                                        <?php
                                                        foreach ($conductores as $c){
                                                            $licencia = $this->facturacion->listar_licencia_conducir_x_person($c->id_person);
                                                            $licencia_con = 'SIN LICENCIA';
                                                            $str_licencia = '';
                                                            if(!empty($licencia)){
                                                                foreach ($licencia as $l){
                                                                    if(!empty($l->documentacion_referencia)){
                                                                        $licencia_con = $l->documentacion_referencia;
                                                                        $fecha_ven = $l->documentacion_fin;
                                                                    }else{
                                                                        $licencia_con = 'CON LICENCIA, PERO SIN DIGITAR';
                                                                        $fecha_ven = '';
                                                                    }
                                                                    $str_licencia .= $licencia_con. ' - ' .$fecha_ven. ' || ';
                                                                }
                                                                $conductor = $c->person_name. '  ' .$c->person_surname.' '.$c->person_surname2;
                                                                ?>
                                                                <option value="<?= $c->id_person; ?>"><?= $c->person_dni. ' | ' .$conductor. ' | ' .$str_licencia; ?></option>
                                                                <?php
                                                            }
                                                        }
                                                        ?>
                                                    </select>
                                                </div>
                                                <!--<div class="col-lg-2">
                                                    <label for="tipo_documento_con">Tipo Documento</label>
                                                    <select name="tipo_documento_con" id="tipo_documento_con" class="form-control">
                                                        <option value="6">RUC</option>
                                                        <option value="1">DNI</option>
                                                        <option value="4">CARNET DE EXTRANJERIA</option>
                                                        <option value="7">PASAPORTE</option>
                                                        <option value="A">CEDULA</option>
                                                        <option value="0">NO DOMICIALIADO</option>
                                                    </select>
                                                </div>-->
                                                <!--<div class="col-md-2">
                                                    <label for="numero_doc_con">Nº documento</label>
                                                    <input type="text" id="numero_doc_con" class="form-control" onkeyup="validar_numeros(this.id)">
                                                </div>-->
                                                <div class="col-md-3">
                                                    <label for="nombre_con">Nombre del Conductor</label>
                                                    <textarea readonly name="nombre_con" id="nombre_con" rows="1" onkeyup="mayuscula(this.id)" style="font-size: 10pt;" class="form-control"></textarea>
                                                    <!--<input type="text" id="nombre_con" onkeyup="mayuscula(this.id)" name="nombre_con" class="form-control" maxlength="250">-->
                                                </div>
                                                <div class="col-md-3">
                                                    <label for="apellido_con">Apellidos del Conductor</label>
                                                    <textarea readonly name="apellido_con" id="apellido_con" rows="1" onkeyup="mayuscula(this.id)" style="font-size: 10pt;" class="form-control"></textarea>
                                                </div>
                                                <div class="col-md-3">
                                                    <label for="licencia_con">Licencia de conducir</label>
                                                    <!--                                                    <input type="text" id="licencia_con" class="form-control">-->
                                                    <select class="form-control" name="licencia_con" id="licencia_con" onchange="escoger_licencia()">
                                                        <option>Seleccionar Conductor...</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row ocul_transportista" id="datos_destinatario">
                                <div class="col-md-12">
                                    <div class="card" style="border: 0 solid #74BFF6F7;">
                                        <div data-toggle="collapse" href="#div_destinatario" class="card-header text-black" style="background: #E5EDFDFF; color: #585a64">
                                            <h5> DATOS DEL DESTINATARIO</h5>
                                        </div>
                                        <div id="div_destinatario" class="card-body collapse">
                                            <div class="row">
                                                <div class="col-lg-2">
                                                    <label for="tipo_documento_dest">Tipo Documento</label>
                                                    <select name="tipo_documento_dest" id="tipo_documento_dest" class="form-control">
                                                        <option value="6">RUC</option>
                                                        <option value="1">DNI</option>
                                                        <option value="4">CARNET DE EXTRANJERIA</option>
                                                        <option value="7">PASAPORTE</option>
                                                        <option value="A">CEDULA</option>
                                                        <option value="0">NO DOMICIALIADO</option>
                                                    </select>
                                                </div>
                                                <div class="col-lg-3">
                                                    <label for="numero_doc_dest">Nº documento</label>
                                                    <input type="text" id="numero_doc_dest" class="form-control" onkeyup="validar_numeros(this.id)" >
                                                </div>
                                                <div class="col-lg-4">
                                                    <label for="nombre_dest">Nombre del Destinatario</label>
                                                    <textarea readonly name="nombre_dest" id="nombre_dest" rows="2" onkeyup="mayuscula(this.id)" style="font-size: 10pt;" class="form-control"></textarea>
                                                    <!--<input type="text" id="nombre_con" onkeyup="mayuscula(this.id)" name="nombre_con" class="form-control" maxlength="250">-->
                                                </div>
                                                <div class="col-lg-3">
                                                    <label for="direccion_dest">Dirección del Destinatario</label>
                                                    <textarea name="direccion_dest" id="direccion_dest" rows="2" onkeyup="mayuscula(this.id)" style="font-size: 8pt;" class="form-control"></textarea>
                                                    <!--<input type="text" id="nombre_con" onkeyup="mayuscula(this.id)" name="nombre_con" class="form-control" maxlength="250">-->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-lg-6">
                                    <div class="card" style="border: 0 solid #74BFF6F7;">
                                        <div data-toggle="collapse" href="#div_partida" class="card-header text-black" style="background: #E5EDFDFF; color: #585a64">
                                            <h5> PUNTO PARTIDA</h5>
                                        </div>
                                        <div  id="div_partida" class="card-body collapse">
                                            <div class="row">
                                                <div class="col-md-5">
                                                    <label for="ubigeo_partida">Ubigeo</label>
                                                    <select name="ubigeo_partida" id="ubigeo_partida" class="form-control" style="width: 100%">
                                                        <?php foreach ( $ubigeo as $u ){
                                                            ($u->ubigeo_distrito=='IQUITOS')? $select='selected' : $select='' ;
                                                            ?>
                                                            <option value="<?= $u->ubigeo_cod ?>" <?= $select ?> > <?= $u->ubigeo_distrito.' | '.$u->ubigeo_provincia.' | '.$u->ubigeo_departamento.' | '.$u->ubigeo_cod  ?> </option>
                                                        <?php } ?>
                                                    </select>
                                                </div>
                                                <div class="col-md-7">
                                                    <label for="direccion_partida">Dirección</label>
                                                    <textarea name="direccion_partida" id="direccion_partida" maxlength="150" rows="2" onkeyup="mayuscula(this.id)" style="font-size: 10pt;" class="form-control"></textarea>
                                                    <!--<input type="text" id="direccion_partida" onkeyup="mayuscula(this.id)" name="direccion_partida" class="form-control" value="">-->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6">
                                    <div class="card" style="border: 0 solid #74BFF6F7;">
                                        <div data-toggle="collapse" href="#div_llegada" class="card-header text-black" style="background: #E5EDFDFF; color: #585a64">
                                            <h5> PUNTO DE LLEGADA</h5>
                                        </div>
                                        <div id="div_llegada" class="card-body collapse">
                                            <div class="row">
                                                <div class="col-md-5" >
                                                    <label for="ubigeo_llegada">Ubigeo</label>
                                                    <select name="ubigeo_llegada" id="ubigeo_llegada" class="form-control" style="width: 100%">
                                                        <?php foreach ( $ubigeo as $u ){
                                                            ($u->ubigeo_cod=='160113')? $select='selected' : $select='' ;
                                                            ?>
                                                            <option value="<?= $u->ubigeo_cod ?>" <?= $select ?> > <?= $u->ubigeo_distrito.' | '.$u->ubigeo_provincia.' | '.$u->ubigeo_departamento.' | '.$u->ubigeo_cod  ?> </option>
                                                        <?php } ?>
                                                    </select>
                                                </div>
                                                <div class="col-md-7">
                                                    <label for="direccion_llegada">Dirección</label>
                                                    <textarea name="direccion_llegada" id="direccion_llegada" maxlength="150" rows="2" onkeyup="mayuscula(this.id)" style="font-size: 10pt;" class="form-control">CARRETERA PAUJIL ZONA AGRARIA ETAPA I KM 1.0</textarea>
                                                    <!--<input type="text" id="direccion_llegada" onkeyup="mayuscula(this.id)" name="direccion_llegada" class="form-control">-->
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12" >
                                    <div class="card" style="border: 0 solid #74BFF6F7; border-radius: 0 0 20px 20px">
                                        <div data-toggle="collapse" href="#div_observacion" class="card-header" style="background: #E5EDFDFF; border-radius: 0 0 20px 20px; color: #585a64">
                                            <h5>OBSERVACION</h5>
                                        </div>
                                        <div id="div_observacion" class="card-body collapse">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <label for="">Observación</label>
                                                    <textarea class="form-control" name="observacion" id="observacion" maxlength="1000" rows="1"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12" style="text-align: right">
                                    <br><button onclick="preguntar_guia_remision()" type="submit" class="btn btn-primary submitBtn"><i class="fa fa-check"></i> Generar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<?php echo _SERVER_ . _JS_;?>domain.js"></script>
<script type="text/javascript">

    const vehiculos = [];
    let tipo_vehiculo ;
    let id_vehiculo ;
    let vehiculo_placa ;
    let tipo_inspeccion ;
    let tuc ;
    let certificado_mtc ;
    let carreta ;
    <?php
    foreach ($vehiculos as $v){
    $doc = $this->facturacion->listar_TUC_x_unidad($v->id_vehiculo);
    $tuc = '';
    $mtc = '';
    $carreta = '';
    if(!empty($doc)){
        $tuc = $v->documento_unidad_Npartida_registral;
    }
    if($v->vehiculo_placa=='BAT898' || $v->vehiculo_placa=='BAS846'){
        $mtc = '2498-2019 MTC/17.02';
    }else if($v->vehiculo_placa=='D8C703' || $v->vehiculo_placa=='D9H821' || $v->vehiculo_placa=='D9J847'){
        $mtc = '1785-2019 MTC/17.02';
        if($v->vehiculo_placa=='D9H821'){
            $carreta = 'F1V986';
        }
        if($v->vehiculo_placa=='D9J847'){
            $carreta = 'F1W974';
        }
    }else{
        $mtc = 'T-056869-2019';
    }
    ?>
    tipo_vehiculo = <?= $v->tipo_inspeccion;?>;
    id_vehiculo = <?= $v->id_vehiculo;?>;
    vehiculo_placa = '<?= $v->vehiculo_placa;?>';
    tipo_inspeccion = <?= $v->tipo_inspeccion;?>;
    tuc = '<?= $tuc;?>';
    certificado_mtc = '<?= $mtc;?>';
    carreta = '<?= $carreta;?>';
    vehiculos.push({
        'id_vehiculo' : id_vehiculo,
        'vehiculo_placa' : vehiculo_placa,
        'tipo_inspeccion' : tipo_inspeccion,
        'tuc' : tuc,
        'certificado_mtc' : certificado_mtc,
        'carreta' : carreta
    })

    <?php
    }
    ?>
    $(document).ready(function(){
        $("#id_cliente").select2();
        $("#id_conductor").select2();
        $("#num_placa_trans").select2();
        $("#ubigeo_llegada").select2();
        $("#ubigeo_partida").select2();
        $('#span_peso_unidad').html($("#peso_unidad_medida").val())
        tipo_guia();
        serie_correlativo()
    })
    $('#id_conductor').on('select2:select', function(e) {
        $('#nombre_con').val('')
        $('#apellido_con').val('')
        $('#licencia_con').val('')
        let conductor = e.params.data.text.split(' | ');
        let ruc = conductor[0];
        let cond = conductor[1].split('  ')
        let nombre = cond[0]
        let apellido = cond[1]
        let licencia = conductor[2]
        let arr_licencia = conductor[2].split(' || ')
        let dato_lic = "<option value=''>Seleccionar...</option>"
        for (let i=0; i<arr_licencia.length-1;i++){
            let part_lic = arr_licencia[i].split(' - ')
            dato_lic += "<option value='"+part_lic[0]+"'>"+part_lic[0]+ ' | '+part_lic[1]+"</option>"
            // if(part_lic[1].length > 0){
            //     let fecha_ven = new Date(part_lic[1])
            //     let fecha_actual = new Date()
            //     if(fecha_actual > fecha_ven){
            //         respuesta('La Licencia está vencida','error')
            //     }
            // }else{
            //     respuesta('La Licencia no tiene registro','error')
            // }
        }
        $('#nombre_con').val(nombre)
        $('#apellido_con').val(apellido)
        $('#licencia_con').html(dato_lic)

    });
    $('#num_placa_trans').on('select2:select', function(e) {
        /*let num_placa_trans = e.params.data.text.split('  ');
        $('#tuc_vehiculo').val(num_placa_trans[1])*/

        let num_placa_trans = $('#num_placa_trans').val();
        vehiculos.map(veh=>{
            if(veh['vehiculo_placa']===num_placa_trans){
                $('#tuc_vehiculo').val(veh['tuc'])
                $('#certificado_mtc').val(veh['certificado_mtc'])
                $('#carreta').val(veh['carreta'])
            }
        })
    });
    function escoger_licencia(){
        let licencia = $('#licencia_con option:selected').text().split(' | ')
        if(licencia[1].length > 0){
            let fecha_ven = new Date(licencia[1])
            let fecha_actual = new Date()
            if(fecha_actual > fecha_ven){
                respuesta('La Licencia está vencida, Seleccione Otro','error')
                $('#licencia_con').val('')
            }
        }else{
            respuesta('La Licencia no tiene registro, Seleccione Otro','error')
            $('#licencia_con').val('')
        }
        console.log(licencia)
    }

    document.getElementById('tipo_trans_transportista').addEventListener('change', function() {
        let valor = this.value
        let opciones_veh = "<option value=''>Seleccionar...</option>";
        vehiculos.map(veh=>{
            if(veh['tipo_inspeccion']==valor){
                opciones_veh += "<option value='"+veh['vehiculo_placa']+"'>"+veh['vehiculo_placa']+"</option>"
            }
        })
        $('#num_placa_trans').html(opciones_veh);
    });
    function tipo_guia(){
        let tipo_guia = $("#tipo_guia").val();
        if(tipo_guia=='31'){
            $(".ocul_remitente").hide();
            $(".ocul_transportista").show();
            let opciones_veh = "<option value=''>Seleccionar...</option>";
            $('#num_placa_trans').html(opciones_veh);
        }else if(tipo_guia=='09'){
            $(".ocul_remitente").show();
            $(".ocul_transportista").hide();

            let opciones_veh = "<option value=''>Seleccionar...</option>";
            vehiculos.map(veh=>{
                opciones_veh += "<option value='"+veh['vehiculo_placa']+"'>"+veh['vehiculo_placa']+ '  ' +veh['tuc']+"</option>"
            })
            $('#num_placa_trans').html(opciones_veh);
        }
        console.log(tipo_guia)
    }

    //INICIO - COLOCAR LAS SERIES EN UN ARRAY
    //evento autollamado que retorna un array
    const series=(()=>{
        let id_serie = '';
        let id_empresa = '';
        let tipocomp = '';
        let serie = '';
        let correlativo = '';
        let arr_serie = [];
        <?php
        foreach ($series as $s){
        ?>
        id_serie = <?= $s->id_serie;?>;
        id_empresa = <?= $s->id_empresa;?>;
        tipocomp = "<?= $s->tipocomp;?>";
        serie = "<?= $s->serie;?>";
        correlativo = <?= $s->correlativo;?>;
        arr_serie.push({
            'id_serie': id_serie,
            'id_empresa': id_empresa,
            'tipocomp': tipocomp,
            'serie': serie,
            'correlativo': correlativo
        })
        <?php
        }
        ?>
        return arr_serie;
    })()
    //FIN - COLOCAR LAS SERIES EN UN ARRAY

    document.getElementById('tipo_trans').addEventListener('change', function() {
        if(this.value=='02'){
            $('#datos_conductor').show();
        }else if(this.value=='01'){
            $('#datos_conductor').hide();
        }
    });
    document.getElementById('fecha_tras').addEventListener('change', function() {
        let fecha_emision = $('#fecha_emision').val()
        let fecha_traslado = this.value

        var fecha_inicial = new Date(fecha_emision);
        var fecha_final = new Date(fecha_traslado);

        if(fecha_inicial > fecha_final){
            respuesta('La Fecha de Traslado no debe ser menor que la Fecha de Emisión','error')
            $('#fecha_tras').val(fecha_emision);
        }
    });

    document.getElementById('numero_doc_trans').addEventListener('change', function() {
        let num = $('#tipo_documento_trans').val();
        switch (num){
            case '6': if(this.value.length!=11){ respuesta('RUC debe ser 11 Digitos','error');this.value=''  } break;

            case '1': if(this.value.length!=8){ respuesta('DNI debe ser 8 Digitos','error');this.value=''  } break;
            case '-': if(this.value.length <= 8){ respuesta('Minimo 8 Digitos','error');this.value='11111111'  } break;
            default: break;
        }
    });
    /*document.getElementById('numero_doc_con').addEventListener('change', function() {
        let num = $('#tipo_documento_con').val();
        switch (num){
            case '6': if(this.value.length!=11){ respuesta('RUC debe ser 11 Digitos','error');this.value=''  } break;

            case '1': if(this.value.length!=8){ respuesta('DNI debe ser 8 Digitos','error');this.value=''  } break;
            case '-': if(this.value.length <= 8){ respuesta('Minimo 8 Digitos','error');this.value='11111111'  } break;
            default: break;
        }
    });*/

    function serie_correlativo(){
        let valor = true
        let tipo_guia = $('#tipo_guia').val();
        valor = validar_campo_vacio('tipo_guia', tipo_guia, valor)
        if(valor){
            //consulta de serie y correlativo
            /*$.ajax({
                type: "POST",
                url: urlweb + 'api/comprobanteelectronico/buscar_serie_correlativo',
                data: {
                    'tipo_guia' : tipo_guia,
                    'empresa' : empresa
                },
                dataType: 'json',
                beforeSend: function () {
                    alertify.message('Consultando...')
                },
                success:function (r){
                    switch (r.result.code){
                        case 1:
                            let series = "";
                            for (var i=0; i<r.result.series.length; i++){
                                series += "<option value='"+r.serie[i].id_serie+"'>"+r.serie[i].serie+"</option>"
                                arr_serie.push({

                                })
                            }
                            break;
                        case 2:

                            break;
                        default:
                            alertify.error("ERROR DESCONOCIDO");
                    }

                    $("#id_serie").html(series);
                    $("#correlativo").html(series);
                }
            });*/
            var dato_se = "";
            series.map(arr=>{
                if(tipo_guia == arr['tipocomp']){
                    dato_se += "<option value='"+arr['id_serie']+"'>"+arr['serie']+"</option>"
                }
                //crear una nueva fila en la tabla
            })
            $('#id_serie').html(dato_se);
            listar_correlativo()
        }
    }
    function listar_correlativo(){
        let id_serie = $('#id_serie').val();
        console.log(id_serie)
        series.map(arr=>{
            if(id_serie == arr['id_serie']){
                let correlativo = arr['correlativo'] + 1 * 1
                $('#correlativo').val(correlativo);
            }
        })

    }

    function preguntar_guia_remision(){
        alertify.confirm('Generar Guía de Remisión', '¿Está seguro de Generar esta Guía?',
            function(){ guardar_remision() }
            , function(){ alertify.error('Operacion Cancelada')});
    }
    function guardar_remision(){
        var valor = true;
        let razon_conductor = '';
        let id_empresa = $('#id_empresa').val();
        let tipo_guia = $('#tipo_guia').val();
        let id_serie = $('#id_serie').val();
        let id_cliente = $('#id_cliente').val();
        let fecha_emision = $('#fecha_emision').val();
        let motivo_tras = $('#motivo_tras').val();
        let motivo_tras_otros = $('#motivo_tras_otros').val();
        let tipo_trans = $('#tipo_trans').val();
        let tipo_trans_transportista = $('#tipo_trans_transportista').val();
        let fecha_tras = $('#fecha_tras').val();
        let peso_bruto = $('#peso_bruto').val();
        let peso_unidad_medida = $('#peso_unidad_medida').val();
        let numero_bultos = $('#numero_bultos').val();
        let tipo_documento_trans = $('#tipo_documento_trans').val();
        let numero_doc_trans = $('#numero_doc_trans').val();
        let denominacion_trans = $('#denominacion_trans').val();
        let num_placa_trans = $('#num_placa_trans').val();
        let id_conductor = $('#id_conductor').val();
        //let numero_doc_con = $('#numero_doc_con').val();
        let nombre_con = $('#nombre_con').val();
        let apellido_con = $('#apellido_con').val();
        let licencia_con = $('#licencia_con').val();
        let ubigeo_partida = $('#ubigeo_partida').val();
        let direccion_partida = $('#direccion_partida').val();
        let cod_establec_partida = '0000';
        let ubigeo_llegada = $('#ubigeo_llegada').val();
        let direccion_llegada = $('#direccion_llegada').val();
        let cod_establec_llegada = '0000';
        let observacion = $('#observacion').val();
        //TRANSPORTISTA
        let tuc_vehiculo = $('#tuc_vehiculo').val();
        let certificado_mtc = $('#certificado_mtc').val();
        let carreta = $('#carreta').val();
        let tipo_documento_dest = $('#tipo_documento_dest').val();
        let numero_doc_dest = $('#numero_doc_dest').val();
        let nombre_dest = $('#nombre_dest').val();
        let direccion_dest = $('#direccion_dest').val();

        valor = validar_campo_vacio('id_empresa',id_empresa, valor)
        valor = validar_campo_vacio('tipo_guia',tipo_guia, valor)
        valor = validar_campo_vacio('id_serie',id_serie, valor)
        valor = validar_campo_vacio('id_cliente',id_cliente, valor)
        valor = validar_campo_vacio('peso_bruto',peso_bruto, valor)
        valor = validar_campo_vacio('peso_unidad_medida',peso_unidad_medida, valor)
        valor = validar_campo_vacio('fecha_tras',fecha_tras, valor)
        if(tipo_trans!=='01'){
            valor = validar_campo_vacio('num_placa_trans',num_placa_trans, valor)
            valor = validar_campo_vacio('id_conductor',id_conductor, valor)
            //valor = validar_campo_vacio('numero_doc_con',numero_doc_con, valor)
            valor = validar_campo_vacio('nombre_con',nombre_con, valor)
            valor = validar_campo_vacio('apellido_con',apellido_con, valor)
            valor = validar_campo_vacio('licencia_con',licencia_con, valor)
            razon_conductor = nombre_con + ' // ' + apellido_con
        }
        valor = validar_campo_vacio('ubigeo_partida',ubigeo_partida, valor)
        valor = validar_campo_vacio('direccion_partida',direccion_partida, valor)
        valor = validar_campo_vacio('ubigeo_llegada',ubigeo_llegada, valor)
        valor = validar_campo_vacio('direccion_llegada',direccion_llegada, valor)
        if(tipo_guia=='09'){
            valor = validar_campo_vacio('motivo_tras',motivo_tras, valor)
            if(motivo_tras == '13'){
                valor = validar_campo_vacio('motivo_tras_otros',motivo_tras_otros, valor)
            }
            valor = validar_campo_vacio('tipo_trans',tipo_trans, valor)
            valor = validar_campo_vacio('numero_bultos',numero_bultos, valor)
            valor = validar_campo_vacio('tipo_documento_trans',tipo_documento_trans, valor)
            valor = validar_campo_vacio('numero_doc_trans',numero_doc_trans, valor)
            valor = validar_campo_vacio('denominacion_trans',denominacion_trans, valor)
            valor = validar_campo_vacio('tipo_documento_trans',tipo_documento_trans, valor)
            valor = validar_campo_vacio('numero_doc_trans',numero_doc_trans, valor)
            valor = validar_campo_vacio('denominacion_trans',denominacion_trans, valor)
        }else{
            valor = validar_campo_vacio('tipo_trans_transportista',tipo_trans_transportista, valor)
            valor = validar_campo_vacio('tipo_documento_dest',tipo_documento_dest, valor)
            valor = validar_campo_vacio('numero_doc_dest',numero_doc_dest, valor)
            valor = validar_campo_vacio('nombre_dest',nombre_dest, valor)
            valor = validar_campo_vacio('direccion_dest',direccion_dest, valor)
        }
        //valor = false
        if (valor){
            let contenido = JSON.stringify(arr_contenido);
            if(contenido.length>0){
                $.ajax({
                    type: "POST",
                    url: urlweb + "api/ComprobanteElectronico/guardar_guia",
                    data: {
                        'id_empresa': id_empresa,
                        'tipo_guia': tipo_guia,
                        'id_serie': id_serie,
                        'id_cliente': id_cliente,
                        'fecha_emision':fecha_emision ,
                        'motivo_tras': motivo_tras,
                        'motivo_tras_otros': motivo_tras_otros,
                        'tipo_trans_transportista':tipo_trans_transportista ,
                        'tipo_trans':tipo_trans ,
                        'fecha_tansp':fecha_tras ,
                        'peso_bruto':peso_bruto ,
                        'peso_unidad_medida':peso_unidad_medida ,
                        'numero_bultos': numero_bultos ,
                        'tipo_documento_trans': tipo_documento_trans ,
                        'numero_doc_trans': numero_doc_trans ,
                        'denominacion_trans': denominacion_trans ,
                        'num_placa_trans': num_placa_trans ,
                        'tuc_vehiculo': tuc_vehiculo ,
                        'certificado_mtc': certificado_mtc ,
                        'carreta': carreta ,
                        'tipo_documento_dest': tipo_documento_dest ,
                        'numero_doc_dest': numero_doc_dest ,
                        'nombre_dest': nombre_dest ,
                        'direccion_dest': direccion_dest ,
                        'id_conductor': id_conductor ,
                        'nombre_con':razon_conductor ,
                        'licencia_con': licencia_con ,
                        'ubigeo_partida': ubigeo_partida ,
                        'direccion_partida': direccion_partida ,
                        'cod_establec_partida': cod_establec_partida ,
                        'ubigeo_llegada': ubigeo_llegada ,
                        'direccion_llegada': direccion_llegada ,
                        'cod_establec_llegada': cod_establec_llegada ,
                        'observacion': observacion,
                        'contenido': contenido
                    },
                    dataType: 'json',
                    success:function (r) {
                        switch (r.result.code) {
                            case 1:
                                respuesta('¡Guardado Correctamente!...', 'success');
                                setTimeout(function () {
                                    //location.reload()
                                    location.href = urlweb +'ComprobanteElectronico/guias_remision_pendientes'
                                }, 800);
                                break;
                            case 3:
                                respuesta('¡Error al guardar!...', 'error');
                                break;
                            case 7:
                                respuesta('¡Error al guardar!...', 'error');
                                break;
                            case 8:
                                respuesta('¡El cliente no existe la Base de datos!...', 'success');
                                break;
                            default:
                                respuesta('¡Algo catastrofico ha ocurrido!', 'error');
                                break;
                        }
                    }
                });
            }else{
                respuesta('¡Items obligatorio!', 'error');
            }

        }

    }
    //FUNCIONES TABLA
    let arr_contenido = [];
    let conteo = 1;
    function add() {
        let descripcion = $("#descripcion").val();
        let cant_guia = $("#cant_guia").val() * 1;
        let um_guia = $("#um_guia").val()
        let peso_item = $("#peso_item").val()
        let valor = true
        valor = validar_campo_vacio("descripcion", descripcion, valor)
        valor = validar_campo_vacio("cant_guia", cant_guia, valor)
        valor = validar_campo_vacio("um_guia", um_guia, valor)
        valor = validar_campo_vacio("peso_item", peso_item, valor)
        if(valor){
            if(cant_guia >= 0){
                arr_contenido.push({
                    'descripcion' : descripcion,
                    'cantidad'  : cant_guia,
                    'unidad_medida'  : um_guia,
                    'peso_item'  : peso_item
                })
                //arr_contenido += nota_conteo + "-.-."+ nota_concepto + "-.-."+ nota_um + "-.-."+ nota_cant + "-.-."+ precio_unit + "-.-." + precio_total+ "/./.";
                //$("#contenido").val(contenido);
                show();
                clean();
            }else{
                alertify.error("La cantidad debe ser mayor que 0");
            }
        }

    }
    function clean(){
        $("#descripcion").val('');
        $("#cant_guia").val('');
        $("#um_guia").val('NIU')
        $("#peso_item").val('')
    }
    function show(){
        //llamamos el id del cuerpo del body
        let body_datos = ''
        let a = 1;
        let peso_total = 0;
        arr_contenido.map(arr=>{
            peso_total = peso_total + arr['peso_item'] * 1
            body_datos += "<tr style='text-align: center'><td>"+a+"</td>"+
                "<td>"+arr['descripcion']+"</td>"+
                "<td>"+arr['unidad_medida']+"</td>"+
                "<td>"+arr['cantidad']+"</td>"+
                "<td>"+arr['peso_item']+"</td>"+
                "<td><a data-toggle=\"tooltip\" onclick='delete_detalle("+a+")' title=\"Eliminar\" type=\"button\" class=\"text-danger\" ><i class=\"fa fa-times ver_detalle\"></i></a></td>"+
                "</tr>";
            a++;
            //crear una nueva fila en la tabla
            /*const fila = body_tabla.insertRow()
            // Agregar las propiedades del objeto como celdas en la fila
            let conteo = fila.insertCell();
            const descripcion = fila.insertCell();
            const unidad = fila.insertCell();
            const cantidad = fila.insertCell();
            // Agregar los valores a las celdas de la fila
            conteo.textContent = a;
            descripcion.textContent = arr['descripcion'];
            unidad.textContent = arr['unidad_medida'];
            cantidad.textContent = arr['cantidad'];
            a++;*/
        })
        $('#contenido_detalle_guia').html(body_datos)
        $('#conteo').html(a)
        $('#peso_bruto').val(peso_total)
    }

    let arr_artificial = [];
    function delete_detalle(id){
        let a = 1;
        arr_contenido.map(arr=>{
            if (a != id){
                arr_artificial.push({
                    'descripcion' : arr['descripcion'],
                    'cantidad'  : arr['cantidad'],
                    'unidad_medida'  : arr['unidad_medida'],
                    'peso_item'  : arr['peso_item']
                })
            }
            a++;
        })
        arr_contenido = arr_artificial
        show()
    }
    function select_motivo_tras(){
        let motivo_tras = $('#motivo_tras').val()
        if(motivo_tras == '13'){
            $('#div_otros').show()
        }else{
            $('#motivo_tras_otros').val('');
            $('#div_otros').hide()
        }
    }
    select_motivo_tras();

    document.getElementById('numero_doc_dest').addEventListener('change', function(){
        let valor = this.value;
        let tipo_documento = $('#tipo_documento_dest').val();
        if(tipo_documento == 6){
            if(valor.length==11){
                if(!isNaN(valor)){
                    if(valor=="00000000000"){
                        alertify.success("Proveedor Extranjero");
                        $('#cliente_condicion').val("HABIDO");
                    }else{
                        alertify.message('Consultando...');
                        var formData = new FormData();
                        formData.append("token", "uTZu2aTvMPpqWFuzKATPRWNujUUe7Re1scFlRsTy9Q15k1sjdJVAc9WGy57m");
                        formData.append("ruc", valor);
                        var request = new XMLHttpRequest();
                        request.open("POST", "https://api.migo.pe/api/v1/ruc");
                        request.setRequestHeader("Accept", "application/json");
                        request.send(formData);
                        $('.loader').show();
                        request.onload = function() {
                            var data = JSON.parse(this.response);
                            if(data.success){
                                $('.loader').hide();
                                alertify.success("Datos Encontrados");
                                if(data.condicion_de_domicilio=="NO HABIDO"){
                                    alert("Este ruc se encuentra como NO HABIDO.");
                                }else{
                                    $('#nombre_dest').val(data.nombre_o_razon_social);
                                    $('#direccion_dest').val(data.direccion);
                                }
                            }else{
                                $('.loader').hide();
                                alertify.error(data.message);
                            }
                        };
                    }
                }else{
                    alertify.error("El ruc debe contener solo números.");
                }
            }else{
                alertify.error("El ruc debe contener 11 dígitos.");
            }
        }else{
            if(valor.length==8){
                if(!isNaN(valor)){
                    if(valor=="00000000"){
                        alertify.success("CLIENTE GENERAL");
                        $('#cliente_condicion').val("HABIDO");
                    }else{
                        alertify.message('Consultando...');
                        var formData = new FormData();
                        formData.append("token", "uTZu2aTvMPpqWFuzKATPRWNujUUe7Re1scFlRsTy9Q15k1sjdJVAc9WGy57m");
                        formData.append("dni", valor);
                        var request = new XMLHttpRequest();
                        request.open("POST", "https://api.migo.pe/api/v1/dni");
                        request.setRequestHeader("Accept", "application/json");
                        request.send(formData);
                        $('.loader').show();
                        request.onload = function() {
                            var data = JSON.parse(this.response);
                            if(data.success){
                                $('.loader').hide();
                                alertify.success("Datos Encontrados");

                                $('#nombre_dest').val(data.nombre);
                            }else{
                                $('.loader').hide();
                                alertify.error(data.message);
                            }
                        };
                    }
                }else{
                    alertify.error("El DNI debe contener solo números.");
                }
            }else{
                alertify.error("El DNI debe contener 8 dígitos.");
            }
        }
    });
    document.getElementById('peso_unidad_medida').addEventListener('change', function(){
        $('#span_peso_unidad').html(this.value)
    })

</script>


