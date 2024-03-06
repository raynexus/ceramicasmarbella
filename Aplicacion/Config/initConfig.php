<?php

/**
 * Archivo Inicial de configuracion de la Aplicacion 
 * El InitConfig es usado para definir todas aquellas variables globales o constantes que
 * solo sean utilizadas en un ambiente especifico (como desearrollo, calidad o producción), esto facilita
 * agrupar en un solo archivo todo lo que no desea ser pasado de un ambiente a otro.
 */

/**
 * @constante APP_MANTENIMIENTO Define si la aplicacion se encuentra en mantenimiento 
 */
define('APP_MANTENIMIENTO', '');
define('BD_REQUERIDA', TRUE);
/**
 * @constante MANEJADOR_BD Manejador de Base de datos utilizado en el sistema 
 */
define('MANEJADOR_BD', 'MySQL');

/**
 * @constante manejadorBD Manejador de Base de datos utilizado en el sistema 
 */
define('manejadorBD', 'MySQL');

define('URL_BASE', 'http://dev.ceramicasmarbella.local/');

define('NOMBRE_APP', 'Ceramicas Marbella C.A');
define('LOGO_APP', '/htdocs/img/logos/logo_marbella_negro.png');

define('URL_APP_PUBLICA', '');
define('URL_FB', 'https://www.facebook.com/ceramicas.marbella');
define('URL_TWITTER', '');
define('URL_IMAGENES', '');
define('URL_MEDIA_CORREOS', '');
define('URL_GOOGLE', '');
define('URL_INSTAGRAM', 'https://www.instagram.com/ceramicasmarbella/');
define('CUENTA_TWITTER', 'https://twitter.com/marbellatiles');
define('CUENTA_INSTAGRAM', 'ceramicasmarbella');
/**
 * @constante URL_APP Direccion URL de la App 
 */
define('URL_APP', '/');

/**
 * @constante ENTORNO_APP Define el entorno de la aplicacion 
 */
define('ENTORNO_APP', 'prod');


# - img size
define('IMG_TAM_LG', '1200');
define('IMG_TAM_MD', '900');
define('IMG_TAM_SM', '600');
define('IMG_TAM_XS', '140');


$GLOBALS['modulos'] = [
    'jadmin'    =>    'Jadmin',
    'contacto'    => 'Contacto'
];
