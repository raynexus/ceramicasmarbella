<?php

/**
 * Clase Modelo
 * @author Julio Rodriguez
 * @package
 * @version
 * @category
 */

namespace App\Config;

class Mail
{

	var $index = [
		'Username'	=> 'sitioweb@ceramicasmarbella.com',
		'Password'	=> 'm4rb3ll4',
		'From'	   	=> 'sitioweb@ceramicasmarbella.com',
		'FromName'	=> NOMBRE_APP,
		'Host'	   	=> 'a2plcpnl0586.prod.iad2.secureserver.net',
		'Port'      => 465
	];

	var $data = [
		'url_sitio'	   			=> URL_APP_PUBLICA,
		'url_app'				=> URL_APP_PUBLICA,
		'logo_app'				=> 'http://ceramicasmarbella.com/htdocs/img/logos/logo_marbella_negro.png',
		'url_app_fb'			=> URL_FB,
		'url_app_twitter'		=> URL_TWITTER,
		'url_imagenes'			=> URL_IMAGENES,
		'url_media_app'			=> URL_MEDIA_CORREOS,
		'url_app_instagram'		=> URL_INSTAGRAM,
		'cuenta_twitter_app'	=> CUENTA_TWITTER,
		'cuenta_instagram_app'	=> CUENTA_INSTAGRAM,
		'nombre_app'			=> TITULO_SISTEMA
	];
}
