<!DOCTYPE HTML>
<html xmlns:og="http://ogp.me/ns#" xmlns:mixi="http://mixi-platform.com/ns#">
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
<meta http-equiv="content-script-type" content="text/javascript" />
<meta http-equiv="content-style-type" content="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=2, user-scalable=no" />
<meta name="description" content="ソーシャル漫画クリエイト" />
<meta name="keywords" content="ソーシャル漫画クリエイト" />
<title>ソーシャル漫画クリエイト</title>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.css" />
<link rel="stylesheet" href="/css/theme.min.css" />
<link rel="stylesheet" href="/css/photoswipe.css" />  
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-35433739-1']);
$(document).bind('mobileinit', function(){
	$(':jqmData(role="page")').live('pageshow', function (event, ui) {
		_gaq.push(['_trackPageview', $.mobile.activePage.jqmData('url')]);
	});
}
$(document).ready(function(){
	var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
});
</script>
<script type="text/javascript" src="/js/klass.min.js"></script>
<script type="text/javascript" src="/js/code.photoswipe.jquery-3.0.5.min.js"></script>
<script type="text/javascript">  
(function(window, $, PhotoSwipe){  
  $(document).bind('mobileinit', function(){  
    $('#pg-gallery')  
      .live('pageinit', function(e){  
        var $cp = $(e.target);
        var opt = {},  
        photoSwipeInstance = $('ul.gallery a', e.target).photoSwipe(opt, $cp.attr('id'));  
        return true;  
      })  
      .live('pageremove', function(e){  
        var $cp = $(e.target);  
        var photoSwipeInstance = PhotoSwipe.getInstance($cp.attr('id'));  
        if(typeof photoSwipeInstance != "undefined" && photoSwipeInstance != null){  
          PhotoSwipe.detatch(photoSwipeIstance);  
        }  
        return true;  
      });  
  });  
}(window, jQuery, window.Code.PhotoSwipe));  
</script>
<script src="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.js"></script>

</head>

<body>
<div data-role="page" data-theme="d">
<div data-role="header" data-theme="b" class="center">
<img src="/img/sc_logo.png" alt="ソーシャル漫画クリエイト" class="logo">

   <aside>
   <img class="arrow" src="i/arrow.png" alt="">
      <div class="sns-btn">
        <fb:like href="http://49.212.143.101/index.html" send="false" layout="button_count" width="100" show_faces="false" font="verdana" data-content="みんなで創作！ソーシャルクリエイト！"></fb:like>
      </div><!-- end .snsButton-->
      <div class="sns-btn">
        <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://49.212.143.101/index.html" data-text="" data-hashtags="socialcreate"></a>
        <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
      </div><!-- end .snsButton-->
    </aside><!-- end .snsContainer-->

</div><!--/data-role="header"-->



<div data-role="content" data-theme="d">

<form method="get" action="#">
<div data-role="fieldcontain">
<label for="name">タイトル</label>
<input id="name" type="text" value="" name="name">

<input name="img_path" type="file" size="40">
<input name="up" type="submit" value="アップロード" data-ajax="false">
</div>

</form>

</div><!--/data-role="content"-->

<div data-role="footer" data-theme="b">
<center>
<small>(c)2012 team SocialCreate</small>
</center>
</div><!--/data-role="footer"-->

</div><!--/data-role="page"-->
</body>
</html>
