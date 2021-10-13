class Scroll {
  constructor() {
    this.init();
  }

  init() {
    jQuery('.js-scroll').on('click', (e) => {
      let target = jQuery(e.currentTarget).attr('href');

      if (target == '#') {
        target = 'html';
      }
      this.move(jQuery(target));
      return false;
    });
    // let hash = location.hash;
    // if (hash.length > 0) {
    //   setTimeout(() => {
    //     this.move(jQuery(hash));
    //   }, 500)
    // }
  }

  move(target) {
    jQuery("html,body").animate({
      scrollTop: jQuery(target).offset().top - 80
    }, 500);
  }
}

export default Scroll;
