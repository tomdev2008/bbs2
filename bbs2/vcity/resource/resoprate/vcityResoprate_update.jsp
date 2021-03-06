<%@page language="java" contentType="text/html;charset=UTF-8"%>
<%@include file="/common/page/common.jsp"%>
<html:html lang="true">
<head>
	<html:base target="_self" />

<link rel="stylesheet" type="text/css" href="<%=baseURL%>/vcity/inc/style.css" >

	<title>修改资源分类信息</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="description" content="cate edit">

	<script type="text/javascript">
function saveVcityRes(){
	if(checkForm()){
		vcityResoprateForm.submit();
	}else{
		return false;
	}
}

function setChkFlag(cs){
	if(cs){
		document.getElementById("isFlag").value=1;
	}else{
		document.getElementById("isFlag").value=0;
	}
}

function checkForm(){
	var checknull = document.getElementById("resoprateName").value;
	
	if(checknull==null||checknull==""){
		alert("名称不能为空！");
		return false;
	}
		return true;	
}

</script>
</head>

<body>
	<html:form action="/vcityResoprateAction.do?action=updateVcityResoprate" styleId="vcityResoprateForm">
	<html:hidden property="id" name="vcityResoprateForm"/>
		<table width="100%" height="100%" align="center" border="0"
			cellspacing="0" cellpadding="0" style="border:1px solid #c6d2e3">
			<tr>
				<td height="30" valign="bottom" bgcolor="#f1f7fb">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="20" class="tab_kp_off">&nbsp;
								
							</td>
							<td width="100" height="26" class="tab_kp_on">
								修改信息
							</td>
							<td class="tab_kp_off">&nbsp;
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td >
					<table width="95%" height="93%" border="0" align="center" cellpadding="0" cellspacing="1" class="tableWrap">
						<tr>
							<td height="45" class="tdr_B">&nbsp;							</td>
							<td class="greenFont12 tdr_B">&nbsp;							</td>
						</tr>
						<tr>
							<td width="120" height="30" class="tdr_B">
								<strong>名称：</strong>							</td>
							<td>
								<html:text property="resoprateName" name="vcityResoprateForm" value="${vcityResoprateForm.resoprateName }"
									styleId="resoprateName" styleClass="blueborderText" style="width:200px"></html:text><font color="red"> &nbsp;*&nbsp;必填项 </font>							</td>
						</tr>
						
						<tr>
							<td height="30" class="tdr_B">
								<strong>编码：</strong>							</td>
							<td>
								<html:textarea property="resoCode" name="vcityResoprateForm" value="${vcityResoprateForm.resoCode }" styleClass="blueborderText" style="width:200px"/>							</td>
						</tr>
						<tr>
							<td colspan="2" class="tdc">
								
											<input type="button" value=" 保 存 " class="btn_BS" onclick="saveVcityRes();">											&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="button" value=" 返 回 " class="btn_BS" onclick="window.close();">
											<br>&nbsp;							</td>
						</tr>
					</table>

				</td>
			</tr>
		</table>
	</html:form>
</body>
</html:html>
