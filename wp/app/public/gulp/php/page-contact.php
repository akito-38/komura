<?php
  get_header();
?>
<header class="pageHeader">
  <h1>コンタクト</h1>
  <div>Contact</div>
</header>

<div class="max-wide">
  <div class="formSelect">
    <a href="<?php print SITE_URL; ?>/contact">
      後援会入会
      <span class="formSelect_radio is-select"></span>
    </a>

    <a href="<?php print SITE_URL; ?>/contact-inquiry">
      お問い合わせ
      <span class="formSelect_radio"></span>
    </a>
  </div>

  <div id="form01">
    <h2 class="pageHeader02">「古村幹夫後援会」ご入会お申込み</h2>
    <p class="pageTxt">
      古村幹夫の信念や政治活動にご賛同いただける皆様に古村幹夫後援会」への入会をお願い申し上げます。ご紹介者がいらっしゃる場合は、ご紹介者覧にご記入ください。入会金や年会費などは一切ございません。以下のフォームに必須項目をご記入の上、送信してください。後日、入力して頂いた連絡先（電話、またはメール）に、ご連絡させていただきます。
    </p>
    <small class="formSmall">は必須項目となります。</small>
    <?php the_content(); ?>
  </div>
</div>

<?php get_footer(); ?>
