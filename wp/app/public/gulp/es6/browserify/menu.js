class Menu {
  constructor() {
    this.init();
  }

  init() {
    jQuery('.js-menu-switch').on('click', (e) => {
      let $switch = jQuery(e.currentTarget);
      if ($switch.hasClass('is-active')) {
        $switch.removeClass('is-active');
      } else {
        $switch.addClass('is-active');
      }
    });

    jQuery('.js-sub-menu').on('click', (e) => {
      let $switch = jQuery(e.currentTarget);
      if ($switch.hasClass('is-active')) {
        $switch.removeClass('is-active');
      } else {
        $switch.addClass('is-active');
      }
    });
  }

}
export default Menu;
