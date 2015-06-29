<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>金牌农资</title>
<meta name="description"
	content="CSS3 Full Screen Vertical Scroller with jQuery animation fallback" />
<meta name="viewport" content="width=device-width, user-scalable=no" />

<!--<link type="text/css" href="content/static/css/goldCss/scrool_style.css"
	rel="stylesheet" />-->
<script type="text/javascript"
	src="content/static/js/goldJs/jquery_1.7.2.js"></script>
<!--<script type="text/javascript"
	src="content/static/js/goldJs/jQueryRotateCompressed.2.2.js"></script>
-->
<link rel="stylesheet" href="content/static/css/goldCss/home-style.css"></link>
<link rel="stylesheet" href="content/static/css/goldCss/footer.css"></link>
<script src="content/static/js/goldJs/query.min.js"></script>

<script src="content/static/js/goldJs/main.js"></script>
<link rel="stylesheet" type="text/css"
	href="content/static/css/goldCss/nav_right.css" />
<link rel="stylesheet" type="text/css"
	href="content/static/css/goldCss/flxz_style.css" />
<script type="text/javascript"
	src="content/static/js/goldJs/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="content/static/js/goldJs/jquery.SuperSlide.2.1.1.js"></script>
<script src="content/static/js/goldJs/news.js"></script>
<!--<script src="content/static/js/goldJs/zzsc.js"></script>-->
</head>
<body style="height:auto; width:100%;">
	<div class="background" style="background:url(content/static/images/bg02.jpg)no-repeat; height:988px; position:absolute;width:100%;">
	<!--页面通用栏目开始-->
	
	<!--logo图标-->
	<a href="index">
		<div class="logo_icon" ></div>
	</a>
	 <!-- 右侧导航栏 -->
		<div >
  		<div class="mui-mbar-tabs" style="position:absolute;">
    <div class="button_gnj" id="button_gnj"> <!--功能键按钮-->
      <li><img src="content/static/images/gnj.png" /></li>
    </div>
    <div class="quick_link_mian">
      <div class="quick_links_panel" >
        <div id="quick_links" class="quick_links"><!--所有产品-->
          <li > <img src="content/static/images/sy_arw.jpg" width="110%" style="margin-top:180%;" />
            <div class="ibar_login_box status_login">
              <div class="status_login">
                <ul class="user_info">
                <li style="z-index:9999;">
					<c:forEach items="${brands }" var="brand">
					<a href="getXiLie?id=${brand.id }">${brand.departmentname }</a>
					</c:forEach>
                </li>
                </ul>
              </div>
            </div>
          </li>
        </div>
        <div class="quick_weixin_toggle" >
        <ul>
          <li id="div2" style="top:75px;"> <!--微信扫码--> 
            <img src="content/static/images/weixin.jpg" />
            <div class="mp_qrcode">
            <img src="content/static/images/weixin_code_145.png"/></div>
          </li>
          
          <li class="language" id="div3" onmouseover="f1()" onmouseout="f2()" style="top:150px;"><!--语言选择id="div3"--> 
          	<img id="yy" src="content/static/images/yy.jpg" onclick="langage();"/>
          	<img id="yy_xz" src="content/static/images/yy_xz.jpg" style="display:none;" onclick="langage();"/>
          </li>
          
          <li id="div4" style="z-index:99999;top:150px;"> <!--联系电话<--> 
            <img src="content/static/images/call.jpg" />
            <div class="mp_tooltip">咨询热线：181609204</div>
          </li>
        </ul> 
        </div>
      </div>
    </div>
  </div>
</div>
<!-- 右边导航栏 -->		
				<script type="text/javascript">			
				function langage(){
					location.href = "getLanguage";
				}
				function f1(){
					var d1=document.getElementById("yy");
					var d2=document.getElementById("yy_xz");
					d2.style.display="inline";
					d1.style.display="none";	
				}
				function f2(){
					var d1=document.getElementById("yy");
					var d2=document.getElementById("yy_xz");
					d2.style.display="none";
					d1.style.display="block";
				}
