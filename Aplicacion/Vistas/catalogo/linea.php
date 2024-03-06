<?php

use \Jida\Helpers as Helpers;

$ruta = DIR_HTDOCS . 'img/ceramicas/';
$rutaImg = URL_BASE . 'htdocs/img/ceramicas/';
?>
<div class="mb-45 nscroll">
    <div class="container-gallery">
        <div class="row">
            <div class="col-md-12">
                <header class="page-header">
                    <h3 class="title-section"><?= $this->linea ?></h3>
                </header>
            </div>
        </div>
        <div class="row galeria">
            <?php foreach ($this->producto as $key => $prod) :

                $imagenesDetalle = [];
                $producto = Helpers\Arrays::convertirAObjeto($prod);
                $rutaProd = $rutaImg . $this->identificador . '/' . $producto->identificador . '/';
                $directorio = $ruta . $this->identificador . '/' . $producto->identificador . '/';
                $imagenesDetalle = Helpers\Directorios::listarDirectoriosRuta($directorio, $imagenesDetalle, '/.*detalle\.[jpg|png|jpeg]/');
                $img = str_replace('_detalle', '', $imagenesDetalle[0]);

            ?>
                <div class="col-md-4">
                    <figure>
                        <img src="<?= $rutaProd . $img ?>" alt="<?= $producto->nombre_comercial ?>" data-detalle="<?= $rutaProd . $imagenesDetalle[0] ?>" data-producto='<?= json_encode($producto) ?>' class="img-responsive" />
                        <figcaption>
                            <h4 class="img-detail">
                                <?= $producto->nombre_comercial ?>
                            </h4>
                        </figcaption>
                    </figure>

                </div>
            <?php
                $imagenesDetalle = [];
            endforeach;
            ?>
        </div>
    </div>
</div>
<script type="mostache-script" id="lineaTemplate">
    <div class="row">
    <div class="col-md-8">
    <img src="{{img}}" class="img-responsive"/>
    </div>
    <div class="col-md-4">
    <dl>
    <dt>NOMBRE COMERCIAL DEL PRODUCTO </dt>
    <dd class="text-primary">{{nombre_comercial}}</dd>
    <dt>USO</dt>
    <dd>{{uso}}</dd>
    <dt>FORMATO</dt>
    <dd>{{formato}}</dd>
    <dt>PRODUCTO</dt>
    <dd>{{producto}}</dd>


{{#absorcion_agua}}
    <dt>ABSORCION DE AGUA </dt>
    <dd>{{absorcion_agua}}</dd>
{{/absorcion_agua}}
    <dt>RESISTENCIA MECANICA</dt>
    <dd>{{resistencia_mecanica}}</dd>
    <dt>RESISTENCIA AL RAYADO ( P.E.I. )</dt>
    <dd>{{resistencia_rayado}}</dd>
    <dt>APLICACIÓN DE ESMALTE</dt>
    <dd>{{aplicacion_esmalte}}</dd>
{{#aplicacion_gotas}}
    <dt>APLICACIÓN DE GOTAS </dt>
    <dd>{{aplicacion_gotas}}</dd>
{{/aplicacion_gotas}}
    <dt>PRESENTACION</dt>
    <dd>{{presentacion}}</dd>
    <dt>PESO </dt>
    <dd>{{peso}}</dd>
    <dt>PALETA</dt>
    <dd>{{paleta}}</dd>
    <dt>M2 / PALETA	</dt>
    <dd>{{metros2_paleta}}</dd>
    </dl>
    </div>
    </div>
</script>