<body>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/ja_JP/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<!-- {assign var="url" value="http://manga.eee-ch.net"} -->

<div data-role="page" data-theme="b">
<header data-role="header" data-theme="a" class="center">
<img src="/img/sp/sc_logo.png" alt="ソーシャル漫画クリエイト" class="logo">
   <aside class="ui-grid-b">
    <div class="ui-block-a">
      <a href="https://twitter.com/share" class="twitter-share-button" data-url="<!--{$url}--><!--{$smarty.server.REQUEST_URI}-->" data-text="" data-hashtags="socialcreate"></a>
    </div><!-- tw float-center-content-->
    <div class="ui-block-b">
      <div class="fb-like float-center-content" data-href="<!--{$url}--><!--{$smarty.server.REQUEST_URI}-->" data-send="false" data-layout="button_count" data-width="30" data-show-faces="false" data-font="verdana">
      </div><!-- fb float-center-content-->
    </div>
    <div class="ui-block-c">
      <script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
      <g:plusone></g:plusone>
    </div>
    </aside><!-- end .snsContainer-->

</header><!--/data-role="header"-->
