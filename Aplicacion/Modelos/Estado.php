<?php

namespace App\Modelos;

class Estado extends \Jida\BD\DataModel
{
	var $id_estado;
	var $estado;
	var $capital;
	var $estatus;
	var $lat;
	var $lng;
	var $id_pais;
	var $hc_key;
	protected $tablaBD = 'm_estados';
	protected $pk = 'id_estado';
}
