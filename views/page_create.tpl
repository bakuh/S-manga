<!--{include file="inc/head_inc.tpl"}-->
<!--{include file="inc/header_inc.tpl"}-->

<div data-role="content">
  <ul data-role="listview" data-theme="a" data-dividertheme="c" class="listview-margin-adjust">
    <li data-role="list-divider"><span class="font-divider">ページ作成</span></li>
  </ul>
  <form name="form" action="/manga/do_upload" method="POST" ENCTYPE="MULTIPART/FORM-DATA" data-ajax="false">
    <label for="img-upload01">★画像</label>
    <input type="file" name="img-upload01"/>
    <input type="submit" value="作成する!!"/>
  </form>
  
</div>
<!--/data-role="content"-->
<!--{include file="inc/footer_inc.tpl"}-->
