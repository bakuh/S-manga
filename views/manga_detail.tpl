<!--{include file="inc/head_inc.tpl"}-->
<!--{include file="inc/header_inc.tpl"}-->
<div data-role="content">
<!--{$arrBook.genre_id}-->
<!--{foreach from=$arrBook item=book_item}-->
  <!--{if $book_item.genre_id == "01"}-->
  <div class="box non">
    <h1><!--{$book_item.title_name}--></h1>
    <aside class="aside-btn-position"><a href="/manga/genrelist/non" data-role="button" data-mini="true" data-iconpos="top" data-inline="true" data-theme="a" data-icon="faq" class="aside-btn"></a></aside>
  </div>

  <!--{elseif $book_item.genre_id == "02"}-->
  <div class="box love">
    <span class="font-divider"><!--{$book_item.title_name}--></span>
    <aside class="aside-btn-position"><a href="/manga/genrelist/love" data-role="button" data-mini="true" data-iconpos="top" data-inline="true" data-theme="a" data-icon="love" class="aside-btn"></a></aside>
  </div>


  <!--{elseif $book_item.genre_id == "05"}-->
  <div class="box action">
    <span class="font-divider"><!--{$book_item.title_name}--></span>
    <aside class="aside-btn-position"><a href="/manga/genrelist/action" data-role="button" data-mini="true" data-iconpos="top" data-inline="true" data-theme="a" data-icon="action" class="aside-btn"></a></aside>
  </div>

  <!--{elseif $book_item.genre_id == "04"}-->
  <div class="box suspense">
    <span class="font-divider"><!--{$book_item.title_name}--></span>
    <aside class="aside-btn-position"><a href="/manga/genrelist/suspense" data-role="button" data-mini="true" data-iconpos="top" data-inline="true" data-theme="a" data-icon="suspense" class="aside-btn"></a></aside>
  </div>

  <!--{elseif $book_item.genre_id == "03"}-->
  <div class="box otona">
    <span class="font-divider"><!--{$book_item.title_name}--></span>
    <aside class="aside-btn-position"><a href="/manga/genrelist/otona" data-role="button" data-mini="true" data-iconpos="top" data-inline="true" data-theme="a" data-icon="otona" class="aside-btn"></a></aside>
  </div>

  <!--{elseif $book_item.genre_id == "06"}-->
  <div class="box eat">
    <span class="font-divider"><!--{$book_item.title_name}--></span>
    <aside class="aside-btn-position"><a href="/manga/genrelist/eat" data-role="button" data-mini="true" data-iconpos="top" data-inline="true" data-theme="a" data-icon="eat" class="aside-btn"></a></aside>
  </div>

  <!--{elseif $book_item.genre_id == "07"}-->
  <div class="box sports">
    <span class="font-divider"><!--{$book_item.title_name}--></span>
    <aside class="aside-btn-position"><a href="/manga/genrelist/sports" data-role="button" data-mini="true" data-iconpos="top" data-inline="true" data-theme="a" data-icon="sports" class="aside-btn"></a></aside>
  </div>

  <!--{elseif $book_item.genre_id == "08"}-->
  <div class="box dorama">
    <span class="font-divider"><!--{$book_item.title_name}--></span>
    <aside class="aside-btn-position"><a href="/manga/genrelist/dorama" data-role="button" data-mini="true" data-iconpos="top" data-inline="true" data-theme="a" data-icon="dorama" class="aside-btn"></a></aside>
  </div>
  <!--{else}-->
  <!--{/if}-->

  <div class="padding-content">
    <section class="box-description">
      <h3>「<!--{$book_item.title_name}-->」の内容</h3><span class="dark-em"><!--{$book_item.description}--></span>
    </section>



<!--{foreachelse}-->
<p>漫画の詳細がありません。<br>ぺこ <(＿ ＿)></p>
<!--{/foreach}-->

<!--{foreach from=$arrPage item=page_no}-->
 <img src="/img/sp/upload/<!--{$page_no.file_name}-->.jpg">

<!--{foreachelse}-->
<p>1ページも投稿されていません…。<br>ぺこ <(＿ ＿)></p>
<!--{/foreach}-->

<section id="pg-gallery">
<ul id="Gallery" class="gallery">
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
</section>

  <form name="form" action="/manga/do_upload" method="POST" ENCTYPE="MULTIPART/FORM-DATA" data-ajax="false">
    <label for="img-upload01">★画像(必須)<br>※最低1ページはUPしてください。</label>
    <input type="file" name="img-upload01"/>
    <input type="hidden" name="book" value="<!--{foreach from=$arrBook item=book_item}--><!--{$book_item.book_id}--><!--{/foreach}-->" />
    <input type="submit" value="作成する!!"/>
  </form>

</div><!--/padding-content -->
</div><!--/data-role="content"-->
<!--{include file="inc/footer_inc.tpl"}-->
