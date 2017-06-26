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

<bean:define id="getUsageReportForm" name="getUsageReportForm" type="com.ahsay.obs.www.report.bean.GetUsageReportForm" />
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=<%= sCharSet %>">
    <meta http-equiv="Content-Language" content="<%= sLocale %>">
    <style type="text/css">
        <!--
        td	{ font-family: Verdana, Arial; font-size: 7pt }
         .pageTitle		{ font-family: Verdana, Arial; font-size: 15pt; color: #006699 }
         .tableHeader	{ font-family: Verdana, Arial; font-size: 12pt; color: #008000; font-weight: bold }
         .tableTitle	{ font-family: Verdana, Arial; font-size: 7pt; color: #993300; font-weight: bold }
         .title			{ font-family: Verdana, Arial; font-size: 7pt; color: #0000FF; font-weight: bold }
         .content		{ font-family: Verdana, Arial; font-size: 7pt; color: #000000 }
        -->
    </style>
    <title><bean:message key="jsp.report.usageReport.jsp.Title" /></title>
</head>

<body bgcolor="#FFFFFF">
    <html:form action="/report/getUsageReport">
    <table border="0" cellpadding="0" cellspacing="0" width="650">
        <tr>
            <td valign="top" align="left" class="pageTitle"><bean:message key="jsp.report.usageReport.jsp.Title" /></td>
            <td valign="bottom" align="right" class="content"><bean:message key="jsp.report.usageReport.jsp.GeneratedAt" /> <%= new java.util.Date() %></td>
        </tr>        
    </table>
    <p>&nbsp;</p>
    
    <table border="0" cellspacing="0" cellpadding="0" width="309">
        <tr>
            <td class="tableHeader"><bean:message key="jsp.report.usageReport.jsp.CurrentTotalStorage" /></td>
        </tr>
        <tr>
            <td bgcolor="#000080">
                <table cellspacing="1" width="100%" border="0">
                    <tr>
                        <td bgcolor="#CCCCCC" align="center"><div style="width: 123; height: 12"><b><bean:message key="jsp.report.usageReport.jsp.CurrentTotalStorage.BackupDataSize" /></b></div></td>
                        <td bgcolor="#CCCCCC" align="center"><div style="width: 119; height: 12"><b><bean:message key="jsp.report.usageReport.jsp.CurrentTotalStorage.RetentionDataSize" /></b></div></td>
                    </tr>
                    <tr>
                        <nested:nest property="storageSummary">
                            <td bgcolor="#FFFFCC" align="center"><nested:write property="dataSize" /></td>
                            <td bgcolor="#FFFFCC" align="center"><nested:write property="retainSize" /></td>
                        </nested:nest>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br>

    <table border="0" cellspacing="0" cellpadding="0" width="650">
        <tr>
            <td class="tableHeader"><bean:message key="jsp.report.usageReport.jsp.BackupActivity" /></td>
        </tr>
        <% int iCount; %>
        <logic:equal name="getUsageReportForm" property="isSystemAdmin" value="true">
            <tr>
                <td bgcolor="#000080">
                    <table cellspacing="1" width="100%" border="0">
                        <tr>
                            <td bgcolor="#EDE1E0" align="center" valign="bottom" rowspan="2" class="tableTitle"><div style="width: 205; height: 16"><bean:message key="jsp.report.usageReport.jsp.BackupActivity.TimePeriod" /></div></td>
                            <td bgcolor="#EDE1E0" align="center" colspan="5" class="tableTitle"><bean:message key="jsp.report.usageReport.jsp.BackupActivity.Size" /></td>
                            <td bgcolor="#EDE1E0" align="center" valign="bottom" rowspan="2" class="tableTitle"><bean:message key="jsp.report.usageReport.jsp.BackupActivity.Total" /></td>
                            <td bgcolor="#EDE1E0" align="center" valign="bottom" rowspan="2" class="tableTitle"><div style="width: 200; height: 12"><bean:message key="jsp.report.usageReport.jsp.BackupActivity.Users" />*</div></td>
                        </tr>
                        <tr>
                            <td bgcolor="#EDE1E0" align="center" class="tableTitle"><bean:message key="jsp.report.usageReport.jsp.BackupActivity.Delete" /></td>
                            <td bgcolor="#EDE1E0" align="center" class="tableTitle"><bean:message key="jsp.report.usageReport.jsp.BackupActivity.New" /></td>
                            <td bgcolor="#EDE1E0" align="center" class="tableTitle"><bean:message key="jsp.report.usageReport.jsp.BackupActivity.Update" /></td>
                            <td bgcolor="#EDE1E0" align="center" class="tableTitle"><bean:message key="jsp.report.usageReport.jsp.BackupActivity.Copy" /></td>
                            <td bgcolor="#EDE1E0" align="center" class="tableTitle"><bean:message key="jsp.report.usageReport.jsp.BackupActivity.Move" /></td>
                        </tr>
                        <% iCount=1; %>
                        <nested:iterate id="trafficList" property="trafficList" name="getUsageReportForm">
                            <% String sBgColor=((iCount%2)==0) ? " bgcolor='#EEEECC'" : " bgcolor='#FFFFCC'" ; %>
                            <tr>
                                <td valign="top" <%= sBgColor %> align="center"><nested:write property="period" /></td>
                                <td valign="top" <%= sBgColor %> align="center"><nested:write property="deletedSize" /></td>
                                <td valign="top" <%= sBgColor %> align="center"><nested:write property="newSize" /></td>
                                <td valign="top" <%= sBgColor %> align="center"><nested:write property="updatedSize" /></td>
                                <td valign="top" <%= sBgColor %> align="center"><nested:write property="copySize" /></td>
                                <td valign="top" <%= sBgColor %> align="center"><nested:write property="movedSize" /></td>
                                <td valign="top" <%= sBgColor %> align="center"><nested:write property="noOfJobsRun" /></td>
                                <td valign="top" <%= sBgColor %>><nested:write property="userList" /></td>
                            </tr>
                            <% iCount++; %>
                        </nested:iterate>
                        <tr>
                            <nested:nest property="trafficSummary">
                                <td bgcolor="#FFFFFF" align="right"><b><bean:message key="jsp.report.usageReport.jsp.BackupActivity.Total" />&nbsp;&nbsp;</b></td>
                                <td bgcolor="#FFFFFF" align="center"><b><nested:write property="deletedSize" /></b></td>
                                <td bgcolor="#FFFFFF" align="center"><b><nested:write property="newSize" /></b></td>
                                <td bgcolor="#FFFFFF" align="center"><b><nested:write property="updatedSize" /></b></td>
							    <td bgcolor="#FFFFFF" align="center"><b><nested:write property="copySize" /></b></td>
                                <td bgcolor="#FFFFFF" align="center"><b><nested:write property="movedSize" /></b></td>
                                <td bgcolor="#FFFFFF" align="center"><b><nested:write property="noOfJobsRun" /></b></td>
                                <td bgcolor="#FFFFFF"><b><nested:write property="distinctUser" /> <bean:message key="jsp.report.usageReport.jsp.BackupActivity.DistinctUsers" /></b></td>
                            </nested:nest>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td><b>* <bean:message key="jsp.report.usageReport.jsp.BackupActivity.UserAndOwner"/></b><br>
                </td>
            </tr>
        </logic:equal>
        <logic:notEqual name="getUsageReportForm" property="isSystemAdmin" value="true">
            <tr>
                <td><b><bean:message key="jsp.report.usageReport.jsp.BackupActivity.RestrictiedToSystemAdmin"/></b></td>
            </tr>
        </logic:notEqual>
    </table>    
    <br>

    <table border="0" cellspacing="0" cellpadding="0" width="650">
        <tr>
            <td class="tableHeader"><bean:message key="jsp.report.usageReport.jsp.PaidUserActivity" /></td>
        </tr>
        <tr>
            <td width="100%" bgcolor="#000080">
                <table cellspacing="1" width="100%" border="0">
                    <tr>
                        <td bgColor="#EDE1E0"></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><bean:message key="jsp.report.usageReport.jsp.UserActivity.UserInformation" /></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><div style="width: 240; height: 12"><bean:message key="jsp.report.usageReport.jsp.UserActivity.ActivitiesSummary" /></div></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><div style="width: 150; height: 12"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Storage" /></div></td>
                    </tr>
                    <% iCount=1; %>
                    <nested:iterate id="paidUserList" property="paidUserList" name="getUsageReportForm">
                        <%	String sBgColor=((iCount%2)==0) ? " bgcolor='#EEEECC'" : " bgcolor='#FFFFCC'" ; %>
                        <tr>
                            <td valign="top" <%= sBgColor %>>&nbsp;<%= iCount %>&nbsp;</td>
                            <td valign="top" <%= sBgColor %>>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.LoginName" /></font> <nested:write property="loginName" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Alias" /></font> <nested:write property="alias" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Owner" /></font> <nested:write property="owner" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Email" /></font> <nested:write property="emails" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Registration" /></font> <nested:write property="registrationDate" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Type" /></font> <nested:write property="type" />
                            </td>
                            <td valign="top" <%= sBgColor %>>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.LastBackup" /></font> <nested:write property="lastBackupDate" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.LastLogin" /></font> <nested:write property="lastLoginDate" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.TotalBackup" /></font> <nested:write property="totalBackupJobsRun" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.TotalRestoreFileNo" /></font> <nested:write property="totalFilesRestored" />
                            </td>
                            <td valign="top" <%= sBgColor %>>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.BackupDataSize" /></font> <nested:write property="dataSize" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.RecycleBinSize" /></font> <nested:write property="retainSize" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.YesterdayUpload" /></font> <nested:write property="uploadSize" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.CumulativeUpload" /></font> <nested:write property="totalUploadSize" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Quota" /></font> <nested:write property="storageQuota" /><br>
                                <nested:equal property="hasMailBoxBackup" value="true">
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.MailboxUsage" /><bean:message key="GLOBAL.Label.Colon" /></font> <nested:write property="mailBoxUsage" />
                                </nested:equal>
                            </td>
                        </tr>
                        <% iCount++; %>
                    </nested:iterate>
                    <% if (iCount==1) { %>
                        <tr><td colspan="4" bgcolor="#FFFFFF"><b><bean:message key="jsp.report.usageReport.jsp.PaidUserActivity.None" /></b></td></tr>
                    <% } %>
                </table>
            </td>
        </tr>
    </table>
    <br>

    <table border="0" cellspacing="0" cellpadding="0" width="650">
        <tr>
            <td class="tableHeader"><bean:message key="jsp.report.usageReport.jsp.NewUserActivity" /></td>
        </tr>
        <tr>
            <td width="100%" bgcolor="#000080">
                <table cellspacing="1" width="100%">
                    <tr>
                        <td bgColor="#EDE1E0"></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><bean:message key="jsp.report.usageReport.jsp.UserActivity.UserInformation" /></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><div style="width: 240; height: 12"><bean:message key="jsp.report.usageReport.jsp.UserActivity.ActivitiesSummary" /></div></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><div style="width: 150; height: 12"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Storage" /></div></td>
                    </tr>
                    <% iCount=1; %>
                    <nested:iterate id="newUserList" property="newUserList" name="getUsageReportForm">
                        <% String sBgColor=((iCount%2)==0) ? " bgcolor='#EEEECC'" : " bgcolor='#FFFFCC'" ; %>
                        <tr>
                            <td valign="top" <%= sBgColor %>>&nbsp;<%= iCount %>&nbsp;</td>
                            <td valign="top" <%= sBgColor %>>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.LoginName" /></font> <nested:write property="loginName" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Alias" /></font> <nested:write property="alias" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Owner" /></font> <nested:write property="owner" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Email" /></font> <nested:write property="emails" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Registration" /></font> <nested:write property="registrationDate" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Type" /></font> <nested:write property="type" />
                            </td>
                            <td valign="top" <%= sBgColor %>>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.LastBackup" /></font> <nested:write property="lastBackupDate" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.LastLogin" /></font> <nested:write property="lastLoginDate" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.TotalBackup" /></font> <nested:write property="totalBackupJobsRun" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.TotalRestoreFileNo" /></font> <nested:write property="totalFilesRestored" />
                            </td>
                            <td valign="top" <%= sBgColor %>>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.BackupDataSize" /></font> <nested:write property="dataSize" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.RecycleBinSize" /></font> <nested:write property="retainSize" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.YesterdayUpload" /></font> <nested:write property="uploadSize" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.CumulativeUpload" /></font> <nested:write property="totalUploadSize" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Quota" /></font> <nested:write property="storageQuota" />
							</td>
                        </tr>
                        <%	iCount++; %>
                    </nested:iterate>
                    <% if (iCount==1) { %>
                        <tr><td colspan="4" bgcolor="#FFFFFF"><b><bean:message key="jsp.report.usageReport.jsp.NewUserActivity.None" /></b></td></tr>
                    <% } %>
                </table>
            </td>
        </tr>
    </table>
    <br>

    <table border="0" cellspacing="0" cellpadding="0" width="650">
        <tr>
            <td class="tableHeader"><bean:message key="jsp.report.usageReport.jsp.ActiveUserActivity" /></td>
        </tr>
        <tr>
            <td width="100%" bgcolor="#000080">
                <table cellspacing="1" width="100%">
                    <tr>
                        <td bgColor="#EDE1E0"></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><bean:message key="jsp.report.usageReport.jsp.UserActivity.UserInformation" /></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><div style="width: 240; height: 12"><bean:message key="jsp.report.usageReport.jsp.UserActivity.ActivitiesSummary" /></div></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><div style="width: 150; height: 12"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Storage" /></div></td>
                    </tr>
                    <%	iCount=1; %>
                    <nested:iterate id="trialActiveUserList" property="trialActiveUserList" name="getUsageReportForm">
                        <% String sBgColor=((iCount%2)==0) ? " bgcolor='#EEEECC'" : " bgcolor='#FFFFCC'" ; %>
                        <tr>
                            <td valign="top" <%= sBgColor %>>&nbsp;<%= iCount %>&nbsp;</td>
                            <td valign="top" <%= sBgColor %>>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.LoginName" /></font> <nested:write property="loginName" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Alias" /></font> <nested:write property="alias" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Owner" /></font> <nested:write property="owner" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Email" /></font> <nested:write property="emails" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Registration" /></font> <nested:write property="registrationDate" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Type" /></font> <nested:write property="type" />
                            </td>
                            <td valign="top" <%= sBgColor %>>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.LastBackup" /></font> <nested:write property="lastBackupDate" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.LastLogin" /></font> <nested:write property="lastLoginDate" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.TotalBackup" /></font> <nested:write property="totalBackupJobsRun" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.TotalRestoreFileNo" /></font> <nested:write property="totalFilesRestored" />
                            </td>
                            <td valign="top" <%= sBgColor %>>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.BackupDataSize" /></font> <nested:write property="dataSize" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.RecycleBinSize" /></font> <nested:write property="retainSize" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.YesterdayUpload" /></font> <nested:write property="uploadSize" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.CumulativeUpload" /></font> <nested:write property="totalUploadSize" /><br>
                                <font class="title"><bean:message key="jsp.report.usageReport.jsp.UserActivity.Quota" /></font> <nested:write property="storageQuota" />
							</td>
                        </tr>
                        <%	iCount++; %>
                    </nested:iterate>
                    <% if (iCount==1) { %>
                        <tr><td colspan="4" bgcolor="#FFFFFF"><b><bean:message key="jsp.report.usageReport.jsp.ActiveUserActivity.None" /></b></td></tr>
                    <% } %>
                </table>
            </td>
        </tr>
    </table>
    <br>

    <table border="0" cellspacing="0" cellpadding="0" width="650">
        <tr>
            <td class="tableHeader"><bean:message key="jsp.report.usageReport.jsp.IdleUserActivity" /></td>
        </tr>
        <tr>
            <td width="100%" bgcolor="#000080">
                <table cellspacing="1" width="100%">
                    <tr>
                        <td bgColor="#EDE1E0"></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><div style="width: 79; height: 12"><bean:message key="GLOBAL.UserProfile.LoginName" /></div></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><bean:message key="GLOBAL.UserProfile.Owner" /></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><bean:message key="GLOBAL.UserProfile.Email" /></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><div style="width: 166; height: 12"><bean:message key="GLOBAL.UserProfile.RegistrationDate" /></div></td>
                        <td bgColor="#EDE1E0" align="center" class="tableTitle"><div style="width: 60; height: 12"><bean:message key="GLOBAL.UserProfile.DataArea" /></div></td>
                        <td bgColor="#EDE1E0" align="center" class="tableTitle"><div style="width: 90; height: 12"><bean:message key="GLOBAL.UserProfile.RetentionArea" /></div></td>
                        <td bgColor="#EDE1E0" align="center" class="tableTitle"><div style="width: 68; height: 12"><bean:message key="GLOBAL.UserProfile.TotalUpload" /></div></td>
                        <td bgColor="#EDE1E0" align="center" class="tableTitle"><bean:message key="GLOBAL.UserProfile.Quota" /></td>
                    </tr>
                    <%	iCount=1; %>
                    <nested:iterate id="trialIdleUserList" property="trialIdleUserList" name="getUsageReportForm">
                        <% String sBgColor=((iCount%2)==0) ? " bgcolor='#EEEECC'" : " bgcolor='#FFFFCC'" ; %>
                        <tr>
                            <td valign="top" <%= sBgColor %> align="right">&nbsp;<%= iCount %>&nbsp;</td>
                            <td valign="top" <%= sBgColor %> align="center"><nested:write property="loginName" /></td>
                            <td valign="top" <%= sBgColor %> align="center">
                                <nested:equal property="owner" value="">--</nested:equal>
                                <nested:notEqual property="owner" value=""><nested:write property="owner" /></nested:notEqual>
                            </td>
                            <td valign="top" <%= sBgColor %> align="center"><nested:write property="emails" /></td>
                            <td valign="top" <%= sBgColor %> align="center"><nested:write property="registrationDate" /></td>
                            <td valign="top" <%= sBgColor %> align="center"><nested:write property="dataSize" /></td>
                            <td valign="top" <%= sBgColor %> align="center"><nested:write property="retainSize" /></td>
                            <td valign="top" <%= sBgColor %> align="center"><nested:write property="totalUploadSize" /></td>
                            <td valign="top" <%= sBgColor %> align="center"><nested:write property="storageQuota" /></td>
                        </tr>
                        <% iCount++; %>
                    </nested:iterate>
                    <% if (iCount==1) { %>
                        <tr><td colspan="9" bgcolor="#FFFFFF"><b><bean:message key="jsp.report.usageReport.jsp.IdleUserActivity.None" /></b></td></tr>
                    <% } %>
                </table>
            </td>
        </tr>
    </table>
    <br>

    <table border="0" cellspacing="0" cellpadding="0" width="650">
        <tr>
            <td class="tableHeader"><bean:message key="jsp.report.usageReport.jsp.OnlineFileRestore" /></td>
        </tr>
        <tr>
            <td bgcolor="#000080">
                <table cellspacing="1" width="100%">
                    <tr>
                        <td bgColor="#EDE1E0" align="right"></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><div style="width: 90; height: 12"><bean:message key="GLOBAL.UserProfile.LoginName" /></div></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><bean:message key="GLOBAL.UserProfile.Owner" /></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><bean:message key="GLOBAL.RestoreJob.Log.IP" /></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><div style="width: 90; height: 12"><bean:message key="jsp.report.usageReport.jsp.OnlineFileRestore.TimePeriod" /></div></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><bean:message key="jsp.report.usageReport.jsp.OnlineFileRestore.Count" /></td>
                        <td bgColor="#EDE1E0" class="tableTitle" align="center"><bean:message key="GLOBAL.RestoreJob.Log.FileSize" /></td>
                    </tr>
                    <%	iCount=1; %>
                    <nested:iterate id="restoreList" property="restoreList" name="getUsageReportForm">
                        <% String sBgColor=((iCount%2)==0) ? " bgcolor='#EEEECC'" : " bgcolor='#FFFFCC'" ; %>
                        <tr>
                            <td valign="top" <%= sBgColor %> align="right">&nbsp;<%= iCount %>&nbsp;</td>
                            <td valign="top" <%= sBgColor %> align="center"><nested:write property="loginName" /></td>
                            <td valign="top" <%= sBgColor %> align="center"><nested:write property="owner" /></td>
                            <td valign="top" <%= sBgColor %> align="center"><nested:write property="ipAddress" /></td>
                            <td valign="top" <%= sBgColor %> align="center"><nested:write property="restoreTime" /></td>
                            <td valign="top" <%= sBgColor %> align="center"><nested:write property="fileNo" /></td>
                            <td valign="top" <%= sBgColor %> align="center"><nested:write property="fileSize" /></td>
                        </tr>
                        <% iCount++; %>
                    </nested:iterate>
                    <% if (iCount==1) { %>
                        <tr><td colspan="7" bgcolor="#FFFFFF"><b><bean:message key="jsp.report.usageReport.jsp.OnlineFileRestore.None" /></b></td></tr>
                    <% } else { %>
                        <tr>
                            <nested:nest property="restoreSummary">
                                <td bgcolor="#FFFFFF" colspan="6" align="right"><b><bean:message key="jsp.report.usageReport.jsp.OnlineFileRestore.Total" />&nbsp;&nbsp;</b></td>
                                <td bgcolor="#FFFFFF" align="center"><b><nested:write property="fileSize" /></b></td>
                            </nested:nest>
                        </tr>
                    <% } %>
                </table>
            </td>
        </tr>
    </table>
    <br>
    </html:form>
</body>
</html>
