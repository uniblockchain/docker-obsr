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

<bean:define id="getBackupJobSummaryReportForm" name="getBackupJobSummaryReportForm"
type="com.ahsay.obs.www.report.bean.GetBackupJobSummaryReportForm"/>

<% String sHomepage = getBackupJobSummaryReportForm.getHomepage(); %>
 
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=<%= sCharSet %>">
    <meta http-equiv="Content-Language" content="<%= sLocale %>">
</head>

<body bgcolor="#FFFFFF">
    <table border="0" cellpadding="0" cellspacing="0" width="650">
        <tr>
            <td rowspan="2" width="10"><a href="<%= sHomepage %>"><img border="0" src="<bean:write name="getBackupJobSummaryReportForm" property="embedLogoLink"/>" hspace="2" vspace="2"></a></td>
            <td vAlign="top" align="left">
                <font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 20px; vertical-align:top" color="#006699">
                <bean:message key="jsp.report.backupJobSummary.jsp.Title"/>
				<logic:equal name="getBackupJobSummaryReportForm" property="userInfo.isOBM" value="true">
				&nbsp;-&nbsp;<bean:write name="getBackupJobSummaryReportForm" property="backupSetName"/>
				</logic:equal>
                </font>
            </td>
        </tr>
        <tr>
            <td valign="bottom" align="right"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><bean:message key="jsp.report.backupJobSummary.jsp.GeneratedAt"/><%= new java.util.Date() %></font></td>
        </tr>
    </table>

    <table border="0" cellpadding="5" width="650" cellspacing="0">
        <tr>
            <td valign="top">
                <table border="0" cellSpacing="0">
                    <tr>
                        <td bgcolor="#006699" align="center" colspan="3"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><b><bean:message key="jsp.report.backupJobSummary.jsp.BackupJobSummary"/></b></font></td>
                    </tr>
                    <tr>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.BackupJob.BackupTime"/></font></td>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getBackupJobSummaryReportForm" property="backupJobStatus.startTime"/> - <nested:write name="getBackupJobSummaryReportForm" property="backupJobStatus.endTime"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.BackupJob.Status"/></font></td>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">
                            <b><font color="<%= getBackupJobSummaryReportForm.getBackupJobStatus().getStatusColor() %>"><%= getBackupJobSummaryReportForm.getBackupJobStatus().getStatus() %></font></b>
                        </font></td>
                    </tr>
                    <tr>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.BackupJob.NewFiles"/>*</font></td>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getBackupJobSummaryReportForm" property="backupJobStatus.newFileNo"/> [ <nested:write name="getBackupJobSummaryReportForm" property="backupJobStatus.newFileSize"/> ]</font></td>
                    </tr>
                    <tr>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.BackupJob.UpdatedFiles"/>*</font></td>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getBackupJobSummaryReportForm" property="backupJobStatus.updatedFileNo"/> [ <nested:write name="getBackupJobSummaryReportForm" property="backupJobStatus.updatedFileSize"/> ]</font></td>
                    </tr> 
                    <tr>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.BackupJob.PermissionUpdated"/>*</font></td>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getBackupJobSummaryReportForm" property="backupJobStatus.updatedPmtFileNo"/> [ <nested:write name="getBackupJobSummaryReportForm" property="backupJobStatus.updatedPmtFileSize"/> ]</font></td>
                    </tr>
                    <tr>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.BackupJob.DeletedFiles"/>*</font></td>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getBackupJobSummaryReportForm" property="backupJobStatus.deletedFileNo"/> [ <nested:write name="getBackupJobSummaryReportForm" property="backupJobStatus.deletedFileSize"/> ]</font></td>
                    </tr>
                    <tr>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.BackupJob.MovedFiles"/>*</font></td>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getBackupJobSummaryReportForm" property="backupJobStatus.movedFileNo"/> [ <nested:write name="getBackupJobSummaryReportForm" property="backupJobStatus.movedFileSize"/> ]</font></td>
                    </tr>
                    <tr>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.BackupJob.CopiedFiles"/>*</font></td>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getBackupJobSummaryReportForm" property="backupJobStatus.copiedFileNo"/> [ <nested:write name="getBackupJobSummaryReportForm" property="backupJobStatus.copiedFileSize"/> ]</font></td>
                    </tr>					
                    <tr>
                        <td colspan="3" align="right"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">* <bean:message key="jsp.report.backupJobSummary.jsp.BackupJobStatistics.Unit"/></font></td>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><bean:message key="jsp.report.backupJobSummary.jsp.FullListing"/></font></td>
                    </tr>
                </table>
                <br>
                
                <table border="0">
                    <tr>
                        <td colspan="2"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b><bean:message key="jsp.report.backupJobSummary.jsp.FAQs"/></b></font></td>
                    </tr>
                    <tr>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#008000"><b><bean:message key="GLOBAL.Label.1"/>.</b></font></td>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><font color="#008000"><b><bean:message key="jsp.report.backupJobSummary.jsp.FAQs.Q1"/></b></font><br>
                        <bean:message key="jsp.report.backupJobSummary.jsp.FAQs.A1"/><br></font></td>
                    </tr>
                    <tr>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#008000"><b><bean:message key="GLOBAL.Label.2"/>.</b></font></td>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><font color="#008000"><b><bean:message key="jsp.report.backupJobSummary.jsp.FAQs.Q2"/></b></font><br>
                        <bean:message key="jsp.report.backupJobSummary.jsp.FAQs.A2"/><br></font></td>
                    </tr>
                </table>
            </td>
            <td valign="top" rowspan="2">
                <table border="0" cellspacing="0" width="290">
                    <tr>
                        <td colspan="3" bgcolor="#666666"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><b>&nbsp;<bean:message key="jsp.report.backupJobSummary.jsp.UserSetting"/></b></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><div style="width: 120; height: 1"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.LoginName"/></font></div></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getBackupJobSummaryReportForm" property="userInfo.loginName"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Alias"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getBackupJobSummaryReportForm" property="userInfo.alias"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Language"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
							<bean:message key="<%=Resource.getLanguagePropertyName(getBackupJobSummaryReportForm.getUserInfo().getLanguage()) %>"/>
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Contact"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                            <nested:iterate id="contact" name="getBackupJobSummaryReportForm" property="userInfo.contacts">
                                <bean:write name="contact" /><br>
                            </nested:iterate>
                        </font></td>
                    </tr> 
                    <tr>
                        <td colspan="3"></td>
                    </tr>
                    <tr>
                        <td colspan="3" bgcolor="#666666"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><b>&nbsp;<bean:message key="jsp.report.backupJobSummary.jsp.BackupSetting"/></b></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><div style="width: 119; height: 15"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.BackupSet.BackupSource"/></font></div></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                        <% boolean bSrcPresent=false; %>
                        <nested:iterate id="src" name="getBackupJobSummaryReportForm" property="selectedSrcs">
                            <% bSrcPresent=true; %>
                            <bean:write name="src" /><br>
                        </nested:iterate></font>
                        <% boolean bPresent = false; %>
                        <nested:iterate id="src" name="getBackupJobSummaryReportForm" property="deselectedSrcs">
                            <%	if(!bPresent) { %>
                                <font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><u><bean:message key="jsp.report.backupJobSummary.jsp.BackupSource.Exclude"/></u></font><br>
                                <% bPresent=true; %>
                            <% } %>
                            <font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><bean:write name="src" /></font><br>
                        </nested:iterate>
                        <% if(!bSrcPresent) { %>
                            <font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                            <bean:message key="jsp.report.backupJobSummary.jsp.BackupSource.None"/>
                            </font> 
                        <% } %>
                        </font></td>
                    </tr>
                    <tr>
                        <td colspan="3"></td>
                    </tr>
                    <tr>
                        <td colspan="3" bgcolor="#666666"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><b>&nbsp;<bean:message key="jsp.report.backupJobSummary.jsp.BackupStatistics"/></b></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.DataArea"/>**</font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">&nbsp;<nested:write name="getBackupJobSummaryReportForm" property="userInfo.dataFileNo"/> [ <nested:write name="getBackupJobSummaryReportForm" property="userInfo.dataSize"/> / <nested:write name="getBackupJobSummaryReportForm" property="userInfo.dataUncompressed"/> ] </font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.RetentionArea"/>**</font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">&nbsp;<nested:write name="getBackupJobSummaryReportForm" property="userInfo.retainFileNo"/> [ <nested:write name="getBackupJobSummaryReportForm" property="userInfo.retainSize"/> / <nested:write name="getBackupJobSummaryReportForm" property="userInfo.retainUncompressed"/> ] </font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.BackupQuota"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">&nbsp;<nested:write name="getBackupJobSummaryReportForm" property="userInfo.quota"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.RemainingQuota"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">&nbsp;<nested:write name="getBackupJobSummaryReportForm" property="userInfo.remainQuota"/></font></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="right"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">** <bean:message key="jsp.report.backupJobSummary.jsp.BackupJobStatistics.UnitWithUncompressed"/></font></td>
                    </tr>
                    <tr>
                        <td colspan="3"></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
 </body>
 <html>