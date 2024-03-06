<?php
$bgs = ['bg-aqua', 'bg-blue', 'bg-orange'];
$i = 0;
?>

<header class="page-header">
    <h1>
        <span class="fa fa-dashboard"></span>
        Dashboard
    </h1>
</header>

<?= \Jida\Helpers\Mensajes::imprimirMensaje('__msjInicioSesion') ?>
<?= \Jida\Helpers\Mensajes::imprimirMensaje() ?>

<div class="row">
    <?php foreach ($this->contadores as $key => $contador) :
        $contador = \Jida\Helpers\Arrays::convertirAObjeto($contador); ?>
        <div class="col-md-3 col-sm-3 col-xs-12">
            <div class="small-box <?= $bgs[$i] ?>">
                <div class="inner">
                    <h3><?= $contador->total ?></h3>
                    <p><?= $contador->descripcion ?></p>
                </div>
            </div>
        </div>
    <?php $i++;
    endforeach ?>
</div>