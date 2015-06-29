<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>角色管理</title>
<link href="../content/static/css/bootstrap/navbar.css" rel="stylesheet">
<link href="../content/static/css/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<script src="../content/static/js/echart/ie-emulation-modes-warning.js"></script>
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="../content/static/img/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="../content/static/img/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="../content/static/img/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="../content/static/img/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="../content/static/img/favicon.png">

<script type="text/javascript"
	src="../content/static/js/lib/jquery.min.js"></script>
<script type="text/javascript"
	src="../content/static/js/lib/bootstrap.min.js"></script>
<script type="text/javascript" src="./content/static/js/lib/scripts.js"></script>

<script type="text/javascript"
	src="../content/static/js/echart/ie10-viewport-bug-workaround.js"></script>
<link href="../content/static/css/bootstrap/bootstrap-tree.css"
	rel="stylesheet">
</head>
<body>
	<!-- Static navbar -->
	<div class="col-md-5 column">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">
					分类
				</h3>
			</div>
			<div class="tree well">
				<c:set var="index" value="0" scope="request" />
				<!-- 自增序号，注意scope-->
				<c:set var="level" value="0" scope="request" />
				<!-- 记录树的层次，注意scope-->
				<c:import url="__department1.jsp" />
			</div>
		</div>
	</div>
	<div class="col-md-6 column">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">操作</h3>
			</div>
			<div class="list-group-item">
				<p class="list-group-item-text">
					<br>
					<form class="form-horizontal" id="form" name="IUpload" 
						method="POST"  enctype="multipart/form-data">
						<div class="form-group">
							<label class="col-sm-2 control-label">上级分类:</label>
							<c:if test="${department.parentLevel != null }">
								<label class="col-sm-2 control-label"><font color="red">${department.parentLevel.departmentname }</font></label>
							</c:if>
							<label class="col-sm-2 control-label">分类名称:</label> 
							<label class="col-sm-2 control-label"><font color="red">${department.departmentname }</font></label>
							<label class="col-sm-2 control-label">语言:</label> 
							<label class="control-label"><font color="red"><c:if test="${department.language =='Chinese' }">汉语</c:if><c:if test="${department.language =='Uighur' }">维语</c:if></font></label>
							<input id="departmentID" name="departmentID" value="${department.id }" type="hidden">
							<input name="language" value="${department.language }" type="hidden">
							<br>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">产品名称:</label> 
							<div class="col-sm-8">
								<input name="productsName" class="form-control"
									value="${products.productsName }"> <br>
									<input name="productsID" type="hidden"
									value="${products.id }">
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">产品作用
								</label>
							<div class="col-sm-8">
								<textarea rows="2" name="effect" id="effect"
									class="form-control">${products.effect }</textarea>
								<br>
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">产品功效
								</label>
							<div class="col-sm-8">
								<textarea rows="2" name="benefits" id="benefits"
									class="form-control">${products.benefits }</textarea>
								<br>
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">
								产品照片</label>
							<div class="col-sm-8">
								<input name="sendFile" type="file" class="form-control" size="40" maxlength="40" onchange="xilieView(this);">
								<br>540x341
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">
								</label>
							<div class="col-sm-8" id="xilie">
								<img alt="" src="..${products.productsPhoto }" >
								<br>
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">
								品牌照片</label>
							<div class="col-sm-8">
								<input name="brandFile" type="file" class="form-control" onchange="brandView(this);">
								<br>300,270
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">
								</label>
							<div class="col-sm-8" id="brand">
								<img alt="" src="..${products.brand }" >
								<br>
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">
								推荐照片</label>
							<div class="col-sm-8">
								<input name="file" type="file" class="form-control">
								<br>245x164
							</div>
						</div>
						<div id="newUpload2"></div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">
								</label>
							<div class="col-sm-2">
								<input type="button" id="btn_add2" class="form-control" value="再增加一张">
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">
								</label>
							<div class="col-sm-8">
								<c:forEach items="${products.recommends }" var="recommend">
									<img alt="" src="..${recommend }" name="xilie" >
								</c:forEach>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-8" style="text-align: center;">
								<button type="button"  onclick="updateDepartmen();" class="btn btn-default">添加or修改产品</button>
							</div>
						</div>
					</form>
				</P>
			</div>
		</div>
	</div>
	<script> 
   function xilieView(imgFile) 
   { 
    var pattern = /(\.*.jpg$)|(\.*.png$)|(\.*.jpeg$)|(\.*.gif$)|(\.*.bmp$)/;      
    if(!pattern.test(imgFile.value)) 
    { 
     alert("系统仅支持jpg/jpeg/png/gif/bmp格式的照片！");  
     imgFile.focus(); 
    } 
    else 
    { 
     var path; 
     if(document.all)//IE 
     { 
      imgFile.select(); 
      path = document.selection.createRange().text; 
      document.getElementById("xilie").innerHTML=""; 
      document.getElementById("xilie").style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled='true',sizingMethod='scale',src=\"" + path + "\")";//使用滤镜效果 
     } 
     else//FF 
     { 
      path = URL.createObjectURL(imgFile.files[0]);
      document.getElementById("xilie").innerHTML = "<img name='xiliePhoto' src='"+path+"'/>"; 
     } 
    } 
   } 
   function xilieExceedSize(w,h){
		if(!document.IUpload.sendFile.value==""){
			if(xiliePhoto.width >w||xiliePhoto.height >h){
				alert("图像尺寸："+xiliePhoto.width+"X"+xiliePhoto.height+"。\\n图像尺寸过大！你只能上传尺寸为 "+w+"×"+h+"的图像，请重新浏览图片！");
				document.getElementById("xilie").innerHTML = "";
				return true;
			}else{
				return false;
			}
		}else{
			return true;
		}
	}
   
   function brandView(imgFile) 
   { 
    var pattern = /(\.*.jpg$)|(\.*.png$)|(\.*.jpeg$)|(\.*.gif$)|(\.*.bmp$)/;      
    if(!pattern.test(imgFile.value)) 
    { 
     alert("系统仅支持jpg/jpeg/png/gif/bmp格式的照片！");  
     imgFile.focus(); 
    } 
    else 
    { 
     var path; 
     if(document.all)//IE 
     { 
      imgFile.select(); 
      path = document.selection.createRange().text; 
      document.getElementById("brand").innerHTML=""; 
      document.getElementById("brand").style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled='true',sizingMethod='scale',src=\"" + path + "\")";//使用滤镜效果 
     } 
     else//FF 
     { 
      path = URL.createObjectURL(imgFile.files[0]);
      document.getElementById("brand").innerHTML = "<img name='brandPhoto' src='"+path+"'/>"; 
     } 
    } 
   } 
   function brandExceedSize(w,h){
		if(!document.IUpload.brandFile.value==""){
			if(brandPhoto.width !=w||brandPhoto.height !=h){
				alert("图像尺寸："+brandPhoto.width+"X"+brandPhoto.height+"。\\n图像尺寸过大！你只能上传尺寸为 "+w+"×"+h+"的图像，请重新浏览图片！");
				document.getElementById("brand").innerHTML = "";
				return true;
			}else{
				return false;
			}
		}else{
			return true;
		}
	}
  </script>
	<script type="text/javascript">
	j = 1;
	$(document)
			.ready(
					function() {
						$("#btn_add2")
								.click(
										function() {
											document
													.getElementById("newUpload2").innerHTML += '<div id="div_'+j+'" class="form-group"><label for="inputEmail3" class="col-sm-2 control-label"></label><div class="col-sm-8"><input  name="file_'+j+'" type="file" class="form-control" /><input type="button"  style="width: 56px; height: 35px;" value="删除"  onclick="del_2('
													+ j + ')"/>245x164</div></div>';
											j = j + 1;
										});
					});
	function del_2(o) {
		document.getElementById("newUpload2").removeChild(
				document.getElementById("div_" + o));
	}
		$(document).ready(function() {
			$("input[name='positionCheck']").each(function() {
				<c:forEach items="${depAndPos }" var="dap">
					if (this.value == '${dap.positions.positionid}') {
						$(this).attr("checked", "checked");
					}
				</c:forEach>
			});
		})
		function onclickID(id) {
			location.href = './getAgriculturalsSort?id=' + id
					+ "&page=addProducts";
		}
		function updateDepartmen() {
			var xilieok = xilieExceedSize(540,341);
	 		var brandok=brandExceedSize(300,270);
			if(xilieok && brandok){
				document.IUpload.reset();
			}else{
				document.IUpload.action="./addProducts";
				document.IUpload.submit();
				return closeAndRefresh();
			}
		}
		function refreshParent() {
			window.opener.location.reload();
		}
		function closeAndRefresh() {
			window.onunload = refreshParent;
			return true;
		}
		$(function() {
			$('.tree li:has(ul)').addClass('parent_li').find(' > span').attr(
					'title', 'Collapse this branch');
			$('.tree li.parent_li > span').on(
					'click',
					function(e) {
						var children = $(this).parent('li.parent_li').find(
								' > ul > li');
						if (children.is(":visible")) {
							children.hide('fast');
							$(this).attr('title', 'Expand this branch').find(
									' > i').addClass('icon-plus-sign')
									.removeClass('icon-minus-sign');
						} else {
							children.show('fast');
							$(this).attr('title', 'Collapse this branch').find(
									' > i').addClass('icon-minus-sign')
									.removeClass('icon-plus-sign');
						}
						e.stopPropagation();
					});
		});
	</script>
</body>
</html>