<?php

/**
 * Created by PhpStorm
 * User: luiss
 * Date: 26/07/2023
 * Time: 19:45
 * Proyect the tesis
 */
require "app/models/Guiasremision.php";
require "app/models/Usuario.php";
require "app/models/Empresa.php";
require 'app/models/Rol.php';
require 'app/models/Archivo.php';
require 'app/models/Cliente.php';
class GuiasremisionController
{
    private $guiasremision;
    private $empresa;
    private $usuario;
    private $rol;
    private $archivo;
    private $encriptar;
    private $log;
    private $cliente;
    public function __construct(){
        $this->guiasremision = new Guiasremision();
        $this->empresa = new Empresa();
        $this->usuario = new Usuario();
        $this->rol = new Rol();
        $this->archivo = new Archivo();
        $this->encriptar = new Encriptar();
        $this->cliente = new Cliente();
        $this->log = new Log();
    }

    public function generar_guia(){
        try{
            //Llamamos a la clase del Navbar, que sólo se usa
            // en funciones para llamar vistas y la instaciamos
            $this->nav = new Navbar();
            $navs = $this->nav->listar_menus($this->encriptar->desencriptar($_SESSION['ru'],_FULL_KEY_));
            $id_empresa = $this->encriptar->desencriptar($_SESSION['em'],_FULL_KEY_);
            //Listamos los usuarios del sistema
            $empresas = $this->empresa->listar_empresas();
            $roles = $this->rol->listar_roles_superadmin();
            $ubigeo = $this->guiasremision->listar_ubigeos();
            $series = $this->guiasremision->listar_series_x_empresa($id_empresa);
            $unidadMedida = $this->guiasremision->listar_unidades_medida();
            $tipos_documentos = $this->cliente->listar_tipodocumentos();
            $clientes = $this->cliente->listar_clientes();


            //Hacemos el require de los archivos a usar en las vistas
            require _VIEW_PATH_ . 'header.php';
            require _VIEW_PATH_ . 'navbar.php';
            require _VIEW_PATH_ . 'guiasremision/generar_guia.php';
            require _VIEW_PATH_ . 'footer.php';
        }
        catch (Throwable $e){
            //En caso de errores insertamos el error generado y redireccionamos a la vista de inicio
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            echo "<script language=\"javascript\">alert(\"Error Al Mostrar Contenido. Redireccionando Al Inicio\");</script>";
            echo "<script language=\"javascript\">window.location.href=\"". _SERVER_ ."\";</script>";
        }
    }