</script>		
	<!--页面通用栏目结束-->
	<div id="cont">
		<!--第二屏-->
		<div class="stage" id="stage2" >
            <a name="stage2"></a>
			<!--导航栏-->
			<div class="nav"
				style="*top: -20px; top: 20px; *left: 10%; _position: absolute; *position: fixed;">
				<c:forEach items="${list }" var="agricult" varStatus="loop">
					<li><a href="#stage2"
						onclick="checkme(${agricult.id });return ture;">${agricult.departmentname }</a></li>
					<!--           <li><a href="#basic-html-setup" onclick="checkme2();return ture;">农&nbsp;&nbsp;&nbsp;&nbsp;药</a></li> -->
					<!--           <li><a href="#basic-html-setup" onclick="checkme();return ture;">种&nbsp;&nbsp;&nbsp;&nbsp;子</a></li> -->
				</c:forEach>
				<li><a href="#lxfs">联系信息</a></li>
				<li><a href="index">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
			</div>
		</div>
        
		<div class="news"
			style="height:460px;top:20%; *top:14%; position:absolute; *position:fixed; margin:0 auto; padding:0;">
			<li
				style="width: 534px; height: 45px; line-height: 45px; text-align: left; font-size: 18px; padding-left: 0; background: url(content/static/images/news.png) no-repeat center center;"><span
				style="margin-left: 40px; color: #fff;"
				onclick="news_contentupDiv('news_content-div');"><a
					style="cursor: pointer;color:#fff"> ${news[0].title }</a></span></li>
			<div id='news_content-div' class="news_content-box">
				<div class="news_content-box-body"
					style="font-size: 16px; width: 520px;">
					<c:forEach items="${news }" var="myNews" varStatus="loop">
						<li class="click1" style="width: 500px;"><a
							href="javascript:void(${loop.index });"
							onclick="show(${loop.index });">${myNews.title }</a></li>
					</c:forEach>
				</div>
				<!-- 标题关闭 -->
				<span id="guanbi"> <a href="javascript:void(0);"
					onclick="hideDiv('news_content-div');"> <img
						src="content/static/images/guanbi.png" />
				</a>
				</span>
			</div>
		</div>
		<!--首先设置一个层:-->
		<div class="bg"></div>
      <div id="news_content" class="news_content" style="font-size:16px; position:fixed;"> 
      <span style=" float:right; text-align:right;"><a id="close_bg" style="cursor:pointer;"  onclick="hideDiv('news_content','.bg');"><img src="content/static/images/guanbi.png" /></a></span>
        <div class="news_content_body">
			</div>
		</div>  

		<!-- 	document.getElementById('news_content').onclick = EX.stop; -->
		<script type="text/javascript">	
	function show(id){
	/*<c:forEach items="${news }" var="myNew" varStatus="loop">
	 if('${loop.index}' == id){
		 xx = '${myNew.content}';
	 }
	</c:forEach>*/
	$('.news_content_body').html(xx);
var o = document.getElementById('news_content');
o.style.display = "";
setTimeout(function(){EX.addEvent.call(document,'click',hide);});
}
</script>


		<!--肥料产品选择-->
      <div class="friend_box" name="second" style="top:60%;">
        <div  class="friend">
          <div class="mr_frbox"> <img class="mr_frBtnL prev" src="content/static/images/scroll_left.png" />
            <div class="mr_frUl"><!--种子系列-->
              <div id="zzxl">
                <ul id="mr_fu">
								<c:forEach items="${brands }" var="br">
									<li id='qtxx'><a href='getXiLie?id=${br.id }'> <img
											src='${fn:substring(br.describes,1,fn:length(br.describes))}' /></a></li>
								</c:forEach>
					</ul>
              </div>
            </div>
            <img class="mr_frBtnR next" src="content/static/images/scroll_right.png" /> </div>
        </div>
      </div>

	
	<script type="text/javascript">
	 	$(document).ready(function(e) {
            var url=window.location.search; 
			var param = url.substr(1).split('=')[1];
				checkme(param);
				if(url.substr(0,1)=='?'){
					var mao = $("#stage2"); //获得锚点  
					 if (mao.length > 0) {//判断对象是否存在  
						 var pos = mao.offset().top;  
						 var poshigh = mao.height();  
						 $("html,body").animate({ scrollTop: pos-poshigh-30 }, 3000);  
					 } 
				}
        });

		function checkme(id)
		{
			var $zhongzi ="<ul id='mr_fu' >";
			<c:forEach items="${brands }" var="brand" >
			 
				 $zhongzi =  $zhongzi + "<li id='qtxx'><a href='getXiLie?id=${brand.id }'> <img src='${fn:substring(brand.describes,1,fn:length(brand.describes))}' /></a></li>";
			 
		</c:forEach>
//  			var $zhongzi = "<ul id='mr_fu' ><li id='qtxx'><a href='index_sub1.html'> <img src='content/static/images/zf.png' /></a></li><li id='qtxx'><a href='index_sub1.html'> <img src='content/static/images/qt.png' /> </a> </li> </ul>";
			$zhongzi = $zhongzi +"</ul>";
			$('#zzxl').html($zhongzi);
		}
		
	 </script>
	<script type="text/javascript">
