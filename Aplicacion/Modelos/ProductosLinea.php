<?php

namespace App\Modelos;

class ProductosLinea extends \Jida\BD\DataModel
{
	var $id_producto_linea;
	var $id_producto;
	var $id_linea;

	protected $tablaBD = 'r_productos_lineas';
	protected $pk = 'id_producto_linea';
}
