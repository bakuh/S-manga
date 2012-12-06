<!--{include file="inc/head_inc.tpl"}-->
<!--{include file="inc/header_inc.tpl"}-->
<h1>画像アップロード</h1>
<font color="#FF0000"><strong><?= $size_error ?></strong></font><?= $img_message ?>
<form name="form" action="<!--{$smarty.server.PHP_SELF}-->" method="POST" ENCTYPE="MULTIPART/FORM-DATA">
<input name="img_path" type="file" size="40">
<input name="up" type="submit" value="アップロード" data-ajax="false"><hr>
<table border="0">
<tr>
<!--{php}-->
$array_img = file("./img/data.txt");

for($i=0; $i<sizeof($array_img); $i++){

$array_img[$i] = ereg_replace("\n","",$array_img[$i]);

print "<td style=\"border:1px solid #000000\"><img src=\"$array_img[$i]\" width=\"100\" height=\"100\"></td>";
<!--{/php}-->

</tr>
</table>
</form>

<div data-role="footer" data-theme="b">
<center>
<p>(c)2012 team SocialCreate</p>
</center>
</div><!--/data-role="footer"-->

</div><!--/data-role="page"-->
</body>
</html>
