<?php

/**
 * Created by Julio Rodriguez.
 * User: arkos
 * Date: 18/6/2017
 * Time: 5:10 PM
 */
?>
<header class="page-header">
    <h1>Gesti&oacute;n de L&iacute;neas</h1>
</header>

<div class="row">
    <div class="col-md-6">
        <?= $this->form ?>
    </div>
    <div class="col-md-6">
        <div class="alert alert-info">
            <p>
                <i class="fa fa-info-circle"></i>
                Carga la imagen de la L&iacute;nea
            </p>
        </div>
        <figure id="preview-img" class="img-preview img-container">
            <img src="<?= $this->url . '/' . $this->imagen ?>" alt="<?= $this->imagen ?>">
        </figure>
    </div>
</div>

<script type="mostache-script" id="mediaTemplate">
    <img src="{{src}}" alt="{{alt}}" />
</script>