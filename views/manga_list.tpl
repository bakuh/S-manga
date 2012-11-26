<!--{include file="inc/head_inc.tpl"}-->
<!--{include file="inc/header_inc.tpl"}-->
<div data-role="content" data-theme="a" class="padding-off">

<ul data-role="listview" data-dividertheme="b" style="margin:0;">
<li data-role="list-divider"><span class="font-divider">漫画</span>ジャンル (○･н･)v</li>
</ul>
    <nav data-role="navbar" data-theme="c">
      <ul>
<!--{if $smarty.server.REQUEST_URI == "/manga/mangalist/love"}-->
        <li><a href="#" data-icon="love" class="ui-btn-active"><span class="font-nav">恋愛<span></a></li>
<!--{else}-->
        <li><a href="/manga/mangalist/love" data-icon="love"><span class="font-nav">恋愛<span></a></li>
<!--{/if}-->
<!--{if $smarty.server.REQUEST_URI == "/manga/mangalist/action"}-->
        <li><a href="#" data-icon="action" class="ui-btn-active"><span class="font-nav">アクション<span></a></li>
<!--{else}-->
        <li><a href="/manga/mangalist/action" data-icon="action"><span class="font-nav">アクション<span></a></li>
<!--{/if}-->
<!--{if $smarty.server.REQUEST_URI == "/manga/mangalist/saspense"}-->
        <li><a href="#" data-icon="search" class="ui-btn-active"><span class="font-nav">サスペンス<span></a></li>
<!--{else}-->
        <li><a href="/manga/mangalist/saspense" data-icon="faq"><span class="font-nav">サスペンス<span></a></li>
<!--{/if}-->
<!--{if $smarty.server.REQUEST_URI == "/manga/mangalist/otona"}-->
        <li><a href="#" data-icon="otona" classearch="ui-btn-active"><span class="font-nav">オトナ<span></a></li>
<!--{else}-->
        <li><a href="/manga/mangalist/otona" data-icon="otona"><span class="font-nav">オトナ</a></li>
<!--{/if}-->

      </ul>
    </nav>
    <nav data-role="navbar" data-theme="c" class="nav-margin">
      <ul>
<!--{if $smarty.server.REQUEST_URI == "/manga/mangalist/eat"}-->
        <li><a href="#" data-icon="eat" class="ui-btn-active"><span class="font-nav">グルメ<span></a></li>
<!--{else}-->
        <li><a href="/manga/mangalist/eat" data-icon="eat"><span class="font-nav">グルメ<span></a></li>
<!--{/if}-->
<!--{if $smarty.server.REQUEST_URI == "/manga/mangalist/sports"}-->
        <li><a href="#" data-icon="sports" class="ui-btn-active"><span class="font-nav">スポーツ<span></a></li>
<!--{else}-->
        <li><a href="/manga/mangalist/sports" data-icon="sports"><span class="font-nav">スポーツ<span></a></li>
<!--{/if}-->
<!--{if $smarty.server.REQUEST_URI == "/manga/mangalist/dorama"}-->
        <li><a href="#" data-icon="dorama" class="ui-btn-active"><span class="font-nav">人間ドラマ<span></a></li>
<!--{else}-->
        <li><a href="/manga/mangalist/dorama" data-icon="dorama"><span class="font-nav">人間ドラマ<span></a></li>
<!--{/if}-->
<!--{if $smarty.server.REQUEST_URI == "/manga/mangalist/non"}-->
        <li><a href="#" data-icon="faq" class="ui-btn-active"><span class="font-nav">ノンジャンル<span></a></li>
<!--{else}-->
        <li><a href="/manga/mangalist/non" data-icon="faq"><span class="font-nav">ノンジャンル<span></a></li>
<!--{/if}-->

      </ul>
    </nav>



<ul data-role="listview" data-inset="true" data-filter="true" data-filter-placeholder="タイトル検索" data-dividertheme="a"> 
 <li data-role="list-divider">公開中の作品一覧</li>
<!--{foreach from=$book_list_array item=book_item}-->
<!--{if $genre_id == "non"}-->
 <li data-theme="b">
 <a href="/manga/detail/<!--{$book_item.book_id}-->">
 <h3><!--{$book_item.title_name}--></h3><span class="ui-li-count"><!--{$page_count}--></span>
 <p class="new-line"><!--{$book_item.description}--></p>
 <p class="ui-li-aside">ノンジャンル</p>
