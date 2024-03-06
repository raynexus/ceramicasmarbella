<?php

namespace App\Modelos;

class Producto extends \Jida\BD\DataModel
{
	var $id_producto;
	var $identificador;
	var $nombre_comercial;
	var $uso;
	var $formato;
	var $producto;
	var $absorcion_agua;
	var $resistencia_mecanica;
	var $resistencia_rayado;
	var $aplicacion_esmalte;
	var $aplicacion_gotas;
	var $serigrafia;
	var $esfumatura;
	var $presentacion;
	var $peso;
	var $paleta;
	var $metros2_paleta;
	var $id_estatus_producto;
	var $id_idioma;
	var $texto_original;

	protected $tablaBD = 't_productos';
	protected $pk = 'id_producto';
}
