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
            $model = new Guiasremision();
            //Start Evaluation Of Data Integrity
            $ok_data = true;
            $result = 2;

            //$ok_data = $this->validar->validar_parametro('cliente_telefono', 'POST',true,$ok_data,500,'numero',0);
            //End of Data Integrity Evaluation
            //Start Push Data
            if($ok_data){
                //verificamos si existe algun cliente con el numero de documento
                $validacion = $this->cliente->validarcliente($_POST['client_number']);
                if(!$validacion){
                    $tipoDocumento_cliente = $this->cliente->listar_tipodocumento_x_codigo($_POST['cliente_tipodocumento']);
                    $model->id_tipodocumento = $tipoDocumento_cliente->id_tipodocumento;
                    $model->cliente_numero = $_POST['client_number'];
                    $model->cliente_razonsocial = $_POST['client_name'];
                    $model->cliente_direccion = (!empty($_POST['client_address']))?$_POST['client_address']:null;
                    $model->cliente_telefono = null;

                    $result = $this->cliente->guardar_cliente($model);
                    $message = 'Guardado Correctamente';
                }

                if($result == 1){
                    $consulta_cliente = $this->cliente->listar_cliente_x_numero($_POST['client_number']);
                    $id_cliente = $consulta_cliente->id_cliente;
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