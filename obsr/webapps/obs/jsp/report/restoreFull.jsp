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

<bean:define id="getRestoreFullReportForm" name="getRestoreFullReportForm" type="com.ahsay.obs.www.report.bean.GetRestoreFullReportForm"/> 

<% String sHomepage = getRestoreFullReportForm.getHomepage(); %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=<%= sCharSet %>">
    <meta http-equiv="Content-Language" content="<%= sLocale %>">
</head>

<body bgcolor="#FFFFFF">
    <html:form action="/report/getRestoreFullReport">
    <table border="0" cellpadding="0" cellspacing="0" width="650">
        <tr>
        <td valign="bottom" align="left"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 20px" color="#006699"><bean:message key="jsp.report.restoreFull.jsp.Title" /></font></td>
        <td></td>
        </tr>
        <tr>
            <td></td>
            <td valign="bottom" align="right"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><bean:message key="jsp.report.restoreFull.jsp.GeneratedAt" /> <%= new java.util.Date() %></font></td>
        </tr>
    </table>

    <table border="0" cellpadding="3" width="650" cellspacing="0">
        <tr>
            <td valign="top">
                <table border="0">
                    <tr>
                        <td valign="top" colspan="2"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b><bean:message key="jsp.report.restoreFull.jsp.FAQs" /></b></font></td>
                    </tr>
                    <tr>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#008000"><b><bean:message key="GLOBAL.Label.1" />.</b></font></td>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><font color="#008000"><b><bean:message key="jsp.report.restoreFull.jsp.FAQs.Q1" /></b></font><br>
                            <bean:message key="jsp.report.restoreFull.jsp.FAQs.A1" />&nbsp;<br></font>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" class="faq"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#008000"><b><bean:message key="GLOBAL.Label.2" />.</b></font></td>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><font color="#008000"><b><bean:message key="jsp.report.restoreFull.jsp.FAQs.Q2" /></b></font><br>
                            <bean:message key="jsp.report.restoreFull.jsp.FAQs.A2" arg0='<%= sHomepage %>' /></font>
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top">
                <table border="0" cellspacing="0" align="right" width="350">
                    <nested:nest property="userInfo">
                    <tr>
                        <td colspan="3" bgcolor="#666666"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><b>&nbsp;<bean:message key="jsp.report.restoreFull.jsp.UserSetting" /></b></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><div style="width: 120; height: 1"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.LoginName" /></font></div></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write property="loginName"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Alias" /></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write property="alias"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Language" /></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
							<bean:message key="<%=Resource.getLanguagePropertyName(getRestoreFullReportForm.getUserInfo().getLanguage())%>"/>						
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Contact" /></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                            <nested:iterate id="contact" property="contacts">
                                <bean:write name="contact" /><br>
                            </nested:iterate>
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"></td>
                    </tr>
                    </nested:nest>
                    <nested:nest property="restoreSummary">
                    <tr>
                        <td colspan="3" bgcolor="#666666"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><b>&nbsp;<bean:message key="jsp.report.restoreFull.jsp.FileDownloadSummary" /></b></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="jsp.report.restoreFull.jsp.FileDownloadSummary.DownloadTime" /></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write property="startTime"/> - <nested:write property="endTime"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="jsp.report.restoreFull.jsp.FileDownloadSummary.TotalFiles" /></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write property="fileNo"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="jsp.report.restoreFull.jsp.FileDownloadSummary.TotalFilesSize" /></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write property="fileSize"/></font></td>
                    </tr>
                    </nested:nest>
                </table>
            </td>
        </tr>
    </table>
    <br>
    <table border="0" cellpadding="0" width="650" cellspacing="1">
        <tr>
            <td bgcolor="#dddddd">
                <table border="0" width="100%" cellspacing="1" cellpadding="0">
                    <tr>
                        <td bgcolor="#006699" colspan="6" align="center"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><b><bean:message key="jsp.report.restoreFull.jsp.FileDownloadList" /></b></font></td>
                    </tr>
                    <tr>
                        <td bgcolor="#666666" align="center"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF">&nbsp;</font></td>
                        <td bgcolor="#666666" align="center"><div style="width: 145; height: 15"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><bean:message key="GLOBAL.RestoreJob.Log.DownloadTime" /></font></div></td>
                        <td bgcolor="#666666" align="center"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><bean:message key="GLOBAL.RestoreJob.Log.Filename" /></font></td>
                        <td bgcolor="#666666" align="center"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><bean:message key="GLOBAL.RestoreJob.Log.FileSize" /></font></td>
                        <td bgcolor="#666666" align="center"><div style="width: 121; height: 15"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><bean:message key="GLOBAL.RestoreJob.Log.LastModifed" /></font></div></td>
                        <td bgcolor="#666666" align="center"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><bean:message key="GLOBAL.RestoreJob.Log.IP" /></font></td>
                    </tr>

                    <% int iCount=1; %>
                    <nested:iterate id="file" property="fileList" type="com.ahsay.obs.www.report.bean.GetRestoreFullReportForm$FileInfoBean">
                        <%	String sBgColor=((iCount%2)==0) ? " bgcolor='#EEEECC'" : " bgcolor='#FFFFCC'" ;	%>
                        <tr>
                            <td <%= sBgColor %> valign="top" align="right" ><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#993300">&nbsp;<%= iCount%>&nbsp;</font></td>
                            <td <%= sBgColor %> valign="top" align="center"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#993300"><nested:write property="startTime" /></font></td>
                            <td <%= sBgColor %> valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#993300"><% out.print(file.getFileName()); %></font></td>
                            <td <%= sBgColor %> valign="top" align="right"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#993300"><nested:write property="fileSize" /></font></td>
                            <td <%= sBgColor %> valign="top" align="center"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#993300"><nested:write property="fileTime" /></font></td>
                            <td <%= sBgColor %> valign="top" align="center"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#993300"><nested:write property="ip" /></font></td>
                        </tr>
                        <% iCount++; %>
                    </nested:iterate>
 
                    <% if (getRestoreFullReportForm.isOverlimitRst()) { %> 
                    <tr>
                        <td colspan="6" align="left"><bean:message key="jsp.report.backupJobFull.jsp.TooManyEntriesToShowHere"/></td>
                    </tr> 
                    <% } %> 
                </table>
            </td>
        </tr>
    </table>
    </html:form>
</body>
</html>
