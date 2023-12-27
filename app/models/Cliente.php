<?php

/**
 * Created by PhpStorm
 * User: luiss
 * Date: 14/08/2023
 * Time: 20:55
 * Proyect the tesis
 */
class Cliente
{
    private $pdo;
    private $log;
    public function __construct(){
        $this->pdo = Database::getConnection();
        $this->log = new Log();
    }
    public function listar_tipodocumentos()
    {
        try{
            $sql = 'select * from tipo_documentos where tipodocumento_estado = 1';
            $stm = $this->pdo->prepare($sql);
            $stm->execute();
            return $stm->fetchAll();
        } catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            return [];
        }
    }
    public function listar_tipodocumento_x_codigo($codigo)
    {
        try{
            $sql = 'select * from tipo_documentos where tipodocumento_codigo = ?';
            $stm = $this->pdo->prepare($sql);
            $stm->execute([$codigo]);
            return $stm->fetch();
        } catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            return [];
        }
    }
    public function listar_clientes()
    {
        try{
            $sql = 'select * from clientes c inner join tipo_documentos td on c.id_tipodocumento = td.id_tipodocumento 
                    where c.cliente_estado = 1';
            $stm = $this->pdo->prepare($sql);
            $stm->execute();
            return $stm->fetchAll();
        } catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            return [];
        }
    }
    public function listar_cliente_x_numero($numero)
    {
        try{
            $sql = 'select * from clientes where cliente_numero = ? and cliente_estado = 1 limit 1';
            $stm = $this->pdo->prepare($sql);
            $stm->execute([$numero]);
            $result = $stm->fetch();
            return $result;
        } catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            return [];
        }
    }
    public function validarcliente_editar($id_cliente, $cliente_numero){
        try {
            $sql = 'select * from clientes where cliente_numero = ? and id_cliente <> ?';
            $stm = $this->pdo->prepare($sql);
            $stm->execute([$cliente_numero, $id_cliente]);
            $result = $stm->fetch();
            //(isset($resultado->id_cliente))?$result=true:$result=false;

        }catch (Exception $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            $result = [];
        }
        return $result;
    }

    public function validarcliente($cliente_numero){
        try {
            $sql = 'select * from clientes where cliente_numero = ? limit 1';
            $stm = $this->pdo->prepare($sql);
            $stm->execute([$cliente_numero]);
            $result = $stm->fetch();
            //(isset($resultado->id_cliente))?$result=true:$result=false;

        }catch (Exception $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            $result = [];
        }
        return $result;
    }
    public function guardar_cliente($model){
        try{
            $fecha = date('Y-m-d H:i:s');
            if(isset($model->id_cliente)){
                $sql = 'update clientes set
                        cliente_razonsocial = ?,
                        cliente_direccion = ?,
                        cliente_numero = ?,
                        id_tipodocumento = ?,
                        cliente_telefono = ?
                        where id_cliente = ?';
                $stm = $this->pdo->prepare($sql);
                $stm->execute([
                    $model->cliente_razonsocial,
                    $model->cliente_direccion,
                    $model->cliente_numero,
                    $model->id_tipodocumento,
                    $model->cliente_telefono,
                    $model->id_cliente
                ]);
            } else {
                $sql = 'insert into clientes (cliente_razonsocial, cliente_direccion, cliente_numero, id_tipodocumento, cliente_telefono, cliente_fecha) 
                        values (?,?,?,?,?,?)';
                $stm = $this->pdo->prepare($sql);
                $stm->execute([
                    $model->cliente_razonsocial,
                    $model->cliente_direccion,
                    $model->cliente_numero,
                    $model->id_tipodocumento,
                    $model->cliente_telefono,
                    $fecha
                ]);
            }
            return 1;
        } catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            return 2;
        }
    }
}