</a>
 </li>

<!--{elseif $genre_id == "love"}-->
 <li data-theme="b">
 <a href="/manga/detail/<!--{$book_item.book_id}-->">
 <h3><!--{$book_item.title_name}--></h3><span class="ui-li-count"><!--{$page_count}--></span>
 <p class="new-line"><!--{$book_item.description}--></p>
 <p class="ui-li-aside">恋愛</p>
</a>
 </li>
<!--{elseif $genre_id == "action"}-->
 <li data-theme="b">
 <a href="/manga/detail/<!--{$book_item.book_id}-->">
 <h3><!--{$book_item.title_name}--></h3><span class="ui-li-count"><!--{$page_count}--></span>
 <p class="new-line"><!--{$book_item.description}--></p>
 <p class="ui-li-aside">アクション</p>
</a>
 </li>

<!--{elseif $genre_id == "saspense"}-->
 <li data-theme="b">
 <a href="/manga/detail/<!--{$book_item.book_id}-->">
 <h3><!--{$book_item.title_name}--></h3><span class="ui-li-count"><!--{$page_count}--></span>
 <p class="new-line"><!--{$book_item.description}--></p>
 <p class="ui-li-aside">サスペンス</p>
</a>
 </li>
<!--{elseif $genre_id == "otona"}-->
 <li data-theme="b">
 <a href="/manga/detail/<!--{$book_item.book_id}-->">
 <h3><!--{$book_item.title_name}--></h3><span class="ui-li-count"><!--{$page_count}--></span>
 <p class="new-line"><!--{$book_item.description}--></p>
 <p class="ui-li-aside">オトナ</p>
</a>
 </li>
<!--{elseif $genre_id == "eat"}-->
 <li data-theme="b">
 <a href="/manga/detail/<!--{$book_item.book_id}-->">
 <h3><!--{$book_item.title_name}--></h3><span class="ui-li-count"><!--{$page_count}--></span>
 <p class="new-line"><!--{$book_item.description}--></p>
 <p class="ui-li-aside">グルメ</p>
</a>
 </li>
<!--{elseif $genre_id == "sports"}-->
 <li data-theme="b">
 <a href="/manga/detail/<!--{$book_item.book_id}-->">
 <h3><!--{$book_item.title_name}--></h3><span class="ui-li-count"><!--{$page_count}--></span>
 <p class="new-line"><!--{$book_item.description}--></p>
 <p class="ui-li-aside">スポーツ</p>
</a>
 </li>
<!--{elseif $genre_id == "dorama"}-->
 <li data-theme="b">
 <a href="/manga/detail/<!--{$book_item.book_id}-->">
 <h3><!--{$book_item.title_name}--></h3><span class="ui-li-count"><!--{$page_count}--></span>
 <p class="new-line"><!--{$book_item.description}--></p>
 <p class="ui-li-aside">人間ドラマ</p>
</a>
 </li>

<!--{else}-->

 <li data-theme="b">
 <a href="/manga/detail/<!--{$book_item.book_id}-->">
 <h3><!--{$book_item.title_name}--></h3><span class="ui-li-count"><!--{$page_count}--></span>
 <p class="new-line"><!--{$book_item.description}--></p>
<!--{if $book_item.genre_id == "1"}-->
 <p class="ui-li-aside">ノンジャンル</p>
<!--{elseif $book_item.genre_id == "2"}-->
 <p class="ui-li-aside">恋愛</p>
<!--{elseif $book_item.genre_id == "3"}-->
 <p class="ui-li-aside">オトナ</p>
<!--{elseif $book_item.genre_id == "4"}-->
 <p class="ui-li-aside">サスペンス</p>
<!--{elseif $book_item.genre_id == "5"}-->
 <p class="ui-li-aside">アクション</p>
<!--{elseif $book_item.genre_id == "6"}-->
 <p class="ui-li-aside">グルメ</p>
<!--{elseif $book_item.genre_id == "7"}-->
 <p class="ui-li-aside">スポーツ</p>
<!--{elseif $book_item.genre_id == "8"}-->
 <p class="ui-li-aside">ヒューマンドラマ</p>
<!--{else}-->
<!--{/if}-->
 </a>
 </li>

<!--{/if}-->
<!--{foreachelse}-->
    作品がありません。
<!--{/foreach}-->
</ul>

</div><!--/data-role="content"-->

<!--{include file="inc/footer_inc.tpl"}-->
