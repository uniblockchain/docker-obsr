<%@ page language="java" %>
<%@ page import="java.util.Locale" %>
<%@ page import="com.ahsay.obs.www.Resource" %>
<%@ taglib uri="/WEB-INF/tlds/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tlds/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tlds/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tlds/struts-nested.tld" prefix="nested" %>

<%
    String sLocale = Resource.getLocaleName(request);
    String sCharSet = Resource.getCharSetName(request);
    response.setContentType("text/html; charset=" + sCharSet);
    response.addHeader("Pragma","No-cache");
    response.addHeader("Cache-Control","no-cache");
    response.addHeader("Expires","1");
	String sHomepage = "http://" + Resource.getHostname();
%>

<bean:define id="getLdapIncorrectPwdReportForm" name="getLdapIncorrectPwdReportForm" type="com.ahsay.obs.www.report.bean.GetLdapIncorrectPwdReportForm"/>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=<%= sCharSet %>">
    <meta http-equiv="Content-Language" content="<%= sLocale %>">
</head>
<body bgcolor="#FFFFFF">
    <table border="0" cellpadding="0" cellspacing="0" width="650">
        <tr>
            <td rowspan="2"><a href="<%= sHomepage %>"><img border="0" src="<bean:write name="getLdapIncorrectPwdReportForm" property="embedLogoLink"/>"></a></td>
            <td valign="top" align="left"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 20px" color="#006699"><bean:message key="jsp.report.ldapIncorrectPwd.jsp.Title" arg0='<%= new java.util.Date().toString()%>'/></font></td>
        </tr>
	</table>
    <table border="0" cellpadding="5" width="650" cellspacing="0">
        <tr>
            <td valign="top">
				<font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">
                <font color="#008000"><b><bean:message key="jsp.report.ldapIncorrectPwd.jsp.AuthenticationFailureTitle" arg0='<%= new java.util.Date().toString() %>'/></b></font>
				<br>
				<bean:message key="jsp.report.ldapIncorrectPwd.jsp.AuthenticationFailureContent" arg0='<%=getLdapIncorrectPwdReportForm.getUserInfo().getLoginName()%>' arg1='<%= new java.util.Date().toString() %>' />
				<br><br>
                <font color="#008000"><b><bean:message key="jsp.report.ldapIncorrectPwd.jsp.ResolveProblemTitle" /></b></font>
				<br>
				<bean:message key="jsp.report.ldapIncorrectPwd.jsp.ResolveProblemContent1" arg0='<%=getLdapIncorrectPwdReportForm.getUserInfo().getLoginName()%>' arg1='<%=getLdapIncorrectPwdReportForm.getUserInfo().getHostname()%>' />
				<br><br>
				<bean:message key="jsp.report.ldapIncorrectPwd.jsp.ResolveProblemContent2" arg0='<%=getLdapIncorrectPwdReportForm.getUserInfo().getLoginName()%>' />
                </font>
               
            </td>
        </tr>
    </table>
    <br>
</body>
</html>
 
