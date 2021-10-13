import Scroll from './Scroll';
import Parallax from './parallax';
jQuery(function ($) {
    new Scroll();
    new Parallax();
    $('.js-kvPageLoad').addClass('is-load');

    $('.js-menuSwitch').on('click', (e) => {
        $(e.currentTarget).addClass('is-active');
    });

    $('.js-close').on('click', (e) => {
        $('.js-menuSwitch').removeClass('is-active');
    });

});
