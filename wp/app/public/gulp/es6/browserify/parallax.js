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
        jQuery(e).addClass('is-active');
      }
    });
  }
}

export default Parallax;