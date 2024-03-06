<?php

namespace App\Controllers;

use Jida\Helpers as Helpers;
use App\Modelos as Modelos;

class IndexController extends AppController
{

    public function index($value = '')
    {

        $this->data([
            'title'     => 'Marbella Cerámicas C.A',
            'titulo'    => 'Baldosas de Cer&aacute;mica para Pisos & paredes',
            'subtitulo' => FALSE
        ]);
    }

    public function nosotros()
    {
        $this->data([
            'title'     => 'Nosotros',
            'titulo'    => 'Nosotros',
            'imgHeader' => 'fabrica.png'
        ]);
    }

    public function productos()
    {
        $this->data([
            'title'     => 'Productos',
            'titulo'    => 'Productos',
            'imgHeader' => 'mesa.jpg'
        ]);
    }

    public function distribuidores()
    {

        $estado = new Modelos\Estado();
        $cliente = new Modelos\Cliente();

        $clientes = $cliente->consulta()->order('cliente')->obt();
        $idEstados = [];
        $clientesPorEstado = [];

        foreach ($clientes as $key => $cliente) {

            $idEstados[$cliente['id_estado']] = $cliente['id_estado'];
            $clientesPorEstado[$cliente['id_estado']][] = $cliente;
        }

        $estados = $estado->consulta()->in($idEstados)->order('estado')->obt();
        $this->data([
            'title'        => 'Distribuidores',
            'titulo'       => 'Distribuidores',
            'clientes'     => $clientes,
            'jsonClientes' => json_encode($clientesPorEstado),
            'estados'      => $estados,
            'jsonEstados'  => json_encode($estados)
        ]);

        $this->dv->addJs([
            'https://cdnjs.cloudflare.com/ajax/libs/proj4js/2.3.6/proj4.js',
            'https://code.highcharts.com/maps/highmaps.js',
            'https://code.highcharts.com/maps/modules/exporting.js',
            'https://code.highcharts.com/mapdata/countries/ve/ve-all.js',
            'htdocs/js/map.js'
        ], FALSE);
    }

    function consulta()
    {
        $productos = new Modelos\Producto();
        $datos = $productos->consulta()->obt();

        foreach ($datos as $key => $producto) {
            $update = new Modelos\Producto($producto['id_producto']);
            $update->identificador = Helpers\Cadenas::guionCase(trim($update->nombre_comercial));
            $update->salvar();
        }

        Helpers\Debug::imprimir("guardado", TRUE);
    }
}
