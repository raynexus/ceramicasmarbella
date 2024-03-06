<?php

namespace App\Modelos;

class Linea extends \Jida\BD\DataModel
{
	var $id_linea;
	var $linea;
	var $identificador;
	var $imagen;
	var $padre;
	var $hijo;
	var $id_estatus;
	var $carousel_index;
	var $orden_carousel;
	var $id_idioma;
	var $texto_original;


	protected $tablaBD = 'm_lineas';
	protected $pk = 'id_linea';
}
