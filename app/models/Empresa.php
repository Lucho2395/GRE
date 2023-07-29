<?php
/**
 * Created by PhpStorm
 * User: luiss
 * Date: 21/07/2023
 * Time: 20:47
 * Proyect the tesis
 */
class Empresa
{
    private $pdo;
    private $log;
    public function __construct(){
        $this->pdo = Database::getConnection();
        $this->log = new Log();
    }
    public function listar_empresas()
    {
        try{
            $sql = 'select * from empresa where empresa_estado = 1';
            $stm = $this->pdo->prepare($sql);
            $stm->execute();
            return $stm->fetchAll();
        } catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            return [];
        }
    }
}