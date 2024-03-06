<nav class="navbar navbar-default menu-header">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<?= $this->enlace('/') ?>">
                <img src="<?= $this->media('img/logos', 'logo_marbella_blanco.png', FALSE) ?>" alt="" />
            </a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <h4 class="menu-header">embellece tus espacios</h4>

            <ul class="nav navbar-nav navbar-right">

                <li class="nav-item">
                    <a class="home" href="<?= $this->enlace('/') ?>"> Inicio
                        <div class="icon home"></div>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nosotros" href="<?= $this->enlace('nosotros') ?>">
                        Nosotros
                        <div class="icon nosotros"></div>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="productos" href="<?= $this->enlace('productos') ?>">Productos
                        <div class="icon productos"></div>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="catalogos" href="<?= $this->enlace('catalogo') ?>">Catálogo
                        <div class="icon catalogos"></div>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="distribuidores" href="<?= $this->enlace('distribuidores') ?>">Distribuidores
                        <div class="icon distribuidores"></div>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="contacto" href="<?= $this->enlace('contacto') ?>">Contacto
                        <div class="icon contacto"></div>
                    </a>
                </li>
            </ul>

        </div>
    </div>
    <div class="overlay-menu"></div>
</nav>