<?php

/**
 * Created by PhpStorm
 * User: luiss
 * Date: 26/07/2023
 * Time: 19:47
 * Proyect the tesis
 */
class Guiasremision
{
    private $pdo;
    private $log;
    public function __construct(){
        $this->pdo = Database::getConnection();
        $this->log = new Log();
    }

    public function listar_ubigeos(){
        try{
            $sql = 'select * from ubigeo';
            $stm = $this->pdo->prepare($sql);
            $stm->execute();
            return $stm->fetchAll();
        } catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            return [];
        }
    }
    public function listar_series(){
        try{
            $sql = 'select * from serie where estado = 1';
            $stm = $this->pdo->prepare($sql);
            $stm->execute();
            return $stm->fetchAll();
        } catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            return [];
        }
    }
    public function listar_series_x_empresa($id_empresa){
        try{
            $sql = 'select * from serie where id_empresa = ? and estado = 1';
            $stm = $this->pdo->prepare($sql);
            $stm->execute([$id_empresa]);
            return $stm->fetchAll();
        } catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            return [];
        }
    }
    public function listar_unidades_medida(){
        try{
            $sql = 'select * from unidad_de_medida where unidad_estado = 1';
            $stm = $this->pdo->prepare($sql);
            $stm->execute();
            return $stm->fetchAll();
        } catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            return [];
        }
    }
}