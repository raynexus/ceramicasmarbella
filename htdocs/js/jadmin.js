/**
 * Created by arkos on 19/6/2017.
 */
(function () {
    'use strict';

    const URL = $('body').data('url');

    $('[data-carga="imagen"]').jCargaFile({
        onLoad: function (e) {

            var image = new Image();
            var ele = e.target;
            var $container = $('.img-container');
            image.className = 'testing';
            $container.html('<img src="' + ele.result + '" style="max-height:200px"/>');
        }
    });

})(jQuery);
