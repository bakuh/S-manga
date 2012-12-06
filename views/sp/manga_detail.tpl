<!--{include file="inc/head_inc.tpl"}-->
<!--{include file="inc/header_inc.tpl"}-->

<div data-role="content">

  <div class="box divider">
    <span class="font-divider"><!--{$arrBook.title_name}--></span>
  </div>

<!--{foreach from=$arrBook item=book_item}-->

<!--{if $manga_id == $book_item.book_id}-->
<p><!--{$book_item.title_name}--></p>
<span><!--{$book_item.description}--></span>
<!--{/if}-->

<!--{foreachelse}-->
<p>1ページも投稿されていません…。<br>ぺこ <(＿ ＿)></p>
<!--{/foreach}-->

<!--{foreach from=$arrPage item=page_no}-->
 <img src="/img/sp/upload/<!--{$page_no.file_name}-->.jpg" alt="漫画風製作所">
<!--{foreachelse}-->
<p>1ページも投稿されていません…。<br>ぺこ <(＿ ＿)></p>
<!--{/foreach}-->

  <form name="form" action="/manga/do_upload" method="POST" ENCTYPE="MULTIPART/FORM-DATA" data-ajax="false">
    <label for="img-upload01">★画像(必須)<br>※最低1ページはUPしてください。</label>
    <input type="file" name="img-upload01"/>
    <input type="submit" value="作成する!!"/>
  </form>

<!--/data-role="content"-->
<!--{include file="inc/footer_inc.tpl"}-->
