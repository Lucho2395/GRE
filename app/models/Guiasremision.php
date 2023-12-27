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
    public function serie_guia_x_id($id_serie){
        try{
            $sql = 'select * from serie where id_serie = ? and estado = 1';
            $stm = $this->pdo->prepare($sql);
            $stm->execute([$id_serie]);
            return $stm->fetch();
        } catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            return [];
        }
    }
    public function guardar_guia($model){
        try{
            $date = date('Y-m-d H:i:s');
            $sql = "insert into guia_remision (id_empresa, id_cliente, remision_tipo_comprobante, 
                           guia_serie, guia_correlativo, id_usuario, fecha_creacion, guia_estado, guia_emision, guia_motivo,
                           guia_motivo_otros,guia_tipo_trans,guia_fecha_traslado,guia_peso_bruto, guia_unidad_medida,
                           guia_n_bulto,guia_tipo_doc,guia_num_doc,guia_denominacion,guia_placa,guia_tuc_vehiculo,guia_certificado_mtc,
                           guia_conductor_documento_tipo,` 	guia_conductor_numero`,` 	guia_conductor_nombre`,
                           guia_conductor_apellidos, guia_licencia_cond,guia_destinatario_tipo_doc,guia_destinatario_numero, 
                           guia_destinatario_nombre,guia_ubigeo_part,guia_direccion_part,guia_cod_establec_part, 
                           guia_ubigeo_llega, guia_direccion_llega, guia_cod_establec_llega, guia_observacion, guia_remision_mt,
                            tipo_comprobante_relacion, serie_relacion, correlativo_relacion) 
                           values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            $stm = $this->pdo->prepare($sql);
            $stm->execute([
                $model->id_empresa,
                $model->id_cliente,
                $model->remision_tipo_comprobante,
                $model->serie,
                $model->correlativo,
                $model->id_usuario,
                $model->fecha_creacion,
                $model->guia_estado,
                $model->fecha_emision,
                $model->guia_motivo,
                $model->motivo_tras_otros,
                $model->guia_tipo_trans,
                $model->guia_fecha_traslado,
                $model->guia_peso_bruto,
                $model->peso_unidad_medida,
                $model->guia_n_bulto,
                $model->tipo_documento_trans,
                $model->numero_doc_trans,
                $model->denominacion_trans,
                $model->guia_placa,
                $model->tuc_vehiculo,
                $model->certificado_mtc,
                $model->tipo_documento_con,
                $model->numero_doc_con,
                $model->nombre_con,
                $model->apellido_con,
                $model->licencia_con,
                $model->tipo_documento_dest,
                $model->numero_doc_dest,
                $model->nombre_dest,
                $model->ubigeo_partida,
                $model->direccion_partida,
                $model->cod_establec_partida,
                $model->ubigeo_llegada,
                $model->direccion_llegada,
                $model->cod_establec_llegada,
                $model->observacion,
                $model->mt,
                $model->tipo_documento_relacionado,
                $model->serie_relacion,
                $model->correlactivo_relacion
            ]);
            $result = 1;
        } catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            $result = 2;
        }
        return $result;
    }

    public function listar_guia_remision_x_mt($mt_codigo){
        try {
            $sql = "select * from guia_remision where guia_remision_mt = ?";
            $stm = $this->pdo->prepare($sql);
            $stm->execute([$mt_codigo]);
            $result = $stm->fetch();
        }catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            $result = '';
        }
        return $result;
    }

    public function guardar_guia_remision_detalle($modelDSI){
        try{
            $sql = "insert into guia_remision_detalle (id_guia, guia_remision_detalle_cod, guia_remision_detalle_descripcion, guia_remision_detalle_um, guia_remision_detalle_cantidad,guia_remision_detalle_precio) 
                    values (?,?,?,?,?,?) ";
            $stm = $this->pdo->prepare($sql);
            $stm->execute([
                $modelDSI->id_guia,
                $modelDSI->guia_remision_detalle_cod,
                $modelDSI->guia_remision_detalle_descripcion,
                $modelDSI->guia_remision_detalle_um,
                $modelDSI->guia_remision_detalle_cantidad,
                $modelDSI->guia_remision_detalle_precio
            ]);
            $result = 1;
        } catch (Throwable $e){
            $this->log->insertar($e->getMessage(), get_class($this).'|'.__FUNCTION__);
            $result = 2;
        }
        return $result;
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