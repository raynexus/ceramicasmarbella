<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1 class="title-section text-center">
                Ubica la tienda m&aacute;s cercana en nuestra <br />
                Red de Distribuidores
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="map-container" data-estados='<?= $this->jsonEstados ?>'>
                <div id="map"></div>
                <div class="state-list">
                    <h4>Estados</h4>
                    <section class="list-container nscroll">
                        <ul class="list-unstyled ">
                            <?php foreach ($this->estados as $key => $estados) : ?>
                                <li>
                                    <a href="#" data-info='<?= json_encode($estados) ?>'><?= $estados['estado'] ?></a>
                                </li>
                            <?php endforeach ?>
                        </ul>
                    </section>
                </div>
                <section data-clientes='<?= $this->jsonClientes ?>' class="client-list nscroll">
                    <ul class="list-unstyled">
                        <?php foreach ($this->clientes as $key => $cliente) : ?>
                            <li>
                                <h4><?= $cliente['cliente'] ?></h4>
                                <h5><?= $cliente['ciudad'] ?></h5>
                                <span class="direccion"><?= $cliente['direccion'] ?></span>
                            </li>
                        <?php endforeach ?>

                    </ul>
                </section>
            </div>

        </div>
    </div>
    <div class="row">
        <div class="col-md-12 text-right">
            <img class="logo" src="<?= $this->media('img/logos', 'logo_marbella_negro.png', FALSE) ?>" alt="Cerámicas marbella" class="mb-45" />
        </div>
    </div>

</div>



<script type="mostache-script" id="mapTemplate">
    <h3>{{ubicacion}}</h3>
    <ul class="list-unstyled">
    {{#clientes}}
    <li>
    <h4>{{cliente}}</h4>
    <h5>{{ciudad}}</h5>
    <span class="direccion">{{direccion}}</span>
    <span class="telefono">{{telefono_contacto}}</span>
    </li>	
    {{/clientes}}
    </ul>

</script>