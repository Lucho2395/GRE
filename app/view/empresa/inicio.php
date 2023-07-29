<?php
/**
 * Created by PhpStorm
 * User: luiss
 * Date: 22/07/2023
 * Time: 11:17
 * Proyect the tesis
 */
?>
<!-- Modal Agregar Usuario-->
<div class="modal fade" id="gestionPersona" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Agregar/Editar</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form enctype="multipart/form-data" method="post" id="gestionarInfoPersona">
                <div class="modal-body">
                    <div class="container-fluid">
                        <div id="persona">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label class="col-form-label">Nombre Persona</label>
                                        <input class="form-control" type="text" id="persona_nombre" name="persona_nombre" maxlength="20" placeholder="Ingrese Información...">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="col-form-label">Apellido Paterno</label>
                                        <input class="form-control" type="text" id="persona_apellido_paterno" name="persona_apellido_paterno" maxlength="30" placeholder="Ingrese Información...">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="col-form-label">Apellido Materno</label>
                                        <input class="form-control" type="text" id="persona_apellido_materno" name="persona_apellido_materno" maxlength="30" placeholder="Ingrese Información...">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="col-form-label">Fecha de Nacimiento</label>
                                        <input class="form-control" type="date" id="persona_nacimiento" name="persona_nacimiento" maxlength="30" placeholder="Ingrese Información...">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="col-form-label">Número de Teléfono</label>
                                        <input class="form-control" type="text" id="persona_telefono" onkeyup="return validar_numeros(this.id)" name="persona_telefono" maxlength="30" placeholder="Ingrese Información...">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="fa fa-close fa-sm text-white-50"></i> Cerrar</button>
                    <button type="submit" class="btn btn-success" id="btn-agregar-usuario"><i class="fa fa-save fa-sm text-white-50"></i> Guardar</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Modal Editar Usuario-->
