<?php

namespace App\Config;

use Jida\Configuracion\Config;

class Configuracion extends Config
{

    var $logo = "/htdocs/img/logo.png";
    var $mensajes = [
        'info'   => 'alert alert-info',
        'error'  => 'alert alert-danger',
        'alert'  => 'alert alert-warning',
        'suceso' => 'alert alert-success'
    ];

    var $tema = 'default';
    var $modulos = [
        'jadmin'   => 'Jadmin',
        'contacto' => 'Contacto'
    ];

    function __construct()
    {

        $this->definir('configMensajes', $this->mensajes);
        $this->definir('tema', [
            'configuracion' => $this->tema
        ]);
        $GLOBALS['Configuracion'] = $this;
        $GLOBALS['JIDA_CONF'] = $this;

        $GLOBALS['modulos'] = [
            'jadmin'   => 'Jadmin',
            'contacto' => 'Contacto'
        ];
    }

    private function definir($variable, $valor)
    {
        $GLOBALS[$variable] = $valor;
    }
}
