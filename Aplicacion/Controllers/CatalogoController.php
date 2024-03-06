<?php

namespace App\Controllers;

use Jida\Helpers as Helpers;
use App\Modelos as Modelos;

class CatalogoController extends AppController
{

    var $lineas = [
        'linea-piso-33'  => [
            'titulo'  => 'L&iacute;nea Piso <span>33cm x 33cm</span>',
            'carpeta' => 'linea_piso_33x33'
        ],
        'linea-piso-45'  => [
            'titulo'  => 'L&iacute;nea Piso <span>45cm x 45cm</span>',
            'carpeta' => 'linea_piso_45x45',
        ],
        'linea-pared-25' => [
            'titulo'  => 'L&iacute;nea Pared <span>25cm x 33cm</span>',
            'carpeta' => 'linea_pared_25x33'
        ],
        'linea-mosaico'  => [
            'titulo'  => 'L&iacute;nea Mosaico <span>25cm x 33cm</span>',
            'carpeta' => 'mosaico_pared_25x33'
        ]
    ];

    function index($l = "")
    {

        if (!empty($l))
            $this->_linea($l);

        $linea = new Modelos\Linea();
        $lineas = $linea->consulta([
            'id_linea',
            'linea',
            'identificador',
            'imagen'
        ])
            ->filtro(['id_estatus' => 1])
            ->order('orden_carousel')
            ->obt();

        $this->data([
            'title'     => 'Cat&aacute;logo',
            'titulo'    => 'Cat&aacute;logo',
            'lineas'    => $lineas,
            'imgHeader' => 'cocina.jpg'
        ]);
    }

    function _linea($linea)
    {

        $this->vista = 'linea';

        $l = new Modelos\Linea();
        $l->obtenerBy($linea, 'identificador');

        if ($l->id_linea != NULL) {

            $prodl = new Modelos\ProductosLinea();
            $consulta = $prodl->consulta()->filtro(['id_linea' => $l->id_linea])->obt();

            $producto = new Modelos\Producto();
            $prods = array_column($consulta, 'id_producto');
            $consultaP = $producto->consulta()->in($prods)->obt();

            $this->data([
                'linea'         => $l->linea,
                'identificador' => $linea,
                // 'img' 			=> $imagenes,
                'producto'      => $consultaP
            ]);
        } else
            $this->_404();
    }
}
