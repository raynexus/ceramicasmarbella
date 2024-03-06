<?php

namespace App\Modelos;

class Cliente extends \Jida\BD\DataModel
{
	var $id_cliente;
	var $id_empresa;
	var $cliente;
	var $telefono_contacto;
	var $id_estado;
	var $ciudad;
	var $direccion;
	var $descripcion;
	var $correo_contacto;
	var $pagina_web;
	var $facebook;
	var $twitter;
	var $instagram;
	var $portada;
	var $id_estatus;
	var $id_idioma;
	var $texto_original;

	protected $tablaBD = 't_clientes';
	protected $pk = 'id_cliente';
}
