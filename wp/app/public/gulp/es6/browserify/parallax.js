class Parallax {
  constructor() {
    jQuery(window).on('scroll load resize', () => {
      this.scroll();
    });
  }
  scroll() {
    let top = jQuery(window).scrollTop();
    jQuery('.js-move').each((i, e) => {
      if (jQuery(e).offset().top < top + jQuery(window).outerHeight() - 100) {
        jQuery(e).addClass('h-after-effect');
      }
    });

    // if (top == 0) {
    //   $('.js-mainHeader').removeClass('is-scroll');
    // } else {
    //   $('.js-mainHeader').addClass('is-scroll');
    // }
  }
}

export default Parallax;
