<!--{include file="inc/head_inc.tpl"}-->
<!--{include file="inc/header_inc.tpl"}-->
<div data-role="content" class="padding-off">
<!--{include file="inc/menu_list_inc.tpl"}-->

<section id="main-contents">
<ul data-role="listview" data-dividertheme="b" class="ganre-menu-adjust">
<li data-role="list-divider"><span class="font-divider">漫画</span>ジャンル</li>


<nav data-role="navbar" data-theme="c">
<ul>
<!--{if $smarty.server.REQUEST_URI == "/manga/genrelist/love"}-->
        <li><a href="#" data-icon="love" data-theme="a" class="ui-btn-active"><span class="font-nav">恋愛<span></a></li>
<!--{else}-->
        <li><a href="/manga/genrelist/love" data-theme="a" data-icon="love"><span class="font-nav">恋愛<span></a></li>
<!--{/if}-->
<!--{if $smarty.server.REQUEST_URI == "/manga/genrelist/action"}-->
        <li><a href="#" data-icon="action" data-theme="a" class="ui-btn-active"><span class="font-nav">アクション<span></a></li>
<!--{else}-->
        <li><a href="/manga/genrelist/action" data-theme="a" data-icon="action"><span class="font-nav">アクション<span></a></li>
<!--{/if}-->
<!--{if $smarty.server.REQUEST_URI == "/manga/genrelist/saspense"}-->
        <li><a href="#" data-icon="search" data-theme="a" class="ui-btn-active"><span class="font-nav">サスペンス<span></a></li>
<!--{else}-->
        <li><a href="/manga/genrelist/saspense" data-theme="a" data-icon="faq"><span class="font-nav">サスペンス<span></a></li>
<!--{/if}-->
<!--{if $smarty.server.REQUEST_URI == "/manga/genrelist/otona"}-->
        <li><a href="#" data-icon="otona" data-theme="a" classearch="ui-btn-active"><span class="font-nav">オトナ<span></a></li>
<!--{else}-->
        <li><a href="/manga/genrelist/otona" data-theme="a" data-icon="otona"><span class="font-nav">オトナ</a></li>
<!--{/if}-->
</ul>
</nav>

<nav data-role="navbar" data-theme="c">
<ul>
<!--{if $smarty.server.REQUEST_URI == "/manga/genrelist/eat"}-->
        <li><a href="#" data-icon="eat" data-theme="a" class="ui-btn-active"><span class="font-nav">グルメ<span></a></li>
<!--{else}-->
        <li><a href="/manga/genrelist/eat" data-theme="a" data-icon="eat"><span class="font-nav">グルメ<span></a></li>
<!--{/if}-->
<!--{if $smarty.server.REQUEST_URI == "/manga/genrelist/sports"}-->
        <li><a href="#" data-icon="sports" data-theme="a" class="ui-btn-active"><span class="font-nav">スポーツ<span></a></li>
<!--{else}-->
        <li><a href="/manga/genrelist/sports" data-theme="a" data-icon="sports"><span class="font-nav">スポーツ<span></a></li>
<!--{/if}-->
<!--{if $smarty.server.REQUEST_URI == "/manga/genrelist/dorama"}-->
        <li><a href="#" data-icon="dorama" data-theme="a" class="ui-btn-active"><span class="font-nav">人間ドラマ<span></a></li>
<!--{else}-->
        <li><a href="/manga/genrelist/dorama" data-theme="a" data-icon="dorama"><span class="font-nav">人間ドラマ<span></a></li>
<!--{/if}-->
<!--{if $smarty.server.REQUEST_URI == "/manga/genrelist/non"}-->
        <li><a href="#" data-icon="non" data-theme="a" class="ui-btn-active"><span class="font-nav">ノンジャンル<span></a></li>
<!--{else}-->
        <li><a href="/manga/genrelist/non" data-theme="a" data-icon="non"><span class="font-nav">ノンジャンル<span></a></li>
<!--{/if}-->
</ul>
</nav>
</ul>


<ul data-role="listview" data-inset="true" data-filter="true" data-filter-placeholder="タイトル検索" data-dividertheme="a"> 
 <li data-role="list-divider">公開中の作品一覧</li>
<!--{foreach from=$book_list_array item=book_item}-->
 <li data-theme="b">
 <a href="/manga/detail/<!--{$book_item.book_id}-->">
<img src="/img/sp/upload/1_1.jpg" alt="てすと">
 <h3><!--{$book_item.title_name}--></h3><span class="ui-li-count"><!--{$book_item.page_no}--></span>
 <p class="new-line"><!--{$book_item.description}--></p>

<!--{if $book_item.genre_id == "1"}-->
 <p class="ui-li-aside"><span class="box non genre-aside">ノンジャンル</span></p>
<!--{elseif $book_item.genre_id == "2"}-->
 <p class="ui-li-aside"><span class="box love genre-aside">恋愛</span></p>
<!--{elseif $book_item.genre_id == "3"}-->
 <p class="ui-li-aside"><span class="box otona genre-aside">オトナ</span></p>
<!--{elseif $book_item.genre_id == "4"}-->
 <p class="ui-li-aside"><span class="box suspense genre-aside">サスペンス</span></p>
<!--{elseif $book_item.genre_id == "5"}-->
 <p class="ui-li-aside"><span class="box action genre-aside">アクション</span></p>
<!--{elseif $book_item.genre_id == "6"}-->
 <p class="ui-li-aside"><span class="box eat genre-aside">グルメ</span></p>
<!--{elseif $book_item.genre_id == "7"}-->
 <p class="ui-li-aside"><span class="box sports genre-aside">スポーツ</span></p>
<!--{elseif $book_item.genre_id == "8"}-->
 <p class="ui-li-aside"><span class="box dorama genre-aside">人間ドラマ</span></p>
<!--{else}-->
<!--{/if}-->
 </a>
 </li>

<!--{foreachelse}-->
    作品がありません。
<!--{/foreach}-->
</ul>


</section><!--/main-contents-->
<!--{include file="inc/menu_info_inc.tpl"}-->
</div><!--/data-role="content"-->
<!--{include file="inc/footer_inc.tpl"}-->
