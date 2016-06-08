<!DOCTYPE html>
<html lang="zh-cn">
	<head>
		<meta charset="utf-8" />
		<title>我的权限  —个人中心</title>
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
		<link   rel="icon" href="http://img.wenyifan.net/images/favicon.ico" type="image/x-icon" />
		<link   rel="shortcut icon" href="http://img.wenyifan.net/images/favicon.ico" />
		<link href="/js/common/bootstrap/3.3.5/css/bootstrap.min.css?${_v}" rel="stylesheet"/>
		<link href="/css/common/base.css?${_v}" rel="stylesheet"/>
	</head>
	<body data-target="#one" data-spy="scroll">
		
		<@_top.top 1/>
		<div class="container" style="padding-bottom: 15px;min-height: 300px; margin-top: 40px;">
			<#--row-->
			<div class="row">
				<@_left.user 2/>
				<div class="col-md-10">
					<h2>我的权限</h2>
					<hr>
					<div id="getPermissionTree" ></div>
				</div>
			</div>
			<#--/row-->
		</div>
		<script  src="http://open.sojson.com/common/jquery/jquery1.8.3.min.js"></script>
		<script  src="/js/common/layer/layer.js"></script>
		<script  src="/js/common/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<script  src="/js/common/bootstrap/bootstrap-treeview.js"></script>
		<script  src="/js/shiro.demo.js"></script>
		<script >
			$(function(){
				//加载 permission tree data
				var load = layer.load();
				$.post("getPermissionTree.shtml",{},function(data){
					layer.close(load);
					$('#getPermissionTree').treeview({
			           color: "#428bca",
			          nodeIcon: "glyphicon glyphicon-user",
			          showTags: true,
			          data: data
			        });
				},'json');
			});
		</script>
	</body>
</html>