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
          <a href="#content01">
            ごあいさつ
            <span>Message</span>
          </a>
        </li>
        <li>
          <a href="#content02">
            政　策
            <span>Policy</span>
          </a>
        </li>
        <li>
          <a href="#content03">
            プロフィール
            <span>Profile</span>
          </a>
        </li>
        <li>
          <a href="#content04">
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
        <a href="#">
          <img src="<?php print TMP_URL; ?>/img/icon/icon-pointer.svg" alt="" width="10" height="15" loading="lazy">
          アクセス
        </a>
        <a href="#">
          <img src="<?php print TMP_URL; ?>/img/icon/icon-facebook.svg" alt="" width="20" height="20" loading="lazy">
        </a>
        <a href="#">
          <img src="<?php print TMP_URL; ?>/img/icon/icon-twitter.svg" alt="" width="20" height="20" loading="lazy">
        </a>
      </div>
    </nav>
    <!--
    <button type="button" class="bl_menuSwitch js-menu"><span></span></button>
    <nav class="bl_mainHeader_right">
      <ul class="bl_mainHeader_list">
        <li><a href="#" class="bl_headerNav_txt">妊活コンシェルジュ ファミワン</a></li>
        <li><a href="https://famione.com/benefit/" class="bl_headerNav_txt">妊活・不妊治療の福利厚生</a></li>
        <li><a href="https://famione.com/local/" class="bl_headerNav_txt">自治体の方はこちら</a></li>
        <li class="bl_mainHeader_list_drop js-dropDown">
          <span>サービス</span>
          <ul class="bl_mainHeader_list_sub">
            <li><a href="https://famione.com/live">妊活ライブ</a></li>
            <li><a href="https://famione.com/premium/">プレミアムプラン</a></li>
            <li><a href="https://famione.com/mall/">ファミワンモール</a></li>
            <li><a href="https://famione.com/career/">ファミワンキャリア</a></li>
            <li><a href="https://famione.com/column/">妊コラム</a></li>
          </ul>
        </li>
        <li>
          <a href="https://form.run/@sales-1619151877" class="bl_mainHeader_btn bl_mainHeader_btn--contact">お問い合わせ</a>
        </li>
        <li>
          <a href="https://form.run/@sales-1626158577" class="bl_mainHeader_btn bl_mainHeader_btn--document">資料請求</a>
        </li>
      </ul>
    </nav> -->

  </header>