$(document).ready(function () {
	/* 图片滚动效果 */
	$(".mr_frbox").slide({
		titCell: "",
		mainCell: ".mr_frUl ul",
		autoPage: false,
		effect: "leftLoop",
		autoPlay: false,
		vis: 2,	
		
	});		
});
</script>


	<!--效果html结束-->
	<!--[if lte IE 8]>
<script src="js/ieBetter.js"></script>
<![endif]-->
	<script type="text/javascript">
//var image=document.getElementById("image")<bgsound src="" loop="-1" id="image">;
document.getElementById("an").onmousedown=function(){
    if(this.src.indexOf("play1pressed")!=-1){
        this.src="../../images/weixin_code_145.png";
    }else{
        this.src="../../images/yy.jpg";
    }
}
</script>
	<SCRIPT type=text/javascript>
$(document).ready(function(){
            $('.quick_link_mian').hide();
			$('#button_gnj').click(function(){
				$('.quick_link_mian').fadeToggle();
				$("#quick_links").fadeToggle();
                $("#div2").fadeToggle("slow");
                $("#div3").fadeToggle("slow");
	            $("#div4").fadeToggle("slow");
    });
  });
$(document).ready(function(){
  $("#button_gnj").click(function(){
    $("#quick_links").fadeIn();
    $("#div2").fadeIn("slow");
    $("#div3").fadeIn("slow");
	$("#div4").fadeIn("slow");
  });
});
</script>
	<script type="text/javascript"
		src="content/static/js/goldJs/parabola.js"></script>
	<script type="text/javascript">
	$(".quick_links_panel li").mouseenter(function(){
		$(this).children(".mp_tooltip").animate({left:-300,queue:true});
		$(this).children(".mp_tooltip").css("visibility","visible");
		$(this).children(".ibar_login_box").css("display","block");
	});
	$(".quick_links_panel li").mouseleave(function(){
		$(this).children(".mp_tooltip").css("visibility","hidden");
		$(this).children(".mp_tooltip").animate({left:-120,queue:true});
		$(this).children(".ibar_login_box").css("display","none");
	});
	$(".quick_weixin_toggle li").mouseover(function(){
		$(this).children(".mp_qrcode").show();
	});
	$(".quick_weixin_toggle li").mouseleave(function(){
		$(this).children(".mp_qrcode").hide();
	});
	$("#yuy").mousedown.click(function(){
		$("#div3").show(".language");
	});
	</script>
	</div>
</div>
	<!--页脚-->
	<footer id="lxfs"
		style="width:100%; z-index:999; color:#fff; text-align:center; height:380px; top:980px; margin:0 auto; position:absolute">
	<div class="f_bottom" style="height: 380px">
		<div class="link">
			<div class="link_box">
				<a target="new" href="http://www.ampcn.com/"><img
					src="content/static/images/url1.jpg" />
					<h1>中国农资网</h1> </a>
			</div>
			<div class="link_box">
				<a target="new" href="http://www.cast.net.cn/"><img
					src="content/static/images/url2.jpg" />
					<h1>中国农业科技信息网</h1> </a>
			</div>
			<div class="link_box">
				<a target="new" href="http://www.agri.gov.cn/"><img
					src="content/static/images/url3.jpg" />
					<h1>中国农业信息网</h1> </a>
			</div>
			<div class="link_box">
				<a target="new" href="http://www.zzys.moa.gov.cn/"><img
					src="content/static/images/url4.jpg" />
					<h1>中国种植业信息网</h1> </a>
			</div>
			<div class="link_box">
				<a target="new" href="http://www.sannong.net/"><img
					src="content/static/images/url5.jpg" />
					<h1>中国三农网</h1> </a>
			</div>
			<div class="link_box">
				<a target="new" href="http://www.agrichem.cn/"><img
					src="content/static/images/url6.jpg" />
					<h1>中国农药网</h1> </a>
			</div>
		</div>
		<div class="adress">
			<img src="content/static/images/footer_logo.png" />
			<p style="font-size: 15px; color: #cccccc; line-height: 24px;">
				沪ICP备13005943号 &nbsp;&nbsp; 版权所有：上海雨岑信息科技有限公司
				&nbsp;&nbsp;服务热线：021-62340162 62340169</p>
			<p style="font-size: 15px; color: #cccccc; line-height: 24px;">地
				址：上海市杨浦区隆昌路619号城市概念创意园2号楼E21-E26 &nbsp;&nbsp;邮编：200082
				&nbsp;&nbsp;传真：021-52799113</p>
			<p style="font-size: 15px; color: #cccccc; line-height: 24px;">邮件咨询：kefu@yc-e.net
				&nbsp;&nbsp;附近交通：地铁：12号线 隆昌路站;8号线 黄兴路站</p>
		</div>
        </div>
	</footer>

</body>
</html>
