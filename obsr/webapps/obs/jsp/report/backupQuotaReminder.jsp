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

<bean:define id="getBackupQuotaReminderReportForm" name="getBackupQuotaReminderReportForm"
type="com.ahsay.obs.www.report.bean.GetBackupQuotaReminderReportForm"/>

<% String sHomepage = getBackupQuotaReminderReportForm.getHomepage(); %>
 
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=<%= sCharSet %>">
    <meta http-equiv="Content-Language" content="<%= sLocale %>">
</head>

<body bgcolor="#FFFFFF">
    <table border="0" cellpadding="0" cellspacing="0" width="650">
        <tr>
            <td rowspan="2"><a href="<%= sHomepage %>"><img border="0" src="<bean:write name="getBackupQuotaReminderReportForm" property="embedLogoLink"/>" hspace="2" vspace="2"></a></td>
            <td valign="top" align="left"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 20px" color="#006699"><bean:message key="jsp.report.backupQuotaReminder.jsp.Title"/></font></td>
        </tr>
        <tr>
            <td valign="bottom" align="right"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><bean:message key="jsp.report.backupQuotaReminder.jsp.GeneratedAt"/> <%= new java.util.Date() %></font></td>
        </tr>
    </table>
    <table border="0" cellpadding="5" width="650" cellspacing="0">
        <tr>
            <td valign="top">
                <p style="font-family: Arial; font-size: 12px"><b><u><bean:message key="jsp.report.backupQuotaReminder.jsp.BackupQuotaTitle"/><bean:message key="GLOBAL.Label.Colon"/></u></b></p>
                <p style="font-family: Arial; color: red; font-weight: bold; font-style: normal; font-size: 12px"></p>
                <p style="font-family: Arial; color: red; font-weight: bold; font-size: 12px">
                    <bean:message key="jsp.report.backupQuotaReminder.jsp.BackupQuota"/>&nbsp;
                    <bean:message key="jsp.report.backupQuotaReminder.jsp.over"/>&nbsp;
                    <nested:write name="getBackupQuotaReminderReportForm" property="percentage" />&nbsp;
                    <bean:message key="GLOBAL.Label.Percent"/>
                </p>
                <table border="0" width="300">
                    <tr>
                        <td colspan="2"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b><bean:message key="jsp.report.backupQuotaReminder.jsp.FAQs"/></b></font></td>
                    </tr>
                    <tr>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#008000"><b><bean:message key="GLOBAL.Label.1"/>.</b></font></td>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><font color="#008000"><b><bean:message key="jsp.report.backupQuotaReminder.jsp.FAQs.Q1"/>
                            </b></font><br><bean:message key="jsp.report.backupQuotaReminder.jsp.FAQs.A1"/><br></font>
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top" rowspan="2" align="right">
                <table border="0" cellspacing="0" width="290">
                    <tr>
                        <td colspan="3" bgcolor="#666666"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><b>&nbsp;<bean:message key="jsp.report.backupJobReminder.jsp.UserSetting"/></b></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><div style="width: 120; height: 1"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.LoginName"/></font></div></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getBackupQuotaReminderReportForm" property="userInfo.loginName"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Alias"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getBackupQuotaReminderReportForm" property="userInfo.alias"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Language"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
							<bean:message key="<%=Resource.getLanguagePropertyName(getBackupQuotaReminderReportForm.getUserInfo().getLanguage()) %>"/>
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Contact"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                            <nested:iterate id="contact" name="getBackupQuotaReminderReportForm" property="userInfo.contacts">
                                <bean:write name="contact" /><br>
                            </nested:iterate>
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"></td>
                    </tr>
                    <tr>
                        <td colspan="3" bgcolor="#666666"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><b>&nbsp;<bean:message key="jsp.report.backupJobReminder.jsp.BackupStatistics"/></b></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.DataArea"/>*</font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">&nbsp;<nested:write name="getBackupQuotaReminderReportForm" property="userInfo.dataFileNo"/> [ <nested:write name="getBackupQuotaReminderReportForm" property="userInfo.dataSize"/> ] </font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.RetentionArea"/>*</font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">&nbsp;<nested:write name="getBackupQuotaReminderReportForm" property="userInfo.retainFileNo"/> [ <nested:write name="getBackupQuotaReminderReportForm" property="userInfo.retainSize"/> ] </font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.BackupQuota"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">&nbsp;<nested:write name="getBackupQuotaReminderReportForm" property="userInfo.quota"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.RemainingQuota"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">&nbsp;<nested:write name="getBackupQuotaReminderReportForm" property="userInfo.remainQuota"/></font></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="right"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">* <bean:message key="jsp.report.backupJobReminder.jsp.BackupJobStatistics.Unit"/></font></td>
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
