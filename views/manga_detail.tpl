<!--{include file="inc/head_inc.tpl"}-->

<body>
<div data-role="page" data-theme="b" id="pg-gallery">
<header data-role="header" data-theme="a" class="center">
<div id="fb-root"></div>
<img src="/img/sp/sc_logo.png" alt="ソーシャル漫画クリエイト" class="logo">
   <aside class="float-center">
    <div class="float-center-wrap">
      <div class="float-center-content">
        <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://49.212.143.101/index.html" data-text="" data-hashtags="socialcreate"></a>
      </div><!-- tw float-center-content-->
      <div class="fb-like float-center-content" data-href="http://49.212.143.101/" data-send="false" data-layout="button_count" data-width="30" data-show-faces="false" data-font="verdana">
        </div><!-- fb float-center-content-->
      </div>
    </aside><!-- end .snsContainer-->
</header><!--/data-role="header"-->


<div data-role="content">
<!--{include file="inc/menu_list_inc.tpl"}-->

<section id="main-contents">
<!--{$arrBook.genre_id}-->
<!--{foreach from=$arrBook item=book_item}-->
  <!--{if $book_item.genre_id == "01"}-->
  <div class="box non genre-menu-adjust">
    <span class="font-divider"><!--{$book_item.title_name}--></span>
    <aside class="aside-btn-position"><a href="/manga/genrelist/non" data-role="button" data-mini="true" data-iconpos="top" data-inline="true" data-theme="a" data-icon="faq" class="aside-btn"></a></aside>
  </div>

  <!--{elseif $book_item.genre_id == "02"}-->
  <div class="box love genre-menu-adjust">
    <span class="font-divider"><!--{$book_item.title_name}--></span>
    <aside class="aside-btn-position"><a href="/manga/genrelist/love" data-role="button" data-mini="true" data-iconpos="top" data-inline="true" data-theme="a" data-icon="love" class="aside-btn"></a></aside>
  </div>


  <!--{elseif $book_item.genre_id == "05"}-->
  <div class="box action genre-menu-adjust">
    <span class="font-divider"><!--{$book_item.title_name}--></span>
    <aside class="aside-btn-position"><a href="/manga/genrelist/action" data-role="button" data-mini="true" data-iconpos="top" data-inline="true" data-theme="a" data-icon="action" class="aside-btn"></a></aside>
  </div>

  <!--{elseif $book_item.genre_id == "04"}-->
  <div class="box saspense genre-menu-adjust">
    <span class="font-divider"><!--{$book_item.title_name}--></span>
    <aside class="aside-btn-position"><a href="/manga/genrelist/saspense" data-role="button" data-mini="true" data-iconpos="top" data-inline="true" data-theme="a" data-icon="search" class="aside-btn"></a></aside>
  </div>

  <!--{elseif $book_item.genre_id == "03"}-->
  <div class="box otona genre-menu-adjust">
    <span class="font-divider"><!--{$book_item.title_name}--></span>
    <aside class="aside-btn-position"><a href="/manga/genrelist/otona" data-role="button" data-mini="true" data-iconpos="top" data-inline="true" data-theme="a" data-icon="otona" class="aside-btn"></a></aside>
  </div>

  <!--{elseif $book_item.genre_id == "06"}-->
  <div class="box eat genre-menu-adjust">
    <span class="font-divider"><!--{$book_item.title_name}--></span>
    <aside class="aside-btn-position"><a href="/manga/genrelist/eat" data-role="button" data-mini="true" data-iconpos="top" data-inline="true" data-theme="a" data-icon="eat" class="aside-btn"></a></aside>
  </div>

  <!--{elseif $book_item.genre_id == "07"}-->
  <div class="box sports genre-menu-adjust">
    <span class="font-divider"><!--{$book_item.title_name}--></span>
    <aside class="aside-btn-position"><a href="/manga/genrelist/sports" data-role="button" data-mini="true" data-iconpos="top" data-inline="true" data-theme="a" data-icon="sports" class="aside-btn"></a></aside>
  </div>

  <!--{elseif $book_item.genre_id == "08"}-->
  <div class="box dorama genre-menu-adjust">
    <span class="font-divider"><!--{$book_item.title_name}--></span>
    <aside class="aside-btn-position"><a href="/manga/genrelist/dorama" data-role="button" data-mini="true" data-iconpos="top" data-inline="true" data-theme="a" data-icon="dorama" class="aside-btn"></a></aside>
  </div>
  <!--{else}-->
  <!--{/if}-->

<div class="padding-content">

<ul data-role="listview" data-dividertheme="a" data-inset="true">
  <li data-role="list-divider">
    <span class="font-divider">テーマ/内容</span>
    <a href="#edit-book-pass" data-rel="popup" data-role="button" data-theme="b" data-iconpos="left" data-icon="gear" data-inline="true" data-mini="true" class="edit-box"><span>漫画情報編集</span></a>
  </li>
  <li data-theme="b" ><span class="dark-em"><!--{$book_item.description}--></span></li>
</ul>

<div class="ui-grid-a">
    <div class="ui-block-a"><a href="#edit-page-pass" data-rel="popup" data-role="button" data-mini="true" data-theme="c" data-iconpos="left" data-icon="gear"><span>ページ編集</span></a></div>
    <div class="ui-block-b"><a href="#add-page" data-rel="popup" data-role="button" data-mini="true" data-theme="c" data-iconpos="left" data-icon="forward"><span>ページ追加</span></a></div>
</div>

<!--{foreachelse}-->
<p>漫画の詳細がありません。<br>ぺこ <(＿ ＿)></p>
<!--{/foreach}-->

