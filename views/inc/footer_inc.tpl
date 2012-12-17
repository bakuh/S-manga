<footer data-role="footer" data-theme="c" data-position="fixed">

<nav data-role="navbar" data-theme="c">
  <ul>
<!--{if $smarty.server.REQUEST_URI == "/"}-->
        <li><a href="/" data-icon="home" class="ui-btn-active"><span class="font-nav">ホーム</span></a></li>
<!--{else}-->
        <li><a href="/" data-icon="home"><span class="font-nav">ホーム</span></a></li>
<!--{/if}-->
<!--{if $smarty.server.REQUEST_URI == "/manga/create"}-->
        <li><a href="/manga/create" data-icon="create" class="ui-btn-active" data-ajax="false"><span class="font-nav">つくる</span></a></li>
<!--{else}-->
        <li><a href="/manga/create" data-icon="create"><span class="font-nav">つくる</span></a></li>
<!--{/if}-->
<!--{if $smarty.server.REQUEST_URI == "/manga/mangalist"}-->
        <li><a href="/manga/mangalist" data-icon="read" class="ui-btn-active"><span class="font-nav">読む</span></a></li>
<!--{else}-->
        <li><a href="/manga/mangalist" data-icon="read"><span class="font-nav">読む</span></a></li>
<!--{/if}-->
<!--{if $smarty.server.REQUEST_URI == "/manga/comic-search"}-->
        <li><a href="#socialmanga-menu" data-icon="menu" data-rel="popup" class="ui-btn-active"><span class="font-nav">メニュー</span></a></li>
<!--{else}-->
        <li><a href="#socialmanga-menu" data-rel="popup" data-icon="menu"><span class="font-nav">メニュー</span></a></li>
<!--{/if}-->
  </ul>
</nav>

<div data-role="popup" id="socialmanga-menu">
  <a href="#" data-rel="back" data-role="button" data-theme="c" data-icon="delete" class="ui-btn-right">Close</a>
  <img src="/img/sp/pop_menu.png" alt="メニュー">
    <nav class="ui-grid-c">
	<div class="ui-block-a"><a href="/" data-role="button" data-icon="action" data-iconpos="top"><span class="sm-btn">アクション</span></a></div>
	<div class="ui-block-b"><a href="/" data-role="button" data-icon="search" data-iconpos="top"><span class="sm-btn">サスペンス</span></a></div>
	<div class="ui-block-c"><a href="/" data-role="button" data-icon="love" data-iconpos="top"><span class="sm-btn">恋愛</span></a></div>
	<div class="ui-block-d"><a href="/" data-role="button" data-icon="otona" data-iconpos="top"><span class="sm-btn">オトナ</span></a></div>
	<div class="ui-block-a"><a href="/" data-role="button" data-icon="eat" data-iconpos="top"><span class="sm-btn">グルメ</span></a></div>
	<div class="ui-block-b"><a href="/" data-role="button" data-icon="sports" data-iconpos="top"><span class="sm-btn">スポーツ</span></a></div>
	<div class="ui-block-c"><a href="/" data-role="button" data-icon="dorama" data-iconpos="top"><span class="sm-btn">人間ドラマ</span></a></div>
	<div class="ui-block-d"><a href="/" data-role="button" data-icon="faq" data-iconpos="top"><span class="sm-btn">ノンジャンル</span></a></div>
    </nav>
</div>

</footer><!--/data-role="footer"-->
</div><!--/data-role="page"-->

<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-35433739-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>

</body>
</html>
