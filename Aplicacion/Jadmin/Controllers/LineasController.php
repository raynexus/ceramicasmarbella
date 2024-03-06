<?php

/**
 * Created by PhpStorm.
 * User: arkos
 * Date: 18/6/2017
 * Time: 4:41 PM
 */

namespace App\Jadmin\Controllers;

use App\Modelos as Modelos;
use Jida\Helpers as Helpers;
use Jida\Render as Render;
use App\Controllers\ImagenManager as ImagenManager;

class LineasController extends JadminController
{
    use ImagenManager;

    function __construct()
    {
        parent::__construct();

        $this->modelo = new Modelos\Linea();

        $this->dv->incluirJS('jadmin.js', '/htdocs/js/');

        $this->urlImagen   = URL_IMGS   . 'ceramicas/';
        $this->direccion   = DIR_HTDOCS . 'img/ceramicas/';
        $this->dirTemporal = DIR_HTDOCS . 'img/ceramicas/tmp/';
    }

    function index()
    {
        $this->dv->usarPlantilla('vista');
        $data = $this->modelo
            ->consulta(['id_linea', 'imagen', 'linea', 'id_estatus'])
            ->obt();
        $parametros = ['titulos' => ['Caratula', 'Línea', 'Estatus']];
        $vista = new Render\JVista($data, $parametros, 'Listado de Líneas');

        $vista->acciones(['Nueva L&iacute;nea' => ['href' => $this->obtUrl('gestion')]]);
        $vista->accionesFila([
            ['span' => 'fa fa-edit', 'title' => "Editar L&iacute;nea", 'href' => $this->obtUrl('gestion', ['{clave}'])],
            ['span' => 'fa fa-folder-open', 'title' => "Ver Productos", 'href' => $this->obtUrl('Productos.index', ['{clave}'])],
            [
                'span' => 'fa fa-trash', 'title' => 'Eliminar L&iacute;nea', 'href' => $this->obtUrl('eliminar', ['{clave}']),
                'data-jvista' => 'confirm', 'data-msj' => '<h3>¡Cuidado!</h3>&iquest;Realmente desea eliminar la l&iacute;nea seleccionada?'
            ]
        ]);
        $vista->addMensajeNoRegistros(
            'No hay L&iacute;neas Registradas',
            [
                'link'      => $this->obtUrl('gestion'),
                'txtLink'     => 'Registrar L&iacute;nea'
            ]
        );

        $render = $vista->render(
            function ($datos) {

                foreach ($datos as $key => &$linea) {

                    $attrImg = [
                        'style' => 'height:40px;width:40px',
                        'src' => URL_BASE . URL_HTDOCS . 'img/ceramicas/' . $linea['imagen']
                    ];
                    $linea['imagen'] = Render\Selector::crear('img', $attrImg);
                    $linea['id_estatus'] = ($linea['id_estatus'] == '1') ? 'Activo' : 'Inactiva';
                }
                return $datos;
            }
        );

        $this->data([
            'vista' => $render
        ]);
    } //fin index

    function gestion($id = "")
    {

        $form = new Render\Formulario('GestionLineas', $id);
        $form->attr(['enctype' => 'multipart/form-data']);

        $modelo = new Modelos\Linea($id);

        if ($this->post('btnGestionLineas')) {

            if ($form->validar()) {

                if (empty($id))     $this->post('identificador', Helpers\Cadenas::guionCase($this->post('linea')));

                if ($modelo->salvar($this->post())) {

                    $accion = (empty($id)) ? 'guardada' : 'modificada';
                    $tipo = 'suceso';
                    $msj = 'L&iacute;nea <strong>' . $accion . '</strong> exitosamente';

                    if ($_FILES['_jcargaArchivo']['error'] == 0) {

                        $idLinea = ($modelo->resultBD->idResultado() == 0) ? $id : $modelo->resultBD->idResultado();
                        $modelo->instanciar($idLinea);

                        if (!empty($id) && Helpers\Archivo::existe($this->direccion . $modelo->imagen))
                            Helpers\Archivo::eliminarArchivo($this->direccion . $modelo->imagen);

                        if ($nombreImagen = $this->cargarImagen(uniqid(), $this->direccion, $this->dirTemporal, IMG_TAM_MD, IMG_TAM_MD)) {

                            $modelo->imagen = $nombreImagen;

                            if ($modelo->salvar()) {
                                Helpers\Directorios::eliminar($this->dirTemporal);
                            } else {
                                $tipo = 'error';
                                $msj = 'Ocurrio un error y no se pudo guardar la informaci&oacute;n de esta l&iacute;nea, por favor, intente de nuevo';
                            }
                        } else {
                            $tipo = 'error';
                            $msj = 'Ocurrio un error y no se pudo guardar esta l&iacute;nea, por favor, intente de nuevo';
                        }
                    }

                    Render\JVista::msj('listadoDeLíneas', $tipo, $msj, $this->obtUrl('index'));
                }
            } else {
                $form::msj('error', 'Los datos ingresados no son v&aacute;lidos');
            }
        }

        $img = ($modelo->imagen) ? $modelo->imagen : $img = false;

        $this->data([
            'form'         => $form->render(),
            'imagen'    => $img,
            'url'        => $this->urlImagen . '/',
        ]);
    }

    function eliminar($id = '')
    {
        if (!empty($id)) {

            $linea = new Modelos\Linea($id);
            if (!empty($linea->id_linea) and $linea->eliminar()) {

                if (Helpers\Archivo::existe($this->direccion . $linea->imagen))
                    Helpers\Archivo::eliminarArchivo($this->direccion . $linea->imagen);

                Render\JVista::msj('listadoDeLíneas', 'suceso', 'La l&iacute;nea ha sido eliminada correctamente', $this->obtUrl('index'));
            } else
                Render\JVista::msj('listadoDeLíneas', 'error', 'La l&iacute;nea solicitada no existe', $this->obtUrl('index'));
        } else
            Render\JVista::msj('listadoDeLíneas', 'error', 'La l&iacute;nea solicitada no existe', $this->obtUrl('index'));
    }
}
