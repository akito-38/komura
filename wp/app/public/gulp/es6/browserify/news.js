class News {
  constructor() {
    this.index = 1;
    this.max = jQuery('.js-news__parts').length;
    setInterval(() => {
      this.change();
    }, 5000);
  }
  change() {
    jQuery('.js-news__parts:nth-child(' + this.index + ')').fadeOut(300);
    this.index++;
    if (this.index > this.max) {
      this.index = 1;
    }
    jQuery('.js-news__parts:nth-child(' + this.index + ')').delay(100).fadeIn(300);
  }
}

export default News;