<!--{foreach from=$arrPage item=page_no}-->
 <img src="/img/sp/upload/<!--{$page_no.file_name}-->.jpg">

<!--{foreachelse}-->
<p>1ページも投稿されていません…。<br>ぺこ <(＿ ＿)></p>
<!--{/foreach}-->

<ul class="gallery">
  <li><a href="/img/sp/upload/1_1.jpg" data-ajax="false"><img src="/img/sp/upload/1_1.jpg" alt="Kamui 001" /></a></li>  
  <li><a href="/img/sp/upload/2_1.jpg" data-ajax="false"><img src="/img/sp/upload/2_1.jpg" alt="Kamui 002" /></a></li>  
  <li><a href="/img/sp/upload/2_2.jpg" data-ajax="false"><img src="/img/sp/upload/2_2.jpg" alt="Kamui 003" /></a></li>  
  <li><a href="/img/sp/upload/48_1.jpg" data-ajax="false"><img src="/img/sp/upload/48_1.jpg" alt="Kamui 004" /></a></li>  
  <li><a href="/img/sp/upload/48_3.jpg" data-ajax="false"><img src="/img/sp/upload/48_2.jpg" alt="Kamui 005" /></a></li>  
  <li><a href="/img/sp/upload/54_1.jpg" data-ajax="false"><img src="/img/sp/upload/54_1.jpg" alt="Kamui 006" /></a></li>  
  <li><a href="/img/sp/upload/54_2.jpg" data-ajax="false"><img src="/img/sp/upload/54_2.jpg" alt="Kamui 007" /></a></li>  
  <li><a href="/img/sp/upload/54_3.jpg" data-ajax="false"><img src="/img/sp/upload/54_3.jpg" alt="Kamui 008" /></a></li>  
  <li><a href="/img/sp/upload/2_1.jpg" data-ajax="false"><img src="/img/sp/upload/2_1.jpg" alt="Kamui 009" /></a></li>  
</ul>

</div><!--/padding-content -->



</section><!--/main-contents-->
<!--{include file="inc/menu_info_inc.tpl"}-->
</div><!--/data-role="content"-->
<!--{include file="inc/footer_inc.tpl"}-->

<div data-role="popup" id="edit-page-pass">
  <a href="#" data-rel="back" data-role="button" data-theme="c" data-icon="delete" class="ui-btn-right">Close</a>
    <section class="padding-content">
      <p>★上書き・削除するページを選択してください。</p>
      <form name="form" action="/manga/page_edit" method="POST" ENCTYPE="MULTIPART/FORM-DATA" data-ajax="false">
        <select name="page_id" id="page-choice" data-theme="a">
          <option value="">ページを選択して下さい</option>
          <option value="01">ページ1</option>
          <option value="02">ページ2</option>
          <option value="03">ページ3</option>
          <option value="04">ページ4</option>
        </select>
        <label for="img-upload01">★上書きする場合はファイルを選択してください。</label><br>
        <input type="file" name="img-upload01"/>
        <p>★編集パスワードが必要な場合は入力してください</p>
        <input type="password" name="edit_pass" id="edit-pass" value="" maxlength="8" placeholder="編集用パスワード"/>
        
        <input type="hidden" name="book" value="<!--{foreach from=$arrBook item=book_item}--><!--{$book_item.book_id}--><!--{/foreach}-->" />
          <div class="ui-grid-a">
            <div class="ui-block-a"><input type="submit" name="page-edit" value="上書きする" data-theme="a" data-iconpos="left" data-icon="gear"/></div>
            <div class="ui-block-b"><input type="submit" name="page-edit" value="削除する" data-theme="c" data-iconpos="left" data-icon="alert"/></div>
          </div>
      </form>
    </section>
</div>

<div data-role="popup" id="add-page">
  <a href="#" data-rel="back" data-role="button" data-theme="c" data-icon="delete" class="ui-btn-right">Close</a>
    <section class="padding-content">
  <form name="form" action="/manga/do_upload" method="POST" ENCTYPE="MULTIPART/FORM-DATA" data-ajax="false">
    <label for="img-upload01">★追加する画像を選択してください</label>
    <input type="file" name="img-upload01"/>
    <p>★編集パスワードを設定する場合は入力してください<br>※設定しなかった場合は誰でも編集可能になります。</p>
    <input type="password" name="edit_pass" id="edit-pass" value="" maxlength="8" placeholder="編集用パスワード"/>
    <input type="hidden" name="book" value="<!--{foreach from=$arrBook item=book_item}--><!--{$book_item.book_id}--><!--{/foreach}-->" />
    <input type="submit" value="ページを追加!!" data-theme="c" data-iconpos="left" data-icon="forward"/>
  </form>
    </section>
</div>

<div data-role="popup" id="edit-book-pass">
  <a href="#" data-rel="back" data-role="button" data-theme="c" data-icon="delete" class="ui-btn-right">Close</a>
    <section class="padding-content">
      <p>★編集パスワードを入力してください</p>
        <form name="form" action="/manga/book_edit" method="POST" ENCTYPE="MULTIPART/FORM-DATA" data-ajax="false">
          <input type="password" name="edit_pass" id="edit-pass" value="" maxlength="8" placeholder="編集用パスワード"/>
          <input type="hidden" name="book" value="<!--{foreach from=$arrBook item=book_item}--><!--{$book_item.book_id}--><!--{/foreach}-->" />
          <div class="ui-grid-a">
            <div class="ui-block-a"><input type="submit" value="編集する" data-theme="a" data-iconpos="left" data-icon="gear"/></div>
            <div class="ui-block-b"><input type="submit" value="削除する" data-theme="c" data-iconpos="left" data-icon="alert"/></div>
          </div>
       </form>
    </section>
</div>
