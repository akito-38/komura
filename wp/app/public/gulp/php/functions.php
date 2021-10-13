<?php
/* functions.php *
	テーマにさまざまな付加機能を設定するためのファイル。

 */

/* -------------------------------------------------------------
//読み込み
// ------------------------------------------------------------*/
function import_header_scripts() {
     wp_enqueue_style( 'style', get_template_directory_uri() . '/style.css');
    //  wp_enqueue_style( 'slickcs', get_template_directory_uri() . '/slick.css');

     wp_enqueue_script( 'jquery' );
}
add_action( 'wp_enqueue_scripts', 'import_header_scripts' );

/* -------------------------------------------------------------
//JSファイル追加の関数
// ------------------------------------------------------------*/
function my_load_widget_scripts() {
    // wp_enqueue_script( 'autoKana', get_template_directory_uri() . '/js/jquery.autoKana.js', true, array());
    // wp_enqueue_script( 'slick', get_template_directory_uri() . '/js/slick.min.js', true, array());
    wp_enqueue_script( 'zip', 'https://ajaxzip3.github.io/ajaxzip3.js', true, array());
    wp_enqueue_script( 'main', get_template_directory_uri() . '/js/main.js', true, array());


}
// wp_footerに処理を登録
add_action('wp_footer', 'my_load_widget_scripts');

/* -------------------------------------------------------------
//ｐタグ削除
// ------------------------------------------------------------*/
// remove_filter('the_content', 'wpautop');
// remove_filter('the_excerpt', 'wpautop');
// function disable_page_wpautop() {
// 	if ( is_page() ) remove_filter( 'the_content', 'wpautop' );
// }
// add_action( 'wp', 'disable_page_wpautop' );


/* -------------------------------------------------------------
//カスタムメニュー
// ------------------------------------------------------------*/
//register_nav_menu('top_nav','トップページナビゲーション');
//register_nav_menu('footer_nav','フッターナビゲーション');
/* -------------------------------------------------------------
//画像の設定
// ------------------------------------------------------------*/
add_theme_support('post-thumbnails');
//アイキャッチを有効にする
// set_post_thumbnail_size(374, 230,true);
//アイキャッチの基本サイズ設定
  set_post_thumbnail_size(150, 150, false) ;

  // add_image_size('size1',506, 506, true);
  // add_image_size('size2',752, 440, true);
  // add_image_size('size3',2400, 1260, true);
// add_image_size('size2',500, 330, true);
// add_image_size('size2',488, 302, true);
// add_image_size('size3',750, 480, true);


/* -------------------------------------------------------------
// タイトルタグ
// ------------------------------------------------------------*/
function nendebcom_theme_slug_setup() {
   add_theme_support( 'title-tag' );
}
add_action( 'after_setup_theme', 'nendebcom_theme_slug_setup' );

/* -------------------------------------------------------------
// 投稿の名前変更
// // ------------------------------------------------------------*/
// function Change_menulabel() {
//   global $menu;
//   global $submenu;
//   $name = '商品';
//   $menu[5][0] = $name;
//   $submenu['edit.php'][5][0] = $name.'一覧';
//   $submenu['edit.php'][10][0] = '新しい'.$name;
// }
// function Change_objectlabel() {
//   global $wp_post_types;
//   $name = '商品';
//   $labels = &$wp_post_types['post']->labels;
//   $labels->name = $name;
//   $labels->singular_name = $name;
//   $labels->add_new = _x('追加', $name);
//   $labels->add_new_item = $name.'の新規追加';
//   $labels->edit_item = $name.'の編集';
//   $labels->new_item = '新規'.$name;
//   $labels->view_item = $name.'を表示';
//   $labels->search_items = $name.'を検索';
//   $labels->not_found = $name.'が見つかりませんでした';
//   $labels->not_found_in_trash = 'ゴミ箱に'.$name.'は見つかりませんでした';
// }
// add_action( 'init', 'Change_objectlabel' );
// add_action( 'admin_menu', 'Change_menulabel' );


// /* -------------------------------------------------------------
// // カスタムポストタイプ
// // ------------------------------------------------------------*/
// function event_custom_post_type(){
//   $labels = array(
//     'name' => 'スライダー画像',
//     'singular_name' => 'kvimg',
//     'add_new' => '新規追加',
//     'add_new_item' => '新規項目追加',
//     'edit_item' => '項目を編集',
//     'new_item' => '新規項目',
//     'view_item' => '項目を表示',
//     'search_items' => '項目検索',
//     'not_found' =>  '通信が見つかりません',
//     'not_found_in_trash' => 'ゴミ箱にデータはありません',
//     'parent_item_colon' => '',
//   );
//   $args = array(
//     'labels' => $labels,
//     'public' => true,
//     'publicly_queryable' => true,
//     'show_ui' => true,
//     'query_var' => true,
//     'rewrite' => true,
//     'map_meta_cap'    => true,
//     'hierarchical' => false,
//     'has_archive' => true,
//     'menu_position' => 5,
//     'show_in_rest' => true,
//     'supports' => array('title','author'),
//   );
//   register_post_type('kvimg',$args);
// }
// add_action('init', 'event_custom_post_type');
