<?php

namespace App\Jadmin\Controllers;

use App\Modelos as Modelos;
use Jida\Helpers as Helpers;

class DashboardController extends JadminController
{

    function index()
    {
        $this->vista = 'dashboard';

        $p = new Modelos\Producto();
        $productos = $p->contar()->fila();

        $l = new Modelos\Linea();
        $lineas = $l->contar()->fila();

        $c = new Modelos\Cliente();
        $clientes = $c->contar()->fila();

        $this->data([
            'contadores' => [
                ['descripcion' => 'L&iacute;neas', 'total' => $lineas['total_count']],
                ['descripcion' => 'Productos', 'total' => $productos['total_count']],
                ['descripcion' => 'Distribuidores', 'total' => $clientes['total_count']]
            ]
        ]);
    }
}
