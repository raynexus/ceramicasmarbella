<?php

namespace App\Config\Cliente;

/**
 * Archivos CSS Requeridos
 * Los archivos definidos en el primer nivel del arreglo serán incluidos
 * siempre sin importar el ambiente de la aplicacion. Si se desea especificar archivos solo para un ambiente,
 * se debe definir una clave con el nombre del ambiente.
 */
class CSS {

    private $css = [
        [
            'href' => "/htdocs/img/icons/ia-icon.png",
            'rel'  => 'shortcut icon'
        ],
        'roboto' => 'https://fonts.googleapis.com/css?family=Roboto:100i,300,400,700" rel="stylesheet',
        'saira'  => 'https://fonts.googleapis.com/css?family=Saira:400,600,700,800,900',
        'prod'   => [
            'css' => 'Aplicacion/Layout/default/htdocs/css/min/bundle/marbella.css?v0.0.3',
            //'izimodal' => URL_BOWER . 'izimodal/css/iziModal.min.css'
        ],
        'dev'    => [
            'app'          => URL_HTDOCS_TEMAS . 'default/htdocs/css/app/marbella.css',
            'font-awesome' => URL_HTDOCS_JADMIN . 'css/font-awesome.min.css',
            'owl'          => URL_BOWER . 'owl.carousel/dist/assets/owl.carousel.min.css',
            'owl-theme'    => URL_BOWER . 'owl.carousel/dist/assets/owl.theme.default.min.css',
            'animate'      => URL_BOWER . 'animate.less/animate.min.css',
            //'izimodal'     => URL_BOWER . 'izimodal/css/iziModal.min.css',
            //		'featherlight'	=>URL_BOWER.'featherlight/src/featherlight.gallery.css',
        ],
        'jadmin' => [
            'bootstrap'    => URL_BOWER . 'bootstrap/dist/css/bootstrap.min.css',
            'font-awesome' => URL_HTDOCS_JADMIN . 'css/font-awesome.min.css',
            'admin'        => URL_HTDOCS_JADMIN . 'css/dist/jadmin.css',
            'jadmin'       => URL_HTDOCS_TEMAS . 'default/htdocs/css/jadmin/jadmin.css'
        ],
    ];

    function css() {
        return $this->css;
    }

    static function archivos() {
        $clase = new CSS();

        return $clase->css();
    }

}
