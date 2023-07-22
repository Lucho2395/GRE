<?php
/**
 * Created by PhpStorm
 * User: LUCHO
 * Date: 30/10/2020
 * Time: 10:37
 */


class Persona
{
    private $pdo;
    private $log;
    public function __construct(){
        $this->pdo = Database::getConnection();
        $this->log = new Log();
    }
    public function listar_personas(){
        try{
            $sql = 'select * from personas';
            $stm = $this->pdo->prepare($sql);
            $stm->execute();
            return $stm->fetchAll();
        } catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            return [];
        }
    }
    //Registrar persona nueva al sistema
    public function guardar_persona($model){
        $fecha_actual = date('Y-m-d H:i:s');
        try{
            if(isset($model->id_persona)){
                $sql = 'update personas set
                        persona_nombre = ?,
                        persona_apellido_paterno = ?,
                        persona_apellido_materno = ?,
                        persona_nacimiento = ?,
                        persona_telefono = ?,
                        persona_modificacion = ?
                        where id_persona = ?';
                $stm = $this->pdo->prepare($sql);
                $stm->execute([
                    $model->persona_nombre,
                    $model->persona_apellido_paterno,
                    $model->persona_apellido_materno,
                    $model->persona_nacimiento,
                    $model->persona_telefono,
                    $fecha_actual,
                    $model->id_persona
                ]);
            } else {
                $sql = 'insert into personas (persona_nombre, persona_apellido_paterno, persona_apellido_materno, persona_nacimiento, persona_telefono, persona_creacion, persona_modificacion, person_codigo) values (?,?,?,?,?,?,?,?)';
                $stm = $this->pdo->prepare($sql);
                $stm->execute([
                    $model->persona_nombre,
                    $model->persona_apellido_paterno,
                    $model->persona_apellido_materno,
                    $model->persona_nacimiento,
                    $model->persona_telefono,
                    $fecha_actual,
                    $fecha_actual,
                    $model->person_codigo
                ]);
            }
            return 1;
        } catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            return 2;
        }
    }
    public function validar_siexite_usuario($id){
        try{
            $sql = 'select * from usuarios where id_persona = ? limit 1';
            $stm = $this->pdo->prepare($sql);
            $stm->execute([$id]);
            return $stm->fetch();
        } catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            return [];
        }
    }
    public function eliminar_persona($id){
        try{
            $sql = 'delete from personas where id_persona = ?';
            $stm = $this->pdo->prepare($sql);
            $stm->execute([$id]);
            return 1;
        } catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            return 2;
        }
    }
}