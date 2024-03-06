<?php

namespace App\Config\Cliente;

/**
 * Archivos JS Requeridos
 * Los archivos definidos en el primer nivel del arreglo serán incluidos siempre sin importar el ambiente de
 * la aplicacion. Si se desea especificar archivos solo para un ambiente, se debe definir una clave con el nombre del
 * ambiente.
 */
class JS {

    private $js = [
        'prod' => [
            'https://code.jquery.com/jquery-2.2.4.min.js',
            //'iziModal' => URL_BOWER . 'izimodal/js/iziModal.min.js',
            'js' => 'Aplicacion/Layout/default/htdocs/js/min/bundle/marbella.js?v03=4'
        ],
        'dev'  => [
            'jq'           => URL_BOWER . 'jquery/dist/jquery.min.js',
            'jq-ui'        => URL_BOWER . 'jquery-ui/jquery-ui.min.js',
            'bt'           => URL_BOWER . 'bootstrap/dist/js/bootstrap.min.js',
            'owl-carousel' => URL_BOWER . 'owl.carousel/dist/owl.carousel.min.js',
            'wow'          => URL_BOWER . 'wow/dist/wow.min.js',
            'nscroll'      => URL_BOWER . 'jquery.nicescroll/dist/jquery.nicescroll.min.js',
            'mustache'     => URL_BOWER . 'mustache.js/mustache.min.js',
            'bootbox'      => URL_BOWER . 'bootbox.js/bootbox.js',
            'iziModal'     => URL_BOWER . 'izimodal/js/iziModal.min.js',
            //'featherlight'	=>URL_BOWER.'featherlight/realease/featherlight.gallery.js',
            'jd-plugs'     => URL_HTDOCS_JADMIN . 'js/dist/jd.plugs.js',
            'main'         => 'Aplicacion/Layout/default/htdocs/js/main.js'
        ],

        'jadmin' => [
            'jq'       => URL_BOWER . 'jquery/dist/jquery.min.js',
            'jq-ui'    => URL_BOWER . 'jquery-ui/jquery-ui.min.js',
            'bt'       => URL_BOWER . 'bootstrap/dist/js/bootstrap.min.js',
            'bootbox'  => URL_BOWER . 'bootbox.js/bootbox.js',
            'jd-plugs' => URL_HTDOCS_JADMIN . 'js/dist/jd.plugs.js',
            'jadmin'   => URL_JS . 'jida/jadmin.js',
            'admin'    => URL_HTDOCS_JADMIN . 'js/jadmin/admin.js',
            'menu'     => URL_HTDOCS_JADMIN . 'js/libs/menu.js',
            'mustache' => URL_BOWER . 'mustache.js/mustache.min.js'
        ]
    ];

    function js() {
        return $this->js;
    }

    static function archivos() {
        $class = new JS();

        return $class->js();
    }

}
