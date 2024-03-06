<div class="container">

    <h1 class="title-section mb-45"> &iquest;D&oacute;nde estamos ubicados? </h1>
    <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">

            <h4><strong>OFICINA ADMINISTRATIVA</strong> - CARACAS</h4>
            <p class="texto wow fadeInUp">

                Av. Francisco de Miranda, Torre Provincial, edificio B,
                Piso 11, Ofc. 113, Chacao, Edo. Miranda, Caracas, Venezuela.
            </p>
            <h4><strong>Tel&eacute;fono: </strong> +58 212 2618806</h4>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">

            <h4><strong>PLANTA DE PRODUCCI&Oacute;N</strong> - YARITAGUA</h4>
            <p class="texto wow fadeInUp">
                Carretera Panamericana - Autopista Cimarr&oacute;n Andresote,
                sector Pueblo Nuevo, Yaritagua, Edo. Yaracuy, Venezuela.
            </p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 col-xs-12 col-sm-6">
            <div class="mt-45">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3923.0939927144186!2d-66.85702003474472!3d10.493256442514054!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8c2a59aab2f875d9%3A0xc9478ba40c1ad2d4!2sTorre+Provincial%2C+Avenida+Francisco+de+Miranda%2C+Caracas%2C+Miranda!5e0!3m2!1ses!2sve!4v1496032510106" width="100%" height="450" frameborder="0" style="border:0" llowfullscreen></iframe>
            </div>
        </div>
        <div class="col-md-6 col-xs-12 col-sm-6">
            <div class="mt-45">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d62855.75984472903!2d-69.13137740416128!3d10.059288531452411!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e875aee18ba6035%3A0xb2b59462b7ba85d!2sYaritagua%2C+Yaracuy!5e0!3m2!1ses!2sve!4v1496032711462" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
        </div>

    </div>

    <div class="row">
        <div id="formContacto" class="col-lg-8 col-md-8 col-sm-12 col-xs-12 ">
            <h3 class="title-section"> Llena el Formulario de Contacto y solicita m&aacute;s informaci&oacute;n </h3>
            <?= \Jida\Helpers\Mensajes::imprimirMensaje('msjContacto') ?>
            <?= $this->form ?>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <div class="mt-45">
                <img class="logo" src="<?= $this->media('img/logos', 'logo_marbella_negro.png', FALSE) ?>" alt="" />
            </div>
        </div>
    </div>
</div>
<div class="clearfix"></div>