<!--<div class="modal fade" id="editarDatosUsuario" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel1">Editar Usuario</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form enctype="multipart/form-data" method="post" id="editarInformacionUsuario">
                <div class="modal-body">
                    <div class="container-fluid">
                        <div id="usuario">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label class="col-form-label">Usuario</label>
                                        <input class="form-control" type="hidden" id="id_usuario" name="id_usuario" maxlength="11" readonly>
                                        <input class="form-control" type="text" id="usuario_nickname_e" name="usuario_nickname_e" maxlength="16" placeholder="Ingrese Información...">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="col-form-label">Email</label>
                                        <input class="form-control" type="text" id="usuario_email_e" name="usuario_email_e" maxlength="40" placeholder="Ingrese Información...">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="col-form-label">Foto</label>
                                        <input class="form-control" type="file" id="usuario_imagen_e" name="usuario_imagen_e" placeholder="Ingrese Información...">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="col-form-label">Rol</label>
                                        <select id="id_rol_e" name="id_rol_e" class="form-control">
                                            <?php
                                            foreach ($roles as $r){
                                                ?>
                                                <option value="<?= $r->id_rol;?>"><?= $r->rol_nombre;?></option>
                                                <?php
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="col-form-label">Estado</label>
                                        <select id="usuario_estado_e" name="usuario_estado_e" class="form-control" onchange="cambiar_color_estado('usuario_estado_e')">
                                            <option value="1" style="background-color: #17a673; color: white;" selected>HABILITADO</option>
                                            <option value="0" style="background-color: #e74a3b; color: white;">DESHABILITADO</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="fa fa-close fa-sm text-white-50"></i> Cerrar</button>
                    <button type="submit" class="btn btn-success" id="btn-editar-usuario"><i class="fa fa-save fa-sm text-white-50"></i> Guardar</button>
                </div>
            </form>
        </div>
    </div>
</div>-->
<!-- Modal Editar Persona-->
<div class="modal fade" id="editarPersona" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Editar Datos Persona</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form enctype="multipart/form-data" method="post" id="gestionarInfoPersona">
                <div class="modal-body">
                    <div class="container-fluid">
                        <div id="persona">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label class="col-form-label">Nombre Persona</label>
                                        <input class="form-control" type="hidden" id="id_persona" name="id_persona" maxlength="20" placeholder="Ingrese Información...">
                                        <input class="form-control" type="text" id="persona_nombre_e" name="persona_nombre_e" maxlength="20" placeholder="Ingrese Información...">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="col-form-label">Apellido Paterno</label>
                                        <input class="form-control" type="text" id="persona_apellido_paterno_e" name="persona_apellido_paterno_e" maxlength="30" placeholder="Ingrese Información...">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="col-form-label">Apellido Materno</label>
                                        <input class="form-control" type="text" id="persona_apellido_materno_e" name="persona_apellido_materno_e" maxlength="30" placeholder="Ingrese Información...">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="col-form-label">Fecha de Nacimiento</label>
                                        <input class="form-control" type="date" id="persona_nacimiento_e" name="persona_nacimiento_e" maxlength="30" placeholder="Ingrese Información...">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="col-form-label">Número de Teléfono</label>
                                        <input class="form-control" type="text" id="persona_telefono_e" onkeyup="return validar_numeros(this.id)" name="persona_telefono_e" maxlength="30" placeholder="Ingrese Información...">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="fa fa-close fa-sm text-white-50"></i> Cerrar</button>
                    <button type="submit" class="btn btn-success" id="btn-editar_persona"><i class="fa fa-save fa-sm text-white-50"></i> Guardar</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Modal Restablecer Contraseña-->
<div class="modal fade" id="restablecerContra" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Restablecer Contraseña</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <div id="persona">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label class="col-form-label" id="nickname_persona">Nombre Persona</label>
                                    <input class="form-control" type="hidden" id="id_usuario_contra" maxlength="20" readonly placeholder="Ingrese Información...">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="col-form-label">Nueva Contraseña</label>
                                    <input class="form-control" type="password" id="contra1" maxlength="16" placeholder="Ingrese Información...">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="col-form-label">Repetir Contraseña</label>
                                    <input class="form-control" type="password" id="contra2"  maxlength="16" placeholder="Ingrese Información...">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="fa fa-close fa-sm text-white-50"></i> Cerrar</button>
                <button type="button" class="btn btn-success" id="btn-editar-contra" onclick="generar_nueva_contrasenha()"><i class="fa fa-save fa-sm text-white-50"></i> Guardar</button>
            </div>
        </div>
    </div>
</div>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800"><?= $_SESSION['controlador'] . '/' . $_SESSION['accion'];?></h1>
        <button data-toggle="modal" data-target="#gestionPersona" onclick="cambiar_texto_formulario('exampleModalLabel', 'Agregar Nueva Empresa'); agregacion_persona()" class="d-none d-sm-inline-block btn btn-sm btn-success shadow-sm"><i class="fa fa-plus fa-sm text-white-50"></i> Agregar Nuevo</button>
    </div>
    <!-- /.row (main row) -->
    <div class="row">
        <div class="col-lg-12">
            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Lista de Empresas Registradas</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead class="text-capitalize">
                            <tr>
                                <th>#</th>
                                <th>Fecha de Registro</th>
                                <th>Nombre Comercial</th>
                                <th>RUC <br> Razón Social</th>
                                <th>Domicilio Fiscal</th>
                                <th>Distrito - Provincia - Departamento - Ubigeo</th>
                                <th>Correo</th>
                                <th>Tel / Cel</th>
                                <th>Logo de Empresa</th>

                                <th>Acciones</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            $a = 1;
                            foreach ($empresas as $m){
                                $correo = $m->empresa_correo ?? '---';
                                $tel1 = $m->empresa_telefono1 ?? '---';
                                $cel1 = $m->empresa_celular1 ?? '---';
                                $logo = 'Acá irá la imagen de la empresa';

                                ?>
                                <tr>
                                    <td><?= $a;?></td>
                                    <td><?= date('d-m-Y', strtotime($m->empresa_fechayhora)) ;?></td>
                                    <td><?= $m->empresa_nombrecomercial;?></td>
                                    <td><?= $m->empresa_ruc.' <br> '.$m->empresa_razon_social;?></td>
                                    <td><?= $m->empresa_domiciliofiscal;?></td>
                                    <td><?= $m->empresa_distrito.' - ' .$m->empresa_provincia.' - '.$m->empresa_departamento.' - '.$m->empresa_ubigeo;?></td>
                                    <td><?= $correo;?></td>
                                    <td><?= $tel1.' - '.$cel1;?></td>
                                    <td><?= $logo;?></td>
                                    <td>
                                        <div id="botonempresaeditar<?= $m->id_empresa;?>">
                                            <button data-toggle="modal" data-target="#editarEmpresa" onclick="editar_empresa(<?= $m->id_empresa;?>, '<?= $m->empresa_razon_social;?>', '<?= $m->empresa_nombrecomercial;?>', '<?= $m->empresa_ruc;?>', '<?= $m->empresa_domiciliofiscal;?>','<?= $m->empresa_distrito;?>')"  class="btn btn-xs btn-primary btne" >Editar Empresa</button>
                                        </div>
                                        <div id="botoneliminarempresa<?= $m->id_empresa;?>">
                                            <button data-toggle="modal" data-target="#eliminarEmpresa" id="btn-eliminarempresa<?=$m->id_empresa;?>" onclick="preguntar('¿Está seguro que desea Dar de Baja a esta Empresa ?','baja_empresa','Si','No',<?= $m->id_empresa;?>)"  class="btn btn-xs btn-danger btne" >Dar de Baja</button>
                                        </div>

                                    </td>
                                </tr>
                                <?php
                                $a++;
                            }
                            ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- /.container-fluid -->
<script src="<?php echo _SERVER_ . _JS_;?>domain.js"></script>
<script src="<?php echo _SERVER_ . _JS_;?>empresa.js"></script>