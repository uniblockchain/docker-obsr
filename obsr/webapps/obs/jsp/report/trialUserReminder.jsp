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

<bean:define id="getTrialUserReminderForm" name="getTrialUserReminderForm" type="com.ahsay.obs.www.report.bean.GetTrialUserReminderForm"/>

<% String sHomepage = getTrialUserReminderForm.getHomepage(); %>
 
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=<%= sCharSet %>">
    <meta http-equiv="Content-Language" content="<%= sLocale %>">
</head>

<body bgcolor="#FFFFFF">
    <table border="0" cellpadding="0" cellspacing="0" width="650">
        <tr>
            <td rowspan="2"><a href="<%= sHomepage %>"><img border="0" src="<bean:write name="getTrialUserReminderForm" property="embedLogoLink"/>" hspace="2" vspace="2"></a></td>
            <td valign="bottom" align="left"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 20px" color="#006699"><bean:message key="jsp.report.trialUserReminder.jsp.Title"/></font></td>
        </tr>
        <tr>
            <td valign="bottom" align="right"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><bean:message key="jsp.report.trialUserReminder.jsp.GeneratedAt"/> <%= new java.util.Date() %></font></td>
        </tr>
    </table>
    <table border="0" cellpadding="5" width="650" cellspacing="0">
        <tr>
            <td valign="top">
                <p><font color="#008000"><b><bean:message key="jsp.report.trialUserReminder.jsp.Why"/></b></font></p>
                <p><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">
                    <bean:message key="jsp.report.trialUserReminder.jsp.Ans"/></font>
                </p>
                <p><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">
                    <b><bean:message key="jsp.report.trialUserReminder.jsp.LastLogin"/></b><nested:write name="getTrialUserReminderForm" property="userInfo.lastLogin"/><br>
                    <b><bean:message key="jsp.report.trialUserReminder.jsp.LastBackup"/></b><nested:write name="getTrialUserReminderForm" property="userInfo.lastBackup"/></font>
                </p>
            </td>
            <td valign="top" rowspan="2">
                <table border="0" cellspacing="0" width="290">
                    <tr>
                        <td colspan="3" bgcolor="#666666"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><b>&nbsp;<bean:message key="jsp.report.trialUserReminder.jsp.UserSetting"/></b></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><div style="width: 120; height: 1"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.LoginName"/></font></div></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getTrialUserReminderForm" property="userInfo.loginName"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Alias"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getTrialUserReminderForm" property="userInfo.alias"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Language"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
							<bean:message key="<%=Resource.getLanguagePropertyName(getTrialUserReminderForm.getUserInfo().getLanguage()) %>"/>						
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Contact"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                            <nested:iterate id="contact" name="getTrialUserReminderForm" property="userInfo.contacts">
                                <bean:write name="contact" /><br>
                            </nested:iterate>
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>
