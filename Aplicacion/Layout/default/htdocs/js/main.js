(function ($) {
    'use strict';
    var $body = $('body');
    var urlWeb = $body.data('url');
    var $scrollPreview = $('.nscroll').niceScroll();

    $('.owl-carousel').owlCarousel({
        loop: true,
        margin: 4,
        nav: false,
        items: 3,
        autoplay: true
    });

    //var $feat = $('.feat').featherlight({'type': 'image'});
    /**
     * Posicionar imagenes del mismo tamanio en nosotros
     */
    if ($('.equal').length) {
        var $img = $('.equal');
        var $img2 = $('.equal-2');

        $img.css({
            'height': $img2.height(),
            'object-fit': 'cover'
        });
    }
    var wow = new WOW().init();

    var $catalogo = $('.catalogo-container');
    var galeria = function (e) {

        var $this = $(this);
        var $modal = $('.marbella-modal');
        e.preventDefault();

        var render = function (e) {

        };

        $.get(urlWeb + $this.attr('href'))
            .done(function (e) {

                $modal.html('<div class="content"><span class="fa fa-times close" data-cierre="true"></span>' + e + '</div>').addClass('open');
                $modal.attr('style', 'overflow: auto; outline: none; cursor: grab; touch-action: none;');

                $body.addClass('no-scroll');
                $body.parent().addClass('no-scroll');

                var $content = $modal.find('.content');
                var $img = $content.find('img');
                var $close = $content.find('.close');

                $scrollPreview.resize();
                $close.on('click', function () {
                    $modal.removeClass('open');
                    $close.off();
                    $body.removeClass('no-scroll');
                    $body.parent().removeClass('no-scroll');
                });
                $img.on('click', function (e) {

                    var $this = $(this);
                    var tpl = $content.find('#lineaTemplate').html();
                    var render = Mustache.render(tpl, {
                        'img': $this.data('detalle'),
                        'nombre_comercial': $this.data('producto').nombre_comercial,
                        'uso': $this.data('producto').uso,
                        'formato': $this.data('producto').formato,
                        'producto': $this.data('producto').producto,
                        'absorcion_agua': $this.data('producto').absorcion_agua,
                        'resistencia_mecanica': $this.data('producto').resistencia_mecanica,
                        'resistencia_rayado': $this.data('producto').resistencia_rayado,
                        'aplicacion_esmalte': $this.data('producto').aplicacion_esmalte,
                        'aplicacion_gotas': $this.data('producto').aplicacion_gotas,
                        'esfumatura': $this.data('producto').esfumatura,
                        'metros2_paleta': $this.data('producto').metros2_paleta,
                        'peso': $this.data('producto').peso,
                        'paleta': $this.data('producto').paleta,
                        'presentacion': $this.data('producto').presentacion,
                        'serigrafia': $this.data('producto').serigrafia
                    });

                    bootbox.dialog({'message': render, 'size': 'large'});

                });
            });
    };
    $catalogo.find('.galeria-item').on('click', galeria);

})(jQuery);
