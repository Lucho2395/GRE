<?php
/**
 * Created by PhpStorm
 * User: LUCHO
 * Date: 30/10/2020
 * Time: 10:37
 */
require 'app/models/Persona.php';
require 'app/models/Usuario.php';
require 'app/models/Rol.php';
require 'app/models/Archivo.php';
class PersonaController
{
    private $usuario;
    private $rol;
    private $archivo;
    //Variables fijas para cada llamada al controlador
    private $sesion;
    private $encriptar;
    private $log;
    private $validar;
    private $persona;
    public function __construct()
    {
        //Instancias especificas del controlador
        $this->usuario = new Usuario();
        $this->rol = new Rol();
        $this->archivo = new Archivo();
        //Instancias fijas para cada llamada al controlador
        $this->encriptar = new Encriptar();
        $this->log = new Log();
        $this->sesion = new Sesion();
        $this->validar = new Validar();
        $this->persona = new Persona();
    }
    public function inicio(){
        try{
            //Llamamos a la clase del Navbar, que sólo se usa
            // en funciones para llamar vistas y la instaciamos
            $this->nav = new Navbar();
            $navs = $this->nav->listar_menus($this->encriptar->desencriptar($_SESSION['ru'],_FULL_KEY_));
                //Listamos los usuarios del sistema
            $personas = $this->persona->listar_personas();
            $roles = $this->rol->listar_roles_superadmin();


            //Hacemos el require de los archivos a usar en las vistas
            require _VIEW_PATH_ . 'header.php';
            require _VIEW_PATH_ . 'navbar.php';
            require _VIEW_PATH_ . 'persona/inicio.php';
            require _VIEW_PATH_ . 'footer.php';
        }
        catch (Throwable $e){
            //En caso de errores insertamos el error generado y redireccionamos a la vista de inicio
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            echo "<script language=\"javascript\">alert(\"Error Al Mostrar Contenido. Redireccionando Al Inicio\");</script>";
            echo "<script language=\"javascript\">window.location.href=\"". _SERVER_ ."\";</script>";
        }
    }

    public function listar_personas(){
        try{
            $this->nav = new Navbar();
            $navs = $this->nav->listMenu($this->encriptar->desencriptar($_SESSION['ru'],_FULL_KEY_));

            require _VIEW_PATH_ . 'header.php';
            require _VIEW_PATH_ . 'navbar.php';
            require _VIEW_PATH_ . 'personas/all.php';
            require _VIEW_PATH_ . 'footer.php';
        } catch (Throwable $e){
            $this->log->insert($e->getMessage(), get_class($this).'|'.__FUNCTION__);;
            echo "<script language=\"javascript\">alert(\"Error Al Mostrar Contenido. Redireccionando Al Inicio\");</script>";
            echo "<script language=\"javascript\">window.location.href=\"". _SERVER_ ."\";</script>";
        }
    }
    //Agregar Nuevo Usuario
    public function guardar_nueva_persona(){
        //Código de error general
        $result = 2;
        //Mensaje a devolver en caso de hacer consulta por app
        $message = 'OK';
        try{
            $ok_data = true;
            //Validamos que todos los parametros a recibir sean correctos. De ocurrir un error de validación,
            //$ok_true se cambiará a false y finalizara la ejecucion de la funcion
            $ok_data = $this->validar->validar_parametro('persona_nombre', 'POST',true,$ok_data,100,'texto',0);
            $ok_data = $this->validar->validar_parametro('persona_apellido_paterno', 'POST',true,$ok_data,30,'texto',0);
            $ok_data = $this->validar->validar_parametro('persona_apellido_materno', 'POST',true,$ok_data,30,'texto',0);
            $ok_data = $this->validar->validar_parametro('persona_nacimiento', 'POST',true,$ok_data,100,'fecha','fecha');
            $ok_data = $this->validar->validar_parametro('persona_telefono', 'POST',true,$ok_data,15,'texto',0);

            //Validacion de datos
            if($ok_data){
                //Creamos el modelo y ingresamos los datos a guardar
                $model = new Persona();

                $microtime = microtime(true);
                $model->persona_nombre = $_POST['persona_nombre'];
                $model->persona_apellido_paterno = $_POST['persona_apellido_paterno'];
                $model->persona_apellido_materno = $_POST['persona_apellido_materno'];
                $model->persona_nacimiento = $_POST['persona_nacimiento'];
                $model->persona_telefono = $_POST['persona_telefono'];
                $model->person_codigo = $microtime;
                //Guardamos el menú y recibimos el resultado
                $guardar_persona = $this->persona->guardar_persona($model);
                if($guardar_persona==1){
                    $result = 1;
                }else{
                    $result = 2;
                }

            } else {
                //Código 6: Integridad de datos erronea
                $result = 6;
                $message = "Integridad de datos fallida. Algún parametro se está enviando mal";
            }
        } catch (Exception $e){
            //Registramos el error generado y devolvemos el mensaje enviado por PHP
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            $message = $e->getMessage();
        }
        //Retornamos el json
        echo json_encode(array("result" => array("code" => $result, "message" => $message)));
    }
    public function eliminar_persona(){
        //Array donde vamos a almacenar los cambios, en caso hagamos alguno
        $menu = [];
        //Código de error general
        $result = 2;
        //Mensaje a devolver en caso de hacer consulta por app o web
        $message = 'OK';
        try{
            $ok_data = true;
            //Validamos que todos los parametros a recibir sean correctos. De ocurrir un error de validación,
            //$ok_true se cambiará a false y finalizara la ejecucion de la funcion
            //Validamos el id_menu y menu_estado, en caso este sea declarado para editar menus
            $ok_data = $this->validar->validar_parametro('id_persona', 'POST',true,$ok_data,11,'numero',0);

            //Validacion de datos
            if($ok_data){
                //Verificamos que relacion tenga los valores deseados

                $result = $this->persona->eliminar_persona($_POST['id_persona']);

            } else {
                //Código 6: Integridad de datos erronea
                $result = 6;
                $message = "Integridad de datos fallida. Algún parametro se está enviando mal";
            }
        } catch (Exception $e){
            //Registramos el error generado y devolvemos el mensaje enviado por PHP
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            $message = $e->getMessage();
        }
        //Retornamos el json
        echo json_encode(array("result" => array("code" => $result, "message" => $message, "menu" => $menu)));
    }
}