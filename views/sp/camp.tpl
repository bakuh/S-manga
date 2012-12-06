<!--{include file="inc/head_inc.tpl"}-->
<!--{include file="inc/header_inc.tpl"}-->

<div data-role="content">
  <ul data-role="listview" data-theme="a" data-dividertheme="c" class="listview-margin-adjust">
    <li data-role="list-divider"><span class="font-divider">新規漫画作成</span></li>
  </ul>
  <form name="form" action="<!--{$smarty.server.PHP_SELF}-->" method="POST" ENCTYPE="MULTIPART/FORM-DATA">
    <div data-role="fieldcontain">
      <label for="tittlename">★タイトル名(必須)</label>
      <input type="text" name="tittlename" id="tittlename" value="" placeholder="タイトル名"/>
      <label for="tittlename">★内容(任意)</label>
      <input type="text" name="discription" id="discription" value="" placeholder="内容"/>
    </div>
    <fieldset data-role="controlgroup" data-theme="b">
    <legend>★制作スタイル(必須)</legend>
    <input type="radio" name="create-style" id="create-style-1" value="create-style-1" checked="checked" />
    <label for="create-style-1">みんなで作る</label>
    <input type="radio" name="create-style" id="create-style-2" value="create-style-2"  />
    <label for="create-style-2">一人で作る</label>
    </fieldset>
    <label for="select-choice" data-theme="b">★ジャンル</label>
    <select name="genre" id="genre-choice">
      <option value="none">ノンジャンル</option>
      <option value="love">恋愛</option>
      <option value="adult">オトナ</option>
      <option value="saspence">サスペンス</option>
      <option value="action">アクション</option>
      <option value="eate">グルメ</option>
      <option value="sports">スポーツ</option>
      <option value="human">ヒューマンドラマ</option>
    </select>
    <label for="tittlename">★編集pass</label>
    <input type="text" name="edit-pass" id="edit-pass" value="" placeholder="編集用パスワード"/>
    <div data-role="fieldcontain">
    <label for="tittlename">★画像(必須)<br>※最低1ページはUPしてください。</label>
    <input type="file" name="img-upload" id="img-upload" data-ajax="false">
    <label for="tittlename" class="ui-hidden-accessible">画像</label>
    <input type="file" name="img-upload" id="img-upload" data-role="button" data-iconpos="right" data-icon="forward" data-ajax="false">
    <label for="tittlename" class="ui-hidden-accessible">画像</label>
    <input type="file" name="img-upload" id="img-upload" data-role="button" data-iconpos="right" data-icon="forward" data-ajax="false">
    </div>
    <input type="submit" name="create" value="作成する!!" data-ajax="false">
  </form>
</div>
<!--/data-role="content"-->
<!--{include file="inc/footer_inc.tpl"}-->
