<?php
/**
 * Created by PhpStorm
 * User: luiss
 * Date: 21/07/2023
 * Time: 20:47
 * Proyect the tesis
 */

require "app/models/Empresa.php";
require 'app/models/Usuario.php';
require 'app/models/Rol.php';
require 'app/models/Archivo.php';
class EmpresaController
{
    private $empresa;
    private $usuario;
    private $rol;
    private $archivo;
    private $encriptar;

    public function __construct(){
        $this->empresa = new Empresa();
        $this->usuario = new Usuario();
        $this->rol = new Rol();
        $this->archivo = new Archivo();
        $this->encriptar = new Encriptar();
    }
    public function inicio(){
        try{
            //Llamamos a la clase del Navbar, que sólo se usa
            // en funciones para llamar vistas y la instaciamos
            $this->nav = new Navbar();
            $navs = $this->nav->listar_menus($this->encriptar->desencriptar($_SESSION['ru'],_FULL_KEY_));
            //Listamos los usuarios del sistema
            $empresas = $this->empresa->listar_empresas();
            $roles = $this->rol->listar_roles_superadmin();


            //Hacemos el require de los archivos a usar en las vistas
            require _VIEW_PATH_ . 'header.php';
            require _VIEW_PATH_ . 'navbar.php';
            require _VIEW_PATH_ . 'empresa/inicio.php';
            require _VIEW_PATH_ . 'footer.php';
        }
        catch (Throwable $e){
            //En caso de errores insertamos el error generado y redireccionamos a la vista de inicio
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            echo "<script language=\"javascript\">alert(\"Error Al Mostrar Contenido. Redireccionando Al Inicio\");</script>";
            echo "<script language=\"javascript\">window.location.href=\"". _SERVER_ ."\";</script>";
        }
    }
}