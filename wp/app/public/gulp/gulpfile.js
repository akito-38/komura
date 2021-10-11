const gulp = require('gulp');
const bourbon = require('node-bourbon');
const sass = require('gulp-sass');
const frontnote = require("gulp-frontnote");
const uglify = require("gulp-uglify");
const browser = require("browser-sync");
const plumber = require("gulp-plumber");
const notify = require('gulp-notify');
const csscomb = require('gulp-csscomb');
const csslint = require('gulp-csslint');
const jshint = require('gulp-jshint');
const imagemin = require('gulp-imagemin');
const pngquant = require('imagemin-pngquant');
const pleeease = require('gulp-pleeease');
const babel = require('gulp-babel');
const sourcemaps = require('gulp-sourcemaps');
const browserify = require('browserify');
const babelify = require('babelify');
const source = require('vinyl-source-stream');

//ファイルパス関係
const f_root = "../";
const f_html = "../wp-content/themes/komura/";
const f_css = "../wp-content/themes/komura/";
const f_js = "../wp-content/themes/komura/js/";
const f_image = "img/";
const f_image_min = "../wp-content/themes/komura/" + f_image;
const f_sass = "sass/";
const f_es6 = "es6/";
const f_es5 = "es5/";
const other = "other/";
const f_php = "php/";
const f_image_gulp = "img/";
const root_font_px = 14;
const proxy = 'http://famionekomura.local';
const browsers = [
  "last 3 versions",
  "> 1%",
];

gulp.task('browser-sync', function() {
    browser({
        proxy: proxy
    });
});

bourbon.with( f_sass + '/style.scss');
//sass
gulp.task('sass', () => {
  return gulp.src(f_sass + '**/*.scss')
    .pipe(plumber({
      errorHandler: notify.onError('<%= error.message %>')
    }))
    .pipe(sass({
      includePaths: bourbon.includePaths
    }))

    .pipe(pleeease({
      rem: false,
      browsers: browsers,
      minifier: true, //変更
      mqpacker: true,
    }))
    // .pipe(csscomb())
    .pipe(gulp.dest(f_css))
    //ブラウザリロード
    .pipe(browser.reload({
      stream: true
    }));
});

//cssComb実行
gulp.task('styles', () => {
    return gulp.src([f_css + "**/*.css", "!" + f_css + "min/**/*.css"])
        .pipe(csscomb())
        .pipe(gulp.dest(f_css));
});

//css構文チェック
gulp.task('csslint', () => {
    gulp.src([f_css + "**/*.css", "!" + f_css + "min/**/*.css"])
        .pipe(csslint())
        .pipe(csslint.reporter());
});

//スタイルガイド作成
gulp.task('guide', () => {
    gulp.src(f_sass + '**/*.scss').pipe(frontnote({
        css: '../css/style.css'
    }));
});

//HTML構文チェック
gulp.task('htmllint', () => {
    gulp.src(f_html + '**/*.html')
        .pipe(htmlhint())
        .pipe(htmlhint.reporter());
});

//JSのminify化
gulp.task("js", () => {
    gulp.src([f_js + "**/*.js", "!" + f_js + "min/**/*.js"])
        .pipe(plumber({
            errorHandler: notify.onError('<%= error.message %>')
        }))
        .pipe(uglify())
        .pipe(gulp.dest(f_js + "min"))
        //ブラウザリロード
        .pipe(browser.reload({
            stream: true
        }));
});

//jsチェック
gulp.task('jslint', () => {
    return gulp.src(f_js + '**/*.js')
        .pipe(jshint())
        .pipe(jshint.reporter('default'));
});

//画像圧縮
gulp.task('image', () => {
    return gulp.src([f_image_gulp + '**/*'])
        .pipe(imagemin({
            progressive: true,
            svgoPlugins: [{
                removeViewBox: false
            }],
            use: [pngquant()]
        }))
        .pipe(gulp.dest(f_image_min));
});

//ベンダープレフィレクスとメディアクエリとコンブ
gulp.task('ple', () => {
    return gulp.src([f_css + "**/*.css", "!" + f_css + "min/**/*.css"])
        .pipe(plumber({
            errorHandler: notify.onError('<%= error.message %>')
        }))
        .pipe(pleeease({
            browsers: browsers,
            minifier: false, //変更
            mqpacker: true,
            rem: [root_font_px + "px"]
        }))
        .pipe(csscomb())
        .pipe(gulp.dest(f_css))
        .pipe(browser.reload({
            stream: true
        }));
});


gulp.task('browserify', () => {
  browserify(f_es6 + 'browserify/main.js', {
      debug: false //ソースマップの調整
    })
    .transform(babelify, {
      presets: ['es2015']
    })
    .bundle()
    .on("error", function (err) {
      console.log("Error : " + err.message);
    })
    .pipe(source('main.js'))
    .pipe(gulp.dest(f_js))
});



gulp.task('babel', () => {
  gulp.src([f_es6 + '**/*.js', "!" + f_es6 + 'browserify/*'])
    .pipe(plumber({
      errorHandler: notify.onError('<%= error.message %>')
    }))
    .pipe(babel(
      {
       presets: ['@babel/env']
      }
     ))
    .pipe(gulp.dest(f_js))

  gulp.src(f_es5 + '**/*.js')
    .pipe(gulp.dest(f_js))
});

gulp.task('move', () => {
    gulp.src(other + '**/*')
        .pipe(gulp.dest(f_html))
});

gulp.task('php', () => {

    gulp.src([f_php + "**/*.php"])
        .pipe(browser.reload({
            stream: true
        }))
        .pipe(gulp.dest(f_html))
});


gulp.task('watch', function(){
  gulp.watch(f_sass + "**/*.scss").on('change', gulp.series('sass'));
  gulp.watch(f_es6 + '**/*.js').on('change', gulp.series('babel'));
  gulp.watch(f_es6 + 'browserify/**/*.js').on('change', gulp.series('browserify'));
  gulp.watch(f_es5 + '**/*.js').on('change', gulp.series('babel'));
  gulp.watch(f_php + '**').on('change', gulp.series('php'));
  gulp.watch(f_image_gulp + '**').on('change', gulp.series('image'));
});

gulp.task('default', gulp.series( gulp.parallel('sass', 'babel', 'browserify', 'image', 'move', 'php', 'browser-sync','watch')));
// gulp.task("comp", ['styles', 'js']);
// gulp.task("check", ['csslint', 'jslint']);
