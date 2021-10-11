 import Scroll from './Scroll';

 jQuery(function ($) {
     new Scroll();
     $('.js-slider').slick({
         arrows: false,
         dots: true,
         autoplay: true,
         autoplaySpeed: 3000,
         speed: 1000,
         centerMode: true,
         centerPadding: '11.5%',
         responsive: [{
             breakpoint: 768,
             settings: {
                 centerMode: false,
             }
         }]
     });

     $('.js-dropDown').on('click', (e) => {
         $(e.currentTarget).toggleClass('is-open');
     })

     $('.js-menu').on('click', (e) => {
         $('html').toggleClass('is-menu');
     })
 });
