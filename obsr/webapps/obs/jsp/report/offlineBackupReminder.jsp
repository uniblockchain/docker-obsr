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

<bean:define id="getOfflineBackupReminderReportForm" name="getOfflineBackupReminderReportForm"
type="com.ahsay.obs.www.report.bean.GetOfflineBackupReminderReportForm"/>

<% String sHomepage = getOfflineBackupReminderReportForm.getHomepage(); %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=<%= sCharSet %>">
    <meta http-equiv="Content-Language" content="<%= sLocale %>">
</head>

<body bgcolor="#FFFFFF">
    <table border="0" cellpadding="0" cellspacing="0" width="650">
        <tr>
            <td rowspan="2"><a href="<%= sHomepage %>"><img border="0" src="<bean:write name="getOfflineBackupReminderReportForm" property="embedLogoLink"/>" hspace="2" vspace="2"></a></td>
            <td valign="top" align="left"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 20px" color="#006699"><bean:message key="jsp.report.offlineBackupReminder.jsp.Title"/></font></td>
        </tr>
        <tr>
            <td valign="bottom" align="right"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><bean:message key="jsp.report.offlineBackupReminder.jsp.GeneratedAt"/> <%= new java.util.Date() %></font></td>
        </tr>
    </table>
    <table border="0" cellpadding="5" width="650" cellspacing="0">
        <tr>
            <td valign="top">
                <p style="font-family: Arial; font-size: 12px"><b><u><bean:message key="jsp.report.offlineBackupReminder.jsp.MissedOfflineBackupTitle"/><bean:message key="GLOBAL.Label.Colon"/></u></b></p>
                <p style="font-family: Arial; color: red; font-weight: bold; font-style: normal; font-size: 12px">
                    <bean:message key="GLOBAL.BackupSet"/> = <nested:write name="getOfflineBackupReminderReportForm"  property="backupSet.backupSetName"/></p>
                <p style="font-family: Arial; color: red; font-weight: bold; font-size: 12px">
                    <bean:message key="jsp.report.offlineBackupReminder.jsp.LastBackup"/>
                    <bean:message key="GLOBAL.Label.Colon"/>&nbsp;
                    <nested:write name="getOfflineBackupReminderReportForm"  property="lastBackupComplete"/>&nbsp;</p>
                <p style="font-family: Arial; color: red; font-weight: bold; font-size: 12px">
                    <bean:message key="jsp.report.offlineBackupReminder.jsp.OfflineBackupEnabled"/></p>
                <p style="font-family: Arial; color: red; font-weight: bold; font-size: 12px">
                    <bean:message key="GLOBAL.BackupSet.OfflineBackup.BackupInterval.Day"/>
                    <nested:write name="getOfflineBackupReminderReportForm" property="day"/>&nbsp;
                    <bean:message key="GLOBAL.BackupSet.OfflineBackup.BackupInterval.Hour"/>
                    <nested:write name="getOfflineBackupReminderReportForm"  property="hour"/></p>
                <p style="font-family: Arial; color: red; font-weight: bold; font-size: 12px">
                    <bean:message key="GLOBAL.BackupSet.OfflineBackup.BackupInterval.Notification"/>
                    <nested:write name="getOfflineBackupReminderReportForm"  property="scheduledTime"/>&nbsp;
                    <bean:message key="jsp.report.offlineBackupReminder.jsp.Days"/></p>
                <table border="0" width="300">
                    <tr>
                        <td colspan="2"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b><bean:message key="jsp.report.offlineBackupReminder.jsp.FAQs"/></b></font></td>
                    </tr>
                    <tr>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#008000"><b><bean:message key="GLOBAL.Label.1"/>.</b></font></td>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><font color="#008000"><b><bean:message key="jsp.report.offlineBackupReminder.jsp.FAQs.Q1"/>
                            </b></font><br>
                            <bean:message key="jsp.report.offlineBackupReminder.jsp.FAQs.A1"/>
                            <br></font>
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
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getOfflineBackupReminderReportForm" property="userInfo.loginName"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Alias"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getOfflineBackupReminderReportForm" property="userInfo.alias"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Language"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
								<bean:message key="<%=Resource.getLanguagePropertyName(getOfflineBackupReminderReportForm.getUserInfo().getLanguage()) %>"/>						
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Contact"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                            <nested:iterate id="contact" name="getOfflineBackupReminderReportForm" property="userInfo.contacts">
                                <bean:write name="contact" /><br>
                            </nested:iterate>
                            </font>
                        </td>
                    </tr> 
                    <tr>
                        <td colspan="3"></td>
                    </tr> 
                    <tr>
                        <td colspan="3" bgcolor="#666666"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><b>&nbsp;<bean:message key="jsp.report.backupJobReminder.jsp.BackupSetting"/></b></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><div style="width: 119; height: 15"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.BackupSet.BackupSource"/></font></div></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"> 
                            <% boolean bSrcPresent=false; %>
                            <nested:iterate id="src" name="getOfflineBackupReminderReportForm" property="backupSet.selectedSrcs" type="com.ahsay.obs.www.report.bean.GetOfflineBackupReminderReportForm$BackupSetBean$SourceBean">
                                <% bSrcPresent=true; %>
                                <nested:write property="src"/><br>
                            </nested:iterate></font>
                            <% boolean bPresent = false; %>
                            <nested:iterate id="src" name="getOfflineBackupReminderReportForm" property="backupSet.deselectedSrcs" type="com.ahsay.obs.www.report.bean.GetOfflineBackupReminderReportForm$BackupSetBean$SourceBean">
                                <% if(!bPresent)  { %>
                                    <font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><u><bean:message key="jsp.report.backupJobReminder.jsp.BackupSource.Exclude"/></u></font><br>
                                    <% bPresent=true; %>
                                <% } %>
                                <font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write property="src"/></font><br>
                            </nested:iterate>
                            <% if(!bSrcPresent) { %>
                                <font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                                <bean:message key="jsp.report.backupJobReminder.jsp.BackupSource.NotShow"/>
                                </font> 
                            <% } %>
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
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">&nbsp;<nested:write name="getOfflineBackupReminderReportForm" property="userInfo.dataFileNo"/> [ <nested:write name="getOfflineBackupReminderReportForm" property="userInfo.dataSize"/> ] </font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.RetentionArea"/>*</font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">&nbsp;<nested:write name="getOfflineBackupReminderReportForm" property="userInfo.retainFileNo"/> [ <nested:write name="getOfflineBackupReminderReportForm" property="userInfo.retainSize"/> ] </font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.BackupQuota"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">&nbsp;<nested:write name="getOfflineBackupReminderReportForm" property="userInfo.quota"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.RemainingQuota"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">&nbsp;<nested:write name="getOfflineBackupReminderReportForm" property="userInfo.remainQuota"/></font></td>
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
