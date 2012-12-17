<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
<meta http-equiv="content-script-type" content="text/javascript" />
<meta http-equiv="content-style-type" content="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<meta name="description" content="ソーシャル漫画クリエイト" />
<meta name="keywords" content="ソーシャル漫画クリエイト" />
<title>ソーシャル漫画クリエイト</title>
<link rel="shortcut icon" href="/favicon.ico" />
<link rel="stylesheet" href="/css/sp/common.css" />
<link rel="stylesheet" href="/css/sp/photoswipe.css" />
<script type="text/javascript" src="/js/sp/common.js"></script>
<script type="text/javascript" src="/js/sp/klass.min.js"></script>
<script type="text/javascript" src="/js/sp/code.photoswipe.jquery-3.0.5.min.js"></script>
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
<script type="text/javascript" src="/js/sp/jqm.js"></script>
</head>
