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
%>

<bean:define id="getErrorReportForm" name="getErrorReportForm" type="com.ahsay.obs.www.report.bean.GetErrorReportForm" />
 
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=<%= sCharSet %>">
    <meta http-equiv="Content-Language" content="<%= sLocale %>">
    <style type="text/css">
        <!--
        td	{ font-family: Verdana, Arial; font-size: 7pt; color: #0000FF }
        .pageTitle		{ font-family: Verdana, Arial; font-size: 15pt; color: #006699 }
        .tableHeader	{ font-family: Verdana, Arial; font-size: 7pt; color: #993300; font-weight: bold }
        .content		{ font-family: Verdana, Arial; font-size: 7pt; color: #000000 }
        -->
    </style>
    <title>Online Backup Error Report</title>
</head>

<body bgcolor="#FFFFFF">
    <table border="0" cellpadding="0" cellspacing="0" width="680">
        <tr>
            <td valign="top" align="left" class="pageTitle"><bean:message key="jsp.report.errorReport.jsp.Title"/><br>&nbsp;</td>
            <td valign="bottom" align="right" class="content"><bean:message key="jsp.report.errorReport.jsp.GeneratedAt"/><%= new java.util.Date() %></td>
        </tr>
    </table>
    
    <p>&nbsp;</p>
    <table border="0" cellspacing="0" cellpadding="0" width="680">
        <tr>
            <td width="100%" bgcolor="#000080">
                <table cellspacing="1" width="100%">
                    <tr>
                        <td bgColor="#EDE1E0" class="tableHeader" align="center" colspan="5"><bean:message key="jsp.report.errorReport.jsp.SystemLog"/></td>
                    </tr>
                    <tr>
                        <td bgColor="#EDE1E0" class="tableHeader" align="right"><bean:message key="GLOBAL.General.Number"/></td>
                        <td bgColor="#EDE1E0" class="tableHeader" align="center"><div style="width: 112; height: 12"><bean:message key="jsp.report.errorReport.jsp.SystemLog.Timestamp"/></div></td>
                        <td bgColor="#EDE1E0" class="tableHeader" align="center"><div style="width: 106; height: 12"><bean:message key="GLOBAL.UserProfile.LoginName"/></div></td>
                        <td bgColor="#EDE1E0" class="tableHeader" align="center"><div style="width: 106; height: 12"><bean:message key="jsp.system.groupPolicy.policyAssignment.Owner"/></div></td>
                        <td bgColor="#EDE1E0" class="tableHeader" align="center"><div style="width: 517; height: 12"><bean:message key="jsp.report.errorReport.jsp.SystemLog.Message"/></div></td>
                    </tr>
                    <% int iCount=1; %>
                    <nested:iterate id="systemErr" property="systemErrList" name="getErrorReportForm">
                        <%	String sBgColor=((iCount%2)==0) ? " bgcolor='#EEEECC'" : " bgcolor='#FFFFCC'" ;  %>
                        <tr>
                            <td valign="top" <%= sBgColor %> align="right">&nbsp;<%= iCount %>&nbsp;</td>
                            <td valign="top" <%= sBgColor %> align="center"><bean:write name="systemErr" property="timestamp" /></td>
                            <td valign="top" <%= sBgColor %> align="center"><bean:write name="systemErr" property="loginName" /></td>
                            <td valign="top" <%= sBgColor %> align="center"><bean:write name="systemErr" property="owner" /></td>
                            <td valign="top" <%= sBgColor %>><bean:write name="systemErr" property="message" /></td>
                        </tr>
                        <% iCount++; %>
                    </nested:iterate>
                    <% if (iCount==1) { %>
                    <tr>
                        <td colspan="5" bgcolor="#FFFFFF"><b><font color="#008000">&nbsp;<bean:message key="jsp.report.errorReport.jsp.SystemLog.NoErrors"/></font></b></td>
                    </tr>
                    <% } %> 
                    <% if (getErrorReportForm.isOverlimitSys()) { %> 
                        <tr><td colspan="5" bgcolor="#FFFFFF" align="left"><bean:message key="jsp.report.backupJobFull.jsp.TooManyEntriesToShowHere"/></td></tr> 
                    <% } %>
                </table>
            </td>
        </tr>
    </table>
    
    <p></p>
    <table border="0" cellspacing="0" cellpadding="0" width="680">
        <tr>
            <td width="100%" bgcolor="#000080">
                <table cellspacing="1" width="100%">
                    <tr>
                        <td bgColor="#EDE1E0" class="tableHeader" align="center" colspan="5"><bean:message key="jsp.report.errorReport.jsp.ErrorLog"/></td>
                    </tr>
                    <tr>
                        <td bgColor="#EDE1E0" class="tableHeader" align="right"><bean:message key="GLOBAL.General.Number"/></td>
                        <td bgColor="#EDE1E0" class="tableHeader" align="center"><div style="width: 112; height: 12"><bean:message key="jsp.report.errorReport.jsp.ErrorLog.Timestamp"/></div></td>
                        <td bgColor="#EDE1E0" class="tableHeader" align="center"><div style="width: 106; height: 12"><bean:message key="GLOBAL.UserProfile.LoginName"/></div></td>
                        <td bgColor="#EDE1E0" class="tableHeader" align="center"><div style="width: 106; height: 12"><bean:message key="jsp.system.groupPolicy.policyAssignment.Owner"/></div></td>						
                        <td bgColor="#EDE1E0" class="tableHeader" align="center"><div style="width: 517; height: 12"><bean:message key="jsp.report.errorReport.jsp.ErrorLog.ErrorWarnings"/></div></td>
                    </tr>
                    <% iCount=1; %>
                    <nested:iterate id="backupErr" property="backupErrList" name="getErrorReportForm">
                        <%	String sBgColor=((iCount%2)==0) ? " bgcolor='#EEEECC'" : " bgcolor='#FFFFCC'" ;  %>
                        <tr>
                            <td valign="top" <%= sBgColor %> align="right">&nbsp;<%= iCount %>&nbsp;</td>
                            <td valign="top" <%= sBgColor %> align="center"><bean:write name="backupErr" property="timestamp" /></td>
                            <td valign="top" <%= sBgColor %> align="center"><bean:write name="backupErr" property="loginName" /></td>
                            <td valign="top" <%= sBgColor %> align="center"><bean:write name="backupErr" property="owner" /></td>
                            <td valign="top" <%= sBgColor %>><bean:write name="backupErr" property="message" /></td>
                        </tr>
                        <% iCount++; %>
                    </nested:iterate>
                    <% if (iCount==1) { %>
                    <tr>
                        <td colspan="5" bgcolor="#FFFFFF"><b><font color="#008000">&nbsp;<bean:message key="jsp.report.errorReport.jsp.ErrorLog.NoErrors"/></font></b></td>
                    </tr>
                    <% } %>
                    <% if (getErrorReportForm.isOverlimitErr()) { %> 
                        <tr><td colspan="5" bgcolor="#FFFFFF" align="left"><bean:message key="jsp.report.backupJobFull.jsp.TooManyEntriesToShowHere"/></td></tr> 
                    <% } %>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>
