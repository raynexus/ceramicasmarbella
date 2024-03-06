<header class="banner-section" style="background-image: url(<?= $this->media('img/banners', $this->imgHeader, FALSE) ?>);">
    <?php if ($this->subtitulo) : ?>
        <h3 class="title-middle wow fadeInUpBig">• Belleza • Durabilidad • Resistencia •</h3>
    <?php endif ?>
    <h1 class="<?= ($this->subtitulo) ? 'title' : 'title middle' ?>"><?= $this->titulo ?></h1>
</header>