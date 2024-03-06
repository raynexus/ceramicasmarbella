<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <?= $this->printHeadTags() ?>
    <meta name="author" content="jidadesarrollos">
    <meta name="description" content="Somos fabricantes de una amplia variedad de baldosas de cerámica.">
    <!-- OG Tags -->
    <meta property="og:locale" content="es_VE" />
    <meta property="og:site_name" content="Marbella Cerámicas C.A" />
    <meta property="og:title" content="Marbella Cerámicas C.A" />
    <meta property="og:description" content="Somos fabricantes de una amplia variedad de baldosas de cerámica." />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="http://ceramicasmarbella.com" />
    <meta property="og:image" content="http://ceramicasmarbella.com/htdocs/img/logos/logo_marbella_blanco.png" />
    <meta property="og:image:width" content="490" />
    <meta property="og:image:height" content="189" />
    <meta property="twitter:url" content="http://ceramicasmarbella.com" />
    <meta property="twitter:description" content="Somos fabricantes de una amplia variedad de baldosas de cerámica." />
    <meta property="twitter:image" content="http://ceramicasmarbella.com/htdocs/img/logos/logo_marbella_blanco.png" />
    <?= $this->imprimirLibrerias('css') ?>
</head>

<body data-url="<?= URL_BASE ?>">

    <?php $this->incluirLayout('elementos/header-menu') ?>
    <?php $this->incluirLayout('elementos/header-banner') ?>
    <main class="main-content">
        <?= $contenido ?>
    </main>
    <?php $this->incluirLayout('elementos/footer') ?>
    <?= $this->imprimirLibrerias('js') ?>

</body>

</html>