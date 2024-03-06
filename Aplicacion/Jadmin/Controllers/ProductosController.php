<?php

/**
 * Created by Julio Rodriguez.
 * User: arkos
 * Date: 18/6/2017
 * Time: 4:41 PM
 */

namespace App\Jadmin\Controllers;

use Jida\Helpers as Helpers;
use Jida\Render as Render;
use App\Modelos as Modelos;
use App\Controllers\ImagenManager as ImagenManager;

class ProductosController extends JadminController
{
    use ImagenManager;

    function __construct()
    {
        parent::__construct();
        $this->modelo = new Modelos\Producto();
        $this->dv->incluirJS('jadmin.js', '/htdocs/js/');

        $this->urlImagen = URL_IMGS . 'ceramicas/';
        $this->direccion = DIR_HTDOCS . 'img/ceramicas/';
        $this->dirTemporal = DIR_HTDOCS . 'img/ceramicas/tmp/';
    }

    function index($linea = "")
    {

        if (!empty($linea)) {
            $this->dv->usarPlantilla('vista');
            $data = $this->modelo
                ->consulta(['id_producto', 'nombre_comercial', 'uso'])
                ->join('r_productos_lineas', '', ['clave' => 'id_producto', 'clave_relacion' => 'id_producto'])
                ->filtro(['r_productos_lineas.id_linea' => $linea])
                ->obt();

            $parametros = ['titulos' => ['Nombre Comercial', 'uso']];
            $vista = new Render\JVista($data, $parametros, 'Listado de Productos');

            $vista->acciones(['Nueva Ceramica' => ['href' => $this->obtUrl('gestion', [$linea])]]);
            $vista->accionesFila([
                ['span' => 'fa fa-edit', 'title' => "Editar Producto", 'href' => $this->obtUrl('gestion', [$linea, '{clave}'])],
                [
                    'span'        => 'fa fa-trash', 'title' => 'Eliminar Producto', 'href' => $this->obtUrl('eliminar', [$linea, '{clave}']),
                    'data-jvista' => 'confirm', 'data-msj' => '<h3>¡Cuidado!</h3>&iquest;Realmente desea eliminar el producto seleccionado?'
                ]
            ]);
            $vista->addMensajeNoRegistros(
                'No hay Productos Registrados',
                [
                    'link'    => $this->obtUrl('gestion', [$linea]),
                    'txtLink' => 'Registrar Producto'
                ]
            );

            $render = $vista->render();

            $this->data([
                'vista' => $render
            ]);
        } else
            Render\JVista::msj('listadoDeProductos', 'error', 'Debe indicar la l&iacute;nea de productos de filtrar', $this->obtUrl('Lineas.index'));
    }

    function filtro($id = "")
    {
    }

    function gestion($l = "", $id = "")
    {
        $form = new Render\Formulario('GestionProductos', $id);;
        $form->attr(['enctype' => 'multipart/form-data']);

        $linea = new Modelos\Linea($l);
        $modelo = new Modelos\Producto($id);

        if ($this->post('btnGestionProductos')) {

            if ($form->validar()) {

                if (empty($id)) $this->post('identificador', Helpers\Cadenas::guionCase($this->post('nombre_comercial')));

                $formato = str_replace(' ', '_', preg_replace('/[CM|cm|Cm|cM]/', '', $this->post('formato')));
                $nombreImg = $formato . str_replace('-', '_', $this->post('identificador'));

                if ($modelo->salvar($this->post())) {

                    $accion = (empty($id)) ? 'guardado' : 'modificado';
                    $tipo = 'suceso';
                    $msj = 'Producto <strong>' . $accion . '</strong> exitosamente';

                    $idProducto = ($modelo->resultBD->idResultado() == 0) ? $id : $modelo->resultBD->idResultado();
                    $modelo->instanciar($idProducto);

                    $pLinea = new Modelos\ProductosLinea();
                    $consultaProds = $pLinea->consulta()->filtro(['id_linea' => $l, 'id_producto' => $idProducto])->obt('id_producto_linea');

                    if (count($consultaProds) < 1)
                        $pLinea->salvar(['id_linea' => $l, 'id_producto' => $idProducto]);

                    if ($_FILES['_jcargaArchivo']['error'] == 0) {

                        $rutaImagen = $this->direccion . $linea->identificador . '/' . $modelo->identificador . '/';

                        if (Helpers\Directorios::getTotalArchivos($rutaImagen) > 0)
                            Helpers\Directorios::limpiar($rutaImagen);

                        if (!$imagenOriginal = $this->cargarImagen($nombreImg, $rutaImagen, $this->dirTemporal, IMG_TAM_SM, IMG_TAM_SM, true)) {
                            $tipo = 'error';
                            $msj = 'Ocurrio un error y no se pudo guardar la imagen del producto, por favor, intente de nuevo';
                        }

                        $imagen = new Helpers\Imagen();
                        $imagen->resizeImagen($imagenOriginal, $nombreImg . '_detalle', IMG_TAM_MD, IMG_TAM_MD, $rutaImagen);

                        Helpers\Directorios::eliminar($this->dirTemporal);
                    }

                    Render\JVista::msj('listadoDeProductos', $tipo, $msj, $this->obtUrl('index', [$l]));
                }
            } else {
                $form::msj('error', 'Los datos ingresados no son v&aacute;lidos');
            }
        }

        if (empty($id))
            $img = '';
        else {
            $arr = [];
            $ruta = $this->direccion . $linea->identificador . '/' . $modelo->identificador . '/';

            $imagen = Helpers\Directorios::listarDirectoriosRuta($ruta, $arr, '/.*\.[jpg|png|jpeg]/');
            $img = $imagen[0];
        }

        $url = $this->urlImagen . $linea->identificador . '/' . $modelo->identificador . '/';
        $this->data([
            'form'   => $form->render(),
            'imagen' => $img,
            'url'    => $url,
        ]);
    }

    function eliminar($l = "", $id = "")
    {
        if (!empty($l) && !empty($id)) {

            $linea = new Modelos\Linea($l);
            $producto = new Modelos\Producto($id);

            if (!empty($producto->id_producto) and $producto->eliminar()) {

                if (Helpers\Directorios::validar($this->direccion . $linea->identificador . '/' . $producto->identificador))
                    Helpers\Directorios::eliminar($this->direccion . $linea->identificador . '/' . $producto->identificador);

                Render\JVista::msj('listadoDeProductos', 'suceso', 'El Producto ha sido eliminado correctamente', $this->obtUrl('index', [$l]));
            } else
                Render\JVista::msj('listadoDeProductos', 'error', 'El Producto solicitado no existe', $this->obtUrl('index', [$l]));
        } else
            Render\JVista::msj('listadoDeProductos', 'error', 'El Producto solicitado no existe', $this->obtUrl('index', [$l]));
    }
}
