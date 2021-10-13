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
      <span class="formSelect_radio"></span>
    </a>

    <a href="<?php print SITE_URL; ?>/contact-inquiry">
      お問い合わせ
      <span class="formSelect_radio is-select"></span>
    </a>
  </div>

  <div id="form02">
    <h2 class="pageHeader02">お問い合わせ</h2>
    <p class="pageTxt">
      以下のフォームに必須項目をご記入の上、送信してください。<br>後日、入力して頂いた連絡先（電話、またはメール）に、ご連絡させていただきます。
    </p>
    <small class="formSmall">は必須項目となります。</small>
    <?php the_content(); ?>
  </div>

</div>

<?php get_footer(); ?>
