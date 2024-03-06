<div class="mb-45">
    <div class="container catalogo-container">
        <div class="row contenido">
            <?php foreach ($this->lineas as $linea) :
                $linea = \Jida\Helpers\Arrays::convertirAObjeto($linea);
            ?>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 mt-45">
                    <h3 class="title-section text-center">
                        <?= $linea->linea ?>
                    </h3>
                    <div class="wow bounceInLeft">
                        <a class="galeria-item" href="/catalogo/<?= $linea->identificador ?>">
                            <figure>
                                <img class="img-portada-galeria" src="<?= $this->media('img/ceramicas', $linea->imagen, FALSE) ?>" alt="Linea Piso <?= NOMBRE_APP ?>" />
                                <figcaption>
                                </figcaption>
                            </figure>
                        </a>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>
<div class="marbella-modal nscroll"></div>