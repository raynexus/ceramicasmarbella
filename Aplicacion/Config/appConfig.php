<?php

namespace App\Config;

if (!defined('MAIL_CONTACTO'))
    define('MAIL_CONTACTO', 'contacto@ceramicasmarbella.com');

define('DEFAULT_JADMIN', URL_BASE . '/jadmin/dashboard');


$GLOBALS['_CSS'] = Cliente\CSS::archivos();
$GLOBALS['_JS'] = Cliente\JS::archivos();
$GLOBALS['configJVista'] = ['nroFilas' => 15];

$GLOBALS['modulos'] = [
    'jadmin' => 'Jadmin',
    'contacto' => 'Contacto'
];

$configuracion = new Configuracion();
