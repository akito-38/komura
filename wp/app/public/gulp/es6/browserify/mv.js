class Mv {
  constructor() {
    this.next();
  }

  next() {
    let target = jQuery('.js-mv-img__item:last-child');
    target.addClass('is-active');
    let time = target.data('delay');
    jQuery('.js-mv-img__item:nth-last-child(2)').addClass('is-prev');
    setTimeout(() => {
      target.animate({
        opacity: 0
      }, 3000, (e) => {
        target
          .removeClass('is-active').removeClass('is-prev').css('opacity', 1)
          .prependTo('.js-mv-img');
        this.next();
      });
    }, time);
  }
}

export default Mv;