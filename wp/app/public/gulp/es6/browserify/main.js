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


    $('#postalCode01').on('keyup', (e) => {
        AjaxZip3.zip2addr(e.currentTarget, '', 'address01', 'address01');
    })
    $('#postalCode02').on('keyup', (e) => {
        AjaxZip3.zip2addr(e.currentTarget, '', 'address02', 'address02');
    })

    $('.formSelect').on('change', (e) => {
        $($('.formSelect:checked').val()).show().siblings().hide();
    })
});
