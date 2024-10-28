<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="userMenu">
	<a href="index/usercenter.action"><img src="themes/ecmoban_benlai/images/u2.gif" />用户中心</a> 
	<a href="index/userinfo.action"><img src="themes/ecmoban_benlai/images/u2.gif" />用户信息</a> 
	<a href="index/prePwd.action"><img src="themes/ecmoban_benlai/images/u3.gif" />修改密码</a> 
	<c:if test="${sessionScope.role == '农户' }">
		<a href="index/preGoods.action"><img src="themes/ecmoban_benlai/images/u3.gif" />发布水果</a> 
		<a href="index/myGoods.action"><img src="themes/ecmoban_benlai/images/u3.gif" />我的水果</a> 
		<a href="index/mySell.action"><img src="themes/ecmoban_benlai/images/u3.gif" />我的销售</a> 
	</c:if>
	<c:if test="${sessionScope.role == '经销商' }">
		<a href="index/showOrders.action"><img src="themes/ecmoban_benlai/images/u3.gif" />我的订单</a>
	</c:if>
	<a href="index/myfav.action"><img src="themes/ecmoban_benlai/images/u3.gif" />我的收藏</a>
	<a href="index/preComplains.action"><img src="themes/ecmoban_benlai/images/u3.gif" />意见反馈</a> 
	<a href="index/myComplains.action"><img src="themes/ecmoban_benlai/images/u3.gif" />我的意见反馈</a>
	<a href="index/exit.action" style="background: none; text-align: right; margin-right: 10px;"> <img
		src="themes/ecmoban_benlai/images/bnt_sign.gif" /></a>

</div>
