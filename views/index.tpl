<!--{include file="inc/head_inc.tpl"}-->
<!--{include file="inc/header_inc.tpl"}-->
<div data-role="content" class="padding-content">
<!--{include file="inc/menu_list_inc.tpl"}-->

<section id="main-contents">
<ul data-role="listview" data-inset="true" data-dividertheme="a"> 
<li data-role="list-divider">ソーシャル漫画クリエイトって？</li> 
 <li data-theme="b">
 <h3>みんなで漫画作ろう！</h3> 
 <p class="new-line">一人だと続かない、作れない。だけどみんなで作れば！？そんな単純な発想から生まれたののがソーシャル漫画です！</p> 
 </li> 
 </ul> 

<ul data-role="listview" data-inset="true" data-dividertheme="a" id="app-info-sp"> 
  <li data-role="list-divider">漫画カメラで簡単作成</li> 
    <li data-theme="b"><p class="new-line">漫画カメラを使えばカメラで撮ったものが簡単に漫画にできちゃいます！</p>
      <div data-role="collapsible" data-collapsed="true" data-theme="a" >
        <h3>Android用</h3>
        <ul data-role="listview" data-inset="true">
        <li data-theme="b">
        <a href="https://play.google.com/store/apps/details?id=jp.co.so_da.android.mangagenerator&feature=nav_result#?t=W251bGwsMSwyLDNd" data-iconpos="right" data-icon="arrow-r" rel="external">
        <img src="/img/sp/manga-camera.png" alt="漫画風製作所">
        <h3>漫画風製作所</h3> 
        <p class="new-line"><span class="font-free">【無料】</span>ギャラリーの写真も使えて写真を漫画風に変換するすばらしいアプリです。</p>
        </a>
        </li>
        <li data-theme="b">
        <a href="https://play.google.com/store/apps/details?id=com.fingersoft.cartooncamera&feature=nav_other#?t=W251bGwsMSwxLDYsImNvbS5maW5nZXJzb2Z0LmNhcnRvb25jYW1lcmEiXQ.."  data-iconpos="right" data-icon="arrow-r" rel="external">
        <img src="/img/sp/car-toon.png" alt="カートゥーンカメラ">
        <h3>カートゥーンカメラ</h3> 
        <p class="new-line"><span class="font-free">【無料】</span>カメラでマンガとスケッチのような写真を作成します。</p>
        </a>
        </li>
        <li data-theme="b">
        <a href="https://play.google.com/store/apps/details?id=com.dama.papercamera&feature=nav_other#?t=W251bGwsMSwxLDYsImNvbS5kYW1hLnBhcGVyY2FtZXJhIl0." data-iconpos="right" data-icon="arrow-r" rel="external">
        <img src="/img/sp/paper-camera.png" alt="PaperCamera">
        <h3>PaperCamera</h3> 
        <p class="new-line"><span class="font-price">【￥98】</span>カメラのレンズを通して見る世界が、リアルタイム で漫画化されて描かれるのです!スタイリッシュで魅惑的な世界を覗いて見てください。自分の周りを見回して、クールな漫画の世界を発見してください!</p>
        </a>
        </li>
        </ul>
      </div><!--/collapsible-->

      <div data-role="collapsible" data-collapsed="true" data-theme="a">
        <h3>iOS用</h3>
        <ul data-role="listview" data-inset="true">
        <li data-theme="b">
        <a href="https://itunes.apple.com/jp/app/man-huakamera/id557883632?mt=8" data-iconpos="right" data-icon="arrow-r" rel="external">
        <img src="/img/sp/manga-camera-ios.png" alt="漫画カメラ">
        <h3>漫画カメラ</h3> 
        <p class="new-line"><span class="font-free">【無料】</span>ギャラリーの写真も使えて写真を漫画風に変換するすばらしいアプリです。</p>
        </a>
        </li>
        </ul>
      </div><!--/collapsible-->
  </li> 
</ul>

<div><a href="/manga/create" data-role="button" data-theme="c" data-iconpos="right" data-icon="arrow-r" data-ajax="false">つくる！</a></div>

<ul data-role="listview" data-inset="true" data-dividertheme="a" data-count-theme="c"> 
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
  <p class="ui-li-aside"><span class="box saspense genre-aside">サスペンス</span></p>
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
