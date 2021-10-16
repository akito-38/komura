<?php
/* header.php *
　すべてのページにおいて共通で読み込むヘッダーテンプレート。
 */

include(TEMPLATEPATH. '/inc/constants.php');

?>
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="format-detection" content="telephone=no">
  <meta name="viewport" content="width=device-width">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+JP:wght@400;700&display=swap" rel="stylesheet">
  <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

  <!-- へッダー -->
  <header class="bl_mainHeader">
    <h1 class="bl_mainHeader_logo">
      <a href="<?php print SITE_URL; ?>">
        古村幹夫 公式サイト
        <span>Komura Mikio Official Site</span>
      </a>
    </h1>

    <button class="bl_menuSwitch js-menuSwitch">
      <span></span>
    </button>

    <nav class="bl_mainHeader_menu">
      <button class="menuClose js-close"></button>
      <div class="bl_mainHeader_logo">
        <a href="<?php print SITE_URL; ?>">
          古村幹夫 公式サイト
          <span>Komura Mikio Official Site</span>
        </a>
      </div>

      <ul class="bl_mainHeader_list">
        <li>
          <a href="<?php if(!is_front_page()) print SITE_URL; ?>#content01"
            <?php if(is_front_page()) print 'class="js-scroll"'; ?>>
            ごあいさつ
            <span>Message</span>
          </a>
        </li>
        <li>
          <a href="<?php if(!is_front_page()) print SITE_URL; ?>#content02"
            <?php if(is_front_page()) print 'class="js-scroll"'; ?>>
            政　策
            <span>Policy</span>
          </a>
        </li>
        <li>
          <a href="<?php if(!is_front_page()) print SITE_URL; ?>#content03"
            <?php if(is_front_page()) print 'class="js-scroll"'; ?>>
            プロフィール
            <span>Profile</span>
          </a>
        </li>
        <li>
          <a href="<?php if(!is_front_page()) print SITE_URL; ?>#content04"
            <?php if(is_front_page()) print 'class="js-scroll"'; ?>>
            活動報告
            <span>Activity report</span>
          </a>
        </li>
        <li>
          <a href="<?php print SITE_URL; ?>/contact">
            コンタクト
            <span>Contact</span>
          </a>
        </li>

      </ul>
      <div class="iconList">
        <a href="https://bit.ly/3lFmvvg" target="_blank">
          <img src="<?php print TMP_URL; ?>/img/icon/icon-pointer.svg" alt="" width="10" height="15" loading="lazy">
          アクセス
        </a>
        <a href="https://www.facebook.com/profile.php?id=100072227041135" target="_blank">
          <img src="<?php print TMP_URL; ?>/img/icon/icon-facebook.svg" alt="" width="20" height="20" loading="lazy">
        </a>
        <a href="https://mobile.twitter.com/mikio_komura" target="_blank">
          <img src="<?php print TMP_URL; ?>/img/icon/icon-twitter.svg" alt="" width="20" height="20" loading="lazy">
        </a>
      </div>
    </nav>
  </header>