    public function guardar_guia(){
        try{
            $message = "We did it. Your awesome... and beatiful";
            $model = new Cliente();
            //Start Evaluation Of Data Integrity
            $ok_data = true;
            $result = 2;

            //$ok_data = $this->validar->validar_parametro('cliente_telefono', 'POST',true,$ok_data,500,'numero',0);
            //End of Data Integrity Evaluation
            //Start Push Data
            if($ok_data){
                //verificamos si existe algun cliente con el numero de documento
                $validacion = $this->cliente->validarcliente($_POST['client_number']);
                $tipoDocumento_cliente = $this->cliente->listar_tipodocumento_x_codigo($_POST['cliente_tipodocumento']);
                $model->id_tipodocumento = $tipoDocumento_cliente->id_tipodocumento;
                $model->cliente_numero = $_POST['client_number'];
                $model->cliente_razonsocial = $_POST['client_name'];
                $model->cliente_direccion = (!empty($_POST['client_address']))?$_POST['client_address']:'Sin Dirección';
                $model->cliente_telefono = null;
                if(!empty($validacion)){
                    //EDITAMOS EL CLIENTE POR SI ACTUALIZA ALGUNA DIRECCION O RAZON SOCIAL
                    $model->id_cliente = $validacion->id_cliente;
                }
                $result = $this->cliente->guardar_cliente($model);
                $message = 'Cliente Guardado Correctamente';

                if($result == 1){
                    $consulta_cliente = $this->cliente->listar_cliente_x_numero($_POST['client_number']);
                    $id_cliente = $consulta_cliente->id_cliente;

                    $modelg = new Guiasremision();
                    $modelg->id_usuario = $this->encriptar->desencriptar($_SESSION['c_u'], _FULL_KEY_);
                    $modelg->id_empresa = 1;
                    $modelg->id_cliente = $id_cliente;

                    $modelg->remision_tipo_comprobante= $_POST['tipo_guia'];

                    $serie = $this->guiasremision->serie_guia_x_id($_POST['id_serie']);
                    $modelg->serie= $serie->serie;
                    $modelg->correlativo= $serie->correlativo+1;

                    $modelg->fecha_creacion = date('Y-m-d H:i:s');
                    $modelg->guia_estado = 0;
                    $modelg->fecha_emision = $_POST['fecha_emision'];
                    $modelg->guia_motivo = $_POST['motivo_tras'];
                    $modelg->motivo_tras_otros = $_POST['motivo_tras_otros'];
                    $modelg->guia_tipo_trans = $_POST['tipo_trans'];
                    $modelg->guia_fecha_traslado = $_POST['fecha_tras'];
                    $modelg->guia_peso_bruto = $_POST['peso_bruto'];
                    $modelg->peso_unidad_medida = $_POST['peso_unidad_medida'];
                    $modelg->guia_n_bulto = $_POST['numero_bultos'];
                    $modelg->tipo_documento_trans = $_POST['tipo_documento_trans'];
                    $modelg->numero_doc_trans = $_POST['numero_doc_trans'];
                    $modelg->denominacion_trans = $_POST['denominacion_trans'];
                    $modelg->guia_placa = $_POST['num_placa_trans'];
                    $modelg->tuc_vehiculo = $_POST['tuc_vehiculo'];
                    $modelg->certificado_mtc = $_POST['certificado_mtc'];
                    $modelg->tipo_documento_con=$_POST['tipo_documento_con'];
                    $modelg->numero_doc_con=$_POST['numero_doc_con'];
                    $modelg->nombre_con=$_POST['nombre_con'];
                    $modelg->apellido_con=$_POST['apellido_con'];
                    $modelg->licencia_con = $_POST['licencia_con'];
                    $modelg->tipo_documento_dest = $_POST['tipo_documento_dest'];
                    $modelg->numero_doc_dest = $_POST['numero_doc_dest'];
                    $modelg->nombre_dest = $_POST['nombre_dest'];
                    $modelg->direccion_dest = $_POST['direccion_dest'];
                    $modelg->ubigeo_partida = $_POST['ubigeo_partida'];
                    $modelg->direccion_partida = $_POST['direccion_partida'];
                    $modelg->cod_establec_partida = $_POST['cod_establec_partida'];
                    $modelg->ubigeo_llegada = $_POST['ubigeo_llegada'];
                    $modelg->direccion_llegada = $_POST['direccion_llegada'];
                    $modelg->cod_establec_llegada = $_POST['cod_establec_llegada'];
                    $modelg->observacion = $_POST['observacion'];
                    $modelg->tipo_documento_relacionado= $_POST['tipo_documento_relacionado'];
                    $modelg->serie_relacion= $_POST['serie_documento_relacionado'];
                    $modelg->correlactivo_relacion= $_POST['correlativo_documento_relacionado'];
                    $mt_codigo = microtime(true);
                    $modelg->mt = $mt_codigo;
                    $result = $this->guiasremision->guardar_guia($modelg);
                    if($result == 1){
                        $contenido = $_POST['contenido'];
                        //ME QUEDE ACÁ, TENGO QUE GUARDAR EL DETALLE DE LA GUIA DE MANERA CORRECTA
                    }

                }else{
                    $message = 'Error al guardar Cliente';
                }

            } else {
                //Code 6: False Data Integrity
                $result = 6;
                $message = "Code 6: Fail Data Integrity";
            }
        } catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            //Code 2: General Error
            $result = 2;
            $message = "Code 2: General Error";
        }
        //Result
        $response = array("code" => $result,"message" => $message);
        $data = array("result" => $response);
        echo json_encode($data);
    }
}