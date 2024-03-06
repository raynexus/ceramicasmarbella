<?php

namespace App\Controllers;

class AppController extends \Jida\Core\Controller
{
    function __construct()
    {

        parent::__construct();
        $this->layout('principal');
        if ($this->solicitudAjax()) {
            $this->layout('ajax');
        }
        $this->data([
            'title' => 'Cer&aacute;micas Marbella',
            'subtitulo' => TRUE,
            'imgHeader' => 'home.jpg'
        ]);
    }

    function index()
    {
    }
}
