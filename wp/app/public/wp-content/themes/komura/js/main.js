(function(){function r(e,n,t){function o(i,f){if(!n[i]){if(!e[i]){var c="function"==typeof require&&require;if(!f&&c)return c(i,!0);if(u)return u(i,!0);var a=new Error("Cannot find module '"+i+"'");throw a.code="MODULE_NOT_FOUND",a}var p=n[i]={exports:{}};e[i][0].call(p.exports,function(r){var n=e[i][1][r];return o(n||r)},p,p.exports,r,e,n,t)}return n[i].exports}for(var u="function"==typeof require&&require,i=0;i<t.length;i++)o(t[i]);return o}return r})()({1:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var Scroll = function () {
  function Scroll() {
    _classCallCheck(this, Scroll);

    this.init();
  }

  _createClass(Scroll, [{
    key: 'init',
    value: function init() {
      var _this = this;

      jQuery('.js-scroll').on('click', function (e) {
        var target = jQuery(e.currentTarget).attr('href');

        if (target == '#') {
          target = 'html';
        }
        _this.move(jQuery(target));
        return false;
      });
      // let hash = location.hash;
      // if (hash.length > 0) {
      //   setTimeout(() => {
      //     this.move(jQuery(hash));
      //   }, 500)
      // }
    }
  }, {
    key: 'move',
    value: function move(target) {
      jQuery("html,body").animate({
        scrollTop: jQuery(target).offset().top - 80
      }, 500);
    }
  }]);

  return Scroll;
}();

exports.default = Scroll;

},{}],2:[function(require,module,exports){
'use strict';

var _Scroll = require('./Scroll');

var _Scroll2 = _interopRequireDefault(_Scroll);

var _parallax = require('./parallax');

var _parallax2 = _interopRequireDefault(_parallax);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

jQuery(function ($) {
    new _Scroll2.default();
    new _parallax2.default();
    $('.js-kvPageLoad').addClass('is-load');

    $('.js-menuSwitch').on('click', function (e) {
        $(e.currentTarget).addClass('is-active');
    });

    $('.js-close').on('click', function (e) {
        $('.js-menuSwitch').removeClass('is-active');
    });
});

},{"./Scroll":1,"./parallax":3}],3:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var Parallax = function () {
  function Parallax() {
    var _this = this;

    _classCallCheck(this, Parallax);

    jQuery(window).on('scroll load resize', function () {
      _this.scroll();
    });
  }

  _createClass(Parallax, [{
    key: 'scroll',
    value: function scroll() {
      var top = jQuery(window).scrollTop();
      jQuery('.js-move').each(function (i, e) {
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
  }]);

  return Parallax;
}();

exports.default = Parallax;

},{}]},{},[2]);
