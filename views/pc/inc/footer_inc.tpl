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
<a href="#" data-rel="back" data-role="button" data-theme="a" data-icon="delete" data-iconpos="notext" class="ui-btn-right">Close</a>      <ul data-role="listview" data-theme="d" data-dividertheme="i">
	<p>メニュー<p>
<nav class="ui-grid-c">
	<div class="ui-block-a"><a href="/" data-role="button" data-icon="home" data-iconpos="top">読む</a></div>
	<div class="ui-block-a"><a href="/" data-role="button" data-icon="create" data-iconpos="top">ほげ</a></div>

	<div class="ui-block-b"><a href="/" data-role="button" data-icon="read" data-iconpos="top">はげ</a></div>
	<div class="ui-block-b"><a href="/" data-role="button" data-icon="faq" data-iconpos="top">ちげ</a></div>

	<div class="ui-block-c"><a href="/" data-role="button" data-icon="action" data-iconpos="top">むげ</a></div>
	<div class="ui-block-c"><a href="/" data-role="button" data-icon="read" data-iconpos="top">こけ</a></div>

	<div class="ui-block-d"><a href="/" data-role="button" data-icon="read" data-iconpos="top">がが</a></div>
	<div class="ui-block-d"><a href="/" data-role="button" data-icon="read" data-iconpos="top">ちん</a></div>
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
