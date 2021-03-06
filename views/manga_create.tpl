<!--{include file="inc/head_inc.tpl"}-->
<!--{include file="inc/header_inc.tpl"}-->

<div data-role="content">
  <ul data-role="listview" data-theme="a" data-dividertheme="c" class="listview-margin-adjust">
    <li data-role="list-divider"><span class="font-divider">新規漫画作成</span></li>
  </ul>

<div class="padding-content">
  <form name="form" action="/manga/create" method="POST" data-ajax="false">
    <div data-role="fieldcontain">
      <!--{if $arrMsgErr != ""}--><p class="msg error"><!--{foreach item=msg from=$arrMsgErr}--><!--{$msg}--><br /><!--{/foreach}--></p><!--{/if}-->

      <label for="tittle_name">★タイトル名(必須)</label>
      <input type="text" name="title_name" id="title_name" value="" placeholder="タイトル名"/><br>
      <label for="description">★内容(必須)</label>
      <input type="text" name="description" id="description" value="" placeholder="内容"/>
    </div>

    <label for="genre_id" data-theme="a">★ジャンル</label>
    <select name="genre_id" id="genre-choice">
      <option value="01">ノンジャンル</option>
      <option value="02">恋愛</option>
      <option value="03">オトナ</option>
      <option value="04">サスペンス</option>
      <option value="05">アクション</option>
      <option value="06">グルメ</option>
      <option value="07">スポーツ</option>
      <option value="08">人間ドラマ</option>
    </select>
    <label for="edit_pass">★編集pass(任意)</label>
    <input type="password" name="edit_pass" id="edit-pass" value="" maxlength="8" placeholder="編集用パスワード"/>
    <span>※グループ又は一人で作る場合は編集パスワードを設定して共有してください。</span>

    <label for="img-upload01">★画像(必須)<br>※最低1ページはUPしてください。</label>
    <input type="file" name="img-upload01"/>

    <input type="hidden" name="mode" value="REGIST" />
    <input type="submit" value="作成する!!" data-ajax="false">
  </form>
</div><!--/padding-content-->
</div><!--/data-role="content"-->
<!--{include file="inc/footer_inc.tpl"}-->
