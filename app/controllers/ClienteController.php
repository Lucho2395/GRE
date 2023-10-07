<?php

/**
 * Created by PhpStorm
 * User: luiss
 * Date: 21/08/2023
 * Time: 19:40
 * Proyect the tesis
 */

require 'app/models/Cliente.php';
require 'app/models/Usuario.php';
require 'app/models/Rol.php';
require 'app/models/Archivo.php';
class ClienteController
{

    private $cliente;
    private $usuario;
    private $rol;
    private $archivo;
    private $encriptar;
    private $log;
    private $validar;

    public function __construct()
    {
        $this->usuario = new Usuario();
        $this->rol = new Rol();
        $this->archivo = new Archivo();
        $this->encriptar = new Encriptar();
        $this->cliente = new Cliente();
        $this->log = new Log();
        $this->validar = new Validar();
    }

    public function inicio(){
        try{
            //Llamamos a la clase del Navbar, que sólo se usa
            // en funciones para llamar vistas y la instaciamos
            $this->nav = new Navbar();
            $navs = $this->nav->listar_menus($this->encriptar->desencriptar($_SESSION['ru'],_FULL_KEY_));
            //Listamos los clientes del sistema
            $clientes = $this->cliente->listar_clientes();
            $tipos_documento = $this->cliente->listar_tipodocumentos();

            //Hacemos el require de los archivos a usar en las vistas
            require _VIEW_PATH_ . 'header.php';
            require _VIEW_PATH_ . 'navbar.php';
            require _VIEW_PATH_ . 'cliente/inicio.php';
            require _VIEW_PATH_ . 'footer.php';
        } catch (Throwable $e){
            //En caso de errores insertamos el error generado y redireccionamos a la vista de inicio
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            echo "<script language=\"javascript\">alert(\"Error Al Mostrar Contenido. Redireccionando Al Inicio\");</script>";
            echo "<script language=\"javascript\">window.location.href=\"". _SERVER_ ."\";</script>";
        }
    }

    public function guardar_cliente(){
        try{
            $message = "We did it. Your awesome... and beatiful";
            $model = new Cliente();
            //Start Evaluation Of Data Integrity
            $ok_data = true;
            $result = 2;

            $ok_data = $this->validar->validar_parametro('id_tipodocumento', 'POST',true,$ok_data,11,'numero',0);
            $ok_data = $this->validar->validar_parametro('cliente_numero', 'POST',true,$ok_data,15,'numero',0);
            $ok_data = $this->validar->validar_parametro('cliente_razonsocial', 'POST',true,$ok_data,500,'texto','fecha');
            $ok_data = $this->validar->validar_parametro('cliente_direccion', 'POST',true,$ok_data,500,'texto',0);
            //$ok_data = $this->validar->validar_parametro('cliente_telefono', 'POST',true,$ok_data,500,'numero',0);
            //End of Data Integrity Evaluation
            //Start Push Data
            if($ok_data){
                if(isset($_POST['id_cliente'])){
                    $validacion = $this->cliente->validarcliente_editar($_POST['id_cliente'], $_POST['cliente_numero']);
                }else{
                    $validacion = $this->cliente->validarcliente($_POST['cliente_numero']);
                }
                if($validacion){
                    $result = 5; //Cliente ya existe
                    $message = 'Cliente ya existe';
                }else{
                    if(isset($_POST['id_cliente'])){
                        $model->id_cliente = $_POST['id_cliente'];
                    }
                    $model->id_tipodocumento = $_POST['id_tipodocumento'];
                    $model->cliente_numero = $_POST['cliente_numero'];
                    $model->cliente_razonsocial = $_POST['cliente_razonsocial'];
                    $model->cliente_direccion = $_POST['cliente_direccion'];
                    $model->cliente_telefono = $_POST['cliente_telefono'];

                    $result = $this->cliente->guardar_cliente($model);
                    $message = 'Guardado Correctamente';

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

    public function obtener_datos_x_dni(){
        //Array donde vamos a recetar los cambios, en caso hagamos alguno
        $cliente = [];
        //Código de error general
        $result = 2;
        //Mensaje a devolver en caso de hacer consulta por app
        $message = 'OK';
        try {
            $ok_data = true;
            $buscar_cliente = $this->cliente->listar_cliente_x_numero($_POST['numero']);
            if(!empty($buscar_cliente)){
                $dni	= $buscar_cliente->cliente_numero;
                $nombre = $buscar_cliente->cliente_razonsocial;
                $direccion = $buscar_cliente->cliente_direccion;
                $result = 1;
            } else {

                $result = 2;

                $dni	= '';
                $nombre = '';
                $direccion = "";
                //echo $result['result']['estado'];
            }

            $datos = array(
                'dni' => $dni,
                'name' => $nombre,
                'direccion' => $direccion,
                'resultado' => $result,
            );

            //$datos = json_decode($datos);

        } catch (Exception $e) {
            //Registramos el error generado y devolvemos el mensaje enviado por PHP
            $this->log->insertar($e->getMessage(), get_class($this) . '|' . __FUNCTION__);
            $message = $e->getMessage();
        }
        //Retornamos el json
        echo json_encode(array("result" => $datos));
    }
}