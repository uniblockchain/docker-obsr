<%@ page language="java" %> 
<%@ page import="java.util.Locale" %> 
<%@ page import="com.ahsay.obs.www.Resource" %>
<%@ page import="com.ahsay.obs.www.report.bean.*" %>
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

<bean:define id="getBackupJobFullReportForm" name="getBackupJobFullReportForm" 
type="com.ahsay.obs.www.report.bean.GetBackupJobFullReportForm"/> 
 
<html> 
<head> 
    <title>Full Backup Report</title> 
    <meta http-equiv="Content-Type" content="text/html; charset=<%= sCharSet %>"> 
    <meta http-equiv="Content-Language" content="<%= sLocale %>"> 
    <meta http-equiv="Content-Language" content="en-us"> 
    <STYLE type="text/css"> 
        <!-- 
        body { font-family: arial, helvetica, verdana; font-size: 8pt; background-color: #ffffff; color: #000000; font-weight: normal }
        td { font-family: arial, helvetica, verdana; font-size: 8pt }
        h2 { font-size: 22pt }

        .t1 { background-color: #999999; text-align: center; color: #ffffff; font-weight: bold }
        .t2 { text-align: right; color: #ffffff }

        .af { background-color: #ffffff; color: #555555; font-weight: bold; padding-left: 1mm; padding-right: 1mm }
        .av { background-color: #ffffff; color: #0033cc; padding-left: 1mm; padding-right: 1mm }

        .bfc { background-color: #d8d8d8; color: #008000; font-weight: bold; text-align: center; padding-left: 1mm; padding-right: 1mm }
        .bfr { background-color: #d8d8d8; color: #008000; font-weight: bold; text-align: right; padding-left: 1mm; padding-right: 1mm }
        .bfl { background-color: #d8d8d8; color: #008000; font-weight: bold; text-align: left; padding-left: 1mm; padding-right: 1mm }
        .bvel { background-color: #ccffcc; vertical-align: top; text-align: left; padding-left: 1mm; padding-right: 1mm }
        .bvec { background-color: #ccffcc; vertical-align: top; padding-left: 1mm; padding-right: 1mm; text-align: center }
        .bver { background-color: #ccffcc; vertical-align: top; padding-left: 1mm; padding-right: 1mm; text-align: right }
        .bvol { vertical-align: top; text-align: left; padding-left: 1mm; padding-right: 1mm }
        .bvoc { vertical-align: top; padding-left: 1mm; padding-right: 1mm; text-align: center }
        .bvor { vertical-align: top; padding-left: 1mm; padding-right: 1mm; text-align: right }

        .kf { color: #008000; font-weight: bold; vertical-align: top; padding-top: 1mm; padding-left: 4mm; padding-bottom: 1mm }
        .kv { vertical-align: top; padding-top: 1mm; padding-left: 2mm; padding-bottom: 1mm }
        --> 
    </STYLE> 
</head>  

<body> 
    <html:form action="/report/getBackupJobFullReport"> 
    <table border="0" cellpadding="0" cellspacing="0" width="650"> 
        <tr> 
            <td><h2><bean:message key="jsp.report.backupJobFull.jsp.Title"/></h2></td> 
            <td valign="top" align="right"><b><font color="#808000" size="1" face="Verdana">
                <bean:message key="jsp.report.backupJobFull.jsp.GeneratedAt"/>&nbsp;<%= new java.util.Date() %></font></b>
            </td> 
        </tr> 
    </table>  
    
    <table border="0" cellpadding="3" width="650" cellspacing="0"> 
        <tr> 
            <td valign="top" width="650" colspan="2"></td> 
        </tr>
        <tr> 
            <td valign="top"> 
                <table border="0" cellpadding="0" cellspacing="0"> 
                    <tr> 
                        <td class="t1"> 
                            <table border="0" cellpadding="0" cellspacing="2" width="100%"> 
                                <tr> 
                                    <td colspan="2" class="t1" style="text-align: left; padding-left: 1mm; padding-right: 1mm"><bean:message key="jsp.report.backupJobFull.jsp.BackupJobSummary"/></td> 
                                </tr> 
                                <tr> 
                                    <td class="af"><bean:message key="GLOBAL.UserProfile.LoginName"/></td> 
                                    <td class="av"><nested:write property="loginName" />&nbsp;</td> 
                                </tr> 
                                <tr> 
                                    <td class="af"><bean:message key="GLOBAL.BackupSet"/></td> 
                                    <td class="av"><nested:write property="backupSetName" />&nbsp;<font color="#AAAAAA">(<nested:write property="backupSetID" />)</font>&nbsp;</td> 
                                </tr> 
                                <tr> 
                                    <td class="af"><bean:message key="GLOBAL.BackupJob"/></td> 
                                    <td class="av"><nested:write property="backupJob" /></td> 
                                </tr> 
                                <tr> 
                                    <td class="af"><bean:message key="GLOBAL.BackupJob.Status"/></td> 
                                    <td class="av">									
                                        <b><font color="<%=getBackupJobFullReportForm.getStatusColor()%>"><%= getBackupJobFullReportForm.getStatus() %></font></b>
                                        &nbsp;										
                                    </td> 
                                </tr> 
                                <tr> 
                                    <td class="af"><bean:message key="GLOBAL.BackupJob.BackupTime"/></td> 
                                    <td class="av"><nested:write property="startTime"/> - <nested:write property="stopTime"/>&nbsp;</td>
                                </tr> 
                            </table> 
                        </td> 
                    </tr> 
                </table>  
            </td> 
            <td valign="top"> 
                <table border="0" cellpadding="0" cellspacing="0" align="right"> 
                    <tr> 
                        <td class="t1"> 
                            <table border="0" cellpadding="0" cellspacing="2" width="100%"> 
                                <tr> 
                                    <td colspan="2"  class="t1" style="text-align: left; padding-left: 1mm; padding-right: 1mm"><bean:message key="jsp.report.backupJobFull.jsp.BackupJobStatistics"/></td> 
                                </tr> 
                                <tr> 
                                    <td class="af"><bean:message key="GLOBAL.BackupJob.NewFiles"/>*</td> 
                                    <td class="av"><bean:write name="getBackupJobFullReportForm" property="newFileCount"/> 
                                    [<bean:write name="getBackupJobFullReportForm" property="newFileSize"/> / <bean:write name="getBackupJobFullReportForm" property="newFileUncompressed"/> (<bean:write name="getBackupJobFullReportForm" property="newFileZipRatio"/>%)]</td>
                                </tr> 
                                <tr> 
                                    <td class="af"><bean:message key="GLOBAL.BackupJob.UpdatedFiles"/>*</td> 
                                    <td class="av"><bean:write name="getBackupJobFullReportForm" property="updateFileCount"/> 
                                    [<bean:write name="getBackupJobFullReportForm" property="updateFileSize"/> / <bean:write name="getBackupJobFullReportForm" property="updFileUncompressed"/> (<bean:write name="getBackupJobFullReportForm" property="updFileZipRatio"/>%)]</td>
                                </tr> 
                                <tr> 
                                    <td class="af"><bean:message key="GLOBAL.BackupJob.PermissionUpdatedFiles"/>*</td> 
                                    <td class="av"><bean:write name="getBackupJobFullReportForm" property="updatePmtFileCount"/> 
                                    [<bean:write name="getBackupJobFullReportForm" property="updatePmtFileSize"/> / <bean:write name="getBackupJobFullReportForm" property="updPermFileUncompressed"/> (<bean:write name="getBackupJobFullReportForm" property="updPermFileZipRatio"/>%)]</td>
                                </tr> 
                                <tr> 
                                    <td class="af"><bean:message key="GLOBAL.BackupJob.DeletedFiles"/>*</td> 
                                    <td class="av"><bean:write name="getBackupJobFullReportForm" property="deleteFileCount"/> 
                                    [<bean:write name="getBackupJobFullReportForm" property="deleteFileSize"/> / <bean:write name="getBackupJobFullReportForm" property="delFileUncompressed"/> (<bean:write name="getBackupJobFullReportForm" property="delFileZipRatio"/>%)]</td>
                                </tr> 
                                <tr> 
                                    <td class="af"><bean:message key="GLOBAL.BackupJob.MovedFiles"/>*</td> 
                                    <td class="av"><bean:write name="getBackupJobFullReportForm" property="moveFileCount"/> 
                                    [<bean:write name="getBackupJobFullReportForm" property="moveFileSize"/> / <bean:write name="getBackupJobFullReportForm" property="movedFileUncompressed"/> (<bean:write name="getBackupJobFullReportForm" property="movedFileZipRatio"/>%)]</td>
                                </tr> 
                                <tr> 
                                    <td class="af"><bean:message key="GLOBAL.BackupJob.CopiedFiles"/>*</td> 
                                    <td class="av"><bean:write name="getBackupJobFullReportForm" property="copyFileCount"/> 
                                    [<bean:write name="getBackupJobFullReportForm" property="copyFileSize"/> / <bean:write name="getBackupJobFullReportForm" property="cpyFileUncompressed"/> (<bean:write name="getBackupJobFullReportForm" property="cpyFileZipRatio"/>%)]</td>
                                </tr> 								
                            </table> 
                        </td> 
                    </tr> 
                    <tr> 
                        <td>* <bean:message key="jsp.user.admin.backupReportFull.jsp.UnitWithUncompressed"/></td>                
                    </tr> 
                </table> 
            </td> 
        </tr> 
        <% if (getBackupJobFullReportForm.isShowDBName() || getBackupJobFullReportForm.isShowVMName()) { %>
        <tr>
            <td valign="top" width="50%"> 
                <table border="0" cellpadding="0" cellspacing="0" width="100%"> 
                    <tr> 
                        <td class="t1"> 
                            <table border="0" cellpadding="0" cellspacing="2" width="100%"> 
                                <tr> 
                                    <td colspan="2"  class="t1" style="text-align: left; padding-left: 1mm; padding-right: 1mm">
                                    <logic:equal name="getBackupJobFullReportForm" property="showDBName" value="true">
                                    <bean:message key="jsp.report.backupJobFull.jsp.DBSummary"/>
                                    </logic:equal>
                                    <logic:equal name="getBackupJobFullReportForm" property="showVMName" value="true">
                                    <bean:message key="jsp.report.backupJobFull.jsp.VMSummary"/>
                                    </logic:equal>
                                    </td> 
                                </tr> 
                                <tr> 
                                    <td class="af"><bean:message key="GLOBAL.BackupJob.Successful"/></td> 
                                    <td class="av">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%"> 
                                            <logic:iterate id="dbName" name="getBackupJobFullReportForm" property="displaySuccessfulDBNames">  
                                            <tr>											
                                                <td class="av"><bean:write name="dbName"/></td>											
                                            </tr>
                                            </logic:iterate>
                                        </table>
                                    </td>
                                </tr> 
                                <tr> 
                                    <td class="af"><bean:message key="GLOBAL.BackupJob.Missed"/></td> 
                                    <td class="av">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%"> 
                                            <logic:iterate id="dbName" name="getBackupJobFullReportForm" property="displayMissedDBNames">  
                                            <tr>											
                                                <td class="av"><bean:write name="dbName"/></td>
                                            </tr>
                                            </logic:iterate>
                                        </table>
                                    </td>
                                </tr> 
                            </table>
                        </td>
                    </tr>
                </table>
            </td>				
            <td>&nbsp;</td>
        </tr>
        <% } %>
        <% if (getBackupJobFullReportForm.isShowPublicFolderName()) { %>
        <tr>
            <td valign="top" width="50%"> 
                <table border="0" cellpadding="0" cellspacing="0" width="100%"> 
                    <tr> 
                        <td class="t1"> 
                            <table border="0" cellpadding="0" cellspacing="2" width="100%"> 
                                <tr> 
                                    <td colspan="2"  class="t1" style="text-align: left; padding-left: 1mm; padding-right: 1mm">
                                    <bean:message key="jsp.report.backupJobFull.jsp.PublicFolderSummary"/>
                                    </td> 
                                </tr> 
                                <tr> 
                                    <td class="af"><bean:message key="GLOBAL.BackupJob.Successful"/></td> 
                                    <td class="av">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%"> 
                                            <logic:iterate id="pfName" name="getBackupJobFullReportForm" property="displaySuccessfulPublicFolderNames">  
                                            <tr>											
                                                <td class="av"><bean:write name="pfName"/></td>											
                                            </tr>
                                            </logic:iterate>
                                        </table>
                                    </td>
                                </tr> 
                                <tr> 
                                    <td class="af"><bean:message key="GLOBAL.BackupJob.Missed"/></td> 
                                    <td class="av">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%"> 
                                            <logic:iterate id="pfName" name="getBackupJobFullReportForm" property="displayMissedPublicFolderNames">  
                                            <tr>											
                                                <td class="av"><bean:write name="pfName"/></td>
                                            </tr>
                                            </logic:iterate>
                                        </table>
                                    </td>
                                </tr> 
                            </table>
                        </td>
                    </tr>
                </table>
            </td>				
            <td>&nbsp;</td>
        </tr>
        <% } %>
    </table>
    
    <p>     
    <table border="0" cellpadding="0" cellspacing="0" width="650"> 
        <tr> 
            <td class="t1"> 
                <table border="0" cellpadding="0" cellspacing="2" width="100%"> 
                    <tr> 
                        <td align="center" class="t1"><bean:message key="GLOBAL.BackupJob.BackupLogs"/></td> 
                    </tr> 
                    <tr>
                        <td bgcolor="#FFFFFF"> 
                            <table border="0" cellspacing="1" cellpadding="0" width="100%"> 
                                <tr> 
                                    <td class="bfl"><span style="width: 40"><bean:message key="GLOBAL.General.Number"/></span></td> 
                                    <td class="bfl"><span style="width: 40"><bean:message key="GLOBAL.BackupJob.BackupLog.Type"/></span></td> 
                                    <td class="bfl"><span style="width: 110"><bean:message key="GLOBAL.BackupJob.BackupLog.Timestamp"/></span></td> 
                                    <logic:equal name="getBackupJobFullReportForm" property="showHost" value="true">
                                    <td class="bfl"><span style="width: 40"><bean:message key="GLOBAL.BackupJob.BackupLog.Type"/></span></td> 
                                    </logic:equal>
                                    <td class="bfl"><span style="width: 400"><bean:message key="GLOBAL.BackupJob.BackupLogs"/></span></td> 
                                </tr> 
                                <%	int iCount=1; %> 
                                <nested:iterate id="error" name="getBackupJobFullReportForm" property="errors" type="com.ahsay.obs.www.report.bean.GetBackupJobFullReportForm$RecordBean"> 
                                    <tr> 
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'><%= iCount %></td> 
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'> 
                                            <font color="<%= error.getTextColor() %>">
                                                <%if(GetBackupJobFullReportForm.ERROR_TYPE.equals(error.getType())){%><b><%}%>
                                                    <bean:message key="<%= error.getTypeKey() %>"/>
                                                <%if(GetBackupJobFullReportForm.ERROR_TYPE.equals(error.getType())){%></b><%}%>
                                            </font> 
                                        </td> 
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'>
                                            <font color="<%= error.getTextColor() %>"><nested:write property="timestamp" /></font> 											
                                        </td> 
                                        <logic:equal name="getBackupJobFullReportForm" property="showHost" value="true">
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'>
                                            <font color="<%= error.getTextColor() %>"><nested:write property="host" /></font> 
                                        </td> 
                                        </logic:equal>
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'>
                                            <font color="<%= error.getTextColor() %>"><% out.print(error.getOthers()); %></font> 
                                        </td> 
                                    </tr> 
                                    <% iCount++; %> 
                                </nested:iterate> 
                                <% if (iCount==1) { %> 
                                    <tr><td colspan="4" align="center"><bean:message key="jsp.report.backupJobFull.jsp.NoLogs"/></td></tr> 
                                <% } %>
 
                                <% if (getBackupJobFullReportForm.isOverlimitErr()) { %> 
                                    <tr><td colspan="4" align="left"><bean:message key="jsp.report.backupJobFull.jsp.TooManyEntriesToShowHere"/></td></tr> 
                                <% } %>
                            </table> 
                        </td> 
                    </tr> 
                </table> 
            </td> 
        </tr> 
    </table>
    
    <p>
    <table border="0" cellpadding="0" cellspacing="0" width="650"> 
        <tr> 
            <td class="t1"> 
                <table border="0" cellpadding="0" cellspacing="2" width="100%"> 
                    <tr> 
                        <td>
                            <table border="0" width="100%" cellspacing="0" cellpadding="0"> 
                                <tr> 
                                    <td width="40%" class="t1"><bean:message key="GLOBAL.BackupJob.NewFiles"/></td> 
                                </tr> 
                            </table> 
                        </td> 
                    </tr> 
                    <tr> 
                        <td bgcolor="#FFFFFF"> 
                            <table border="0" cellspacing="1" cellpadding="0" width="100%"> 
                                <tr> 
                                    <td class="bfl"><span style="width: 20"><bean:message key="GLOBAL.General.Number"/></span></td> 
                                    <logic:equal name="getBackupJobFullReportForm" property="showHost" value="true">
                                    <td class="bfl"><span style="width: 50"><bean:message key="GLOBAL.BackupJob.BackupLog.ScheduleHost"/></span></td>
                                    </logic:equal>
                                    <td class="bfl"><span style="width: 380"> <bean:message key="GLOBAL.BackupJob.BackupLog.DirFiles"/></span></td>
                                    <td class="bfr"><span style="width: 110"><bean:message key="jsp.report.BackupJobFull.jsp.Zipped"/> / <bean:message key="GLOBAL.BackupJob.BackupLog.Size"/> <bean:message key="jsp.report.BackupJobFull.jsp.Ratio"/></span></td> 
                                    <td class="bfr"><span style="width: 90"><bean:message key="GLOBAL.BackupJob.BackupLog.LastModified"/></span></td> 
                                </tr> 
                                <%	iCount=1; %> 
                                <nested:iterate id="file" name="getBackupJobFullReportForm" property="newFiles" type="com.ahsay.obs.www.report.bean.GetBackupJobFullReportForm$RecordBean"> 
                                    <tr>
                                        <% if (iCount > 1 && (file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumPairFileType() + "]") || file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumDeltaFileType() + "]") || file.getFilename().startsWith("[" + getBackupJobFullReportForm.getLinkCheckSumFileType() + "]"))) iCount--; %>
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'><% if (!file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumPairFileType() + "]") && !file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumDeltaFileType() + "]") && !file.getFilename().startsWith("[" + getBackupJobFullReportForm.getLinkCheckSumFileType() + "]")) out.print(iCount); %></td>
                                        <logic:equal name="getBackupJobFullReportForm" property="showHost" value="true">							
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'>
                                            <nested:equal property="checksumFile" value="false">
                                                <nested:write property="host" />
                                            </nested:equal>
                                        </td>										
                                        </logic:equal>
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'><% out.print(file.getFilename()); %></td>
                                        <td class='<%= (iCount%2)==0 ? "bver" : "bvor" %>'><nested:write property="size" /> / <nested:write property="uncompressedSize" /> [<nested:write property="compressPercentage" />%]</td> 
                                        <td class='<%= (iCount%2)==0 ? "bver" : "bvor" %>'><nested:write property="timestamp" /></td> 
                                    </tr> 
                                    <% iCount++; %> 
                                </nested:iterate> 
                                <% if (iCount==1) { %> 
                                    <tr><td colspan="4" align="center"><bean:message key="jsp.report.backupJobFull.jsp.NoNewFiles"/></td></tr> 
                                <% } %>
                                <% if (getBackupJobFullReportForm.isOverlimitNew()) { %> 
                                    <tr><td colspan="4" align="left"><bean:message key="jsp.report.backupJobFull.jsp.TooManyEntriesToShowHere"/></td></tr> 
                                <% } %> 
                            </table> 
                        </td> 
                    </tr> 
                </table> 
            </td> 
        </tr> 
    </table>
    
    <p>
    <table border="0" cellpadding="0" cellspacing="0" width="650"> 
        <tr> 
            <td class="t1"> 
                <table border="0" cellpadding="0" cellspacing="2" width="100%"> 
                    <tr> 
                        <td> 
                            <table border="0" cellpadding="0" cellspacing="0" width="100%"> 
                                <tr> 
                                    <td width="40%" class="t1"><bean:message key="GLOBAL.BackupJob.UpdatedFiles"/></td> 
                                </tr> 
                            </table> 
                        </td> 
                    </tr> 
                    <tr> 
                        <td bgcolor="#FFFFFF"> 
                            <table border="0" cellpadding="0" cellspacing="1" width="100%"> 
                                <tr> 
                                    <td class="bfl"><span style="width: 20"><bean:message key="GLOBAL.General.Number"/></span></td> 
                                    <logic:equal name="getBackupJobFullReportForm" property="showHost" value="true">
                                    <td class="bfl"><span style="width: 50"><bean:message key="GLOBAL.BackupJob.BackupLog.ScheduleHost"/></span></td>
                                    </logic:equal>
                                    <td class="bfl"><span style="width: 380"><bean:message key="GLOBAL.BackupJob.BackupLog.Files"/></span></td> 
                                    <td class="bfr"><span style="width: 110"><bean:message key="jsp.report.BackupJobFull.jsp.Zipped"/> / <bean:message key="GLOBAL.BackupJob.BackupLog.Size"/> <bean:message key="jsp.report.BackupJobFull.jsp.Ratio"/></span></td> 
                                    <td class="bfr"><span style="width: 90"><bean:message key="GLOBAL.BackupJob.BackupLog.LastModified"/></span></td> 
                                </tr> 
                                <%	iCount=1; %> 
                                <nested:iterate id="file" name="getBackupJobFullReportForm" property="updateFiles" type="com.ahsay.obs.www.report.bean.GetBackupJobFullReportForm$RecordBean"> 
                                    <tr>
                                        <% if (iCount > 1 && (file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumPairFileType() + "]") || file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumDeltaFileType() + "]") || file.getFilename().startsWith("[" + getBackupJobFullReportForm.getLinkCheckSumFileType() + "]"))) iCount--; %>
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'><% if (!file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumPairFileType() + "]") && !file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumDeltaFileType() + "]") && !file.getFilename().startsWith("[" + getBackupJobFullReportForm.getLinkCheckSumFileType() + "]")) out.print(iCount); %></td> 
                                        <logic:equal name="getBackupJobFullReportForm" property="showHost" value="true">							
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'>
                                            <nested:equal property="checksumFile" value="false">
                                                <nested:write property="host" />
                                            </nested:equal>
                                        </td>										
                                        </logic:equal>
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'><% out.print(file.getFilename()); %></td> 
                                        <td class='<%= (iCount%2)==0 ? "bver" : "bvor" %>'><nested:write property="size" /> / <nested:write property="uncompressedSize" /> [<nested:write property="compressPercentage" />%]</td>  
                                        <td class='<%= (iCount%2)==0 ? "bver" : "bvor" %>'><nested:write property="timestamp" /></td> 
                                    </tr> 
                                    <% iCount++; %> 
                                </nested:iterate> 
                                <% if (iCount==1) { %> 
                                    <tr><td colspan="4" align="center"><bean:message key="jsp.report.backupJobFull.jsp.NoUpdatedFiles"/></td></tr> 
                                <% } %>    
                                <% if (getBackupJobFullReportForm.isOverlimitUdp()) { %> 
                                    <tr><td colspan="4" align="left"><bean:message key="jsp.report.backupJobFull.jsp.TooManyEntriesToShowHere"/></td></tr> 
                                <% } %>
                            </table> 
                        </td> 
                    </tr>
                </table>
            </td> 
        </tr>
    </table>
    
    <p>
    <table border="0" cellpadding="0" cellspacing="0" width="650"> 
        <tr> 
            <td class="t1"> 
                <table border="0" cellpadding="0" cellspacing="2" width="100%"> 
                    <tr> 
                        <td> 
                            <table border="0" cellpadding="0" cellspacing="0" width="100%"> 
                                <tr> 
                                    <td width="40%" class="t1"><bean:message key="GLOBAL.BackupJob.PermissionUpdatedFiles"/></td> 
                                </tr> 
                            </table> 
                        </td> 
                    </tr>
                    <tr> 
                        <td bgcolor="#FFFFFF"> 
                            <table border="0" cellpadding="0" cellspacing="1" width="100%"> 
                                <tr> 
                                    <td class="bfl"><span style="width: 20"><bean:message key="GLOBAL.General.Number"/></span></td> 
                                    <logic:equal name="getBackupJobFullReportForm" property="showHost" value="true">
                                    <td class="bfl"><span style="width: 50"><bean:message key="GLOBAL.BackupJob.BackupLog.ScheduleHost"/></span></td>
                                    </logic:equal>
                                    <td class="bfl"><span style="width: 380"><bean:message key="GLOBAL.BackupJob.BackupLog.DirFiles"/></span></td> 
                                    <td class="bfr"><span style="width: 110"><bean:message key="jsp.report.BackupJobFull.jsp.Zipped"/> / <bean:message key="GLOBAL.BackupJob.BackupLog.Size"/> <bean:message key="jsp.report.BackupJobFull.jsp.Ratio"/></span></td> 
                                    <td class="bfr"><span style="width: 90"><bean:message key="GLOBAL.BackupJob.BackupLog.LastModified"/></span></td> 
                                </tr> 
                                <%	iCount=1; %> 
                                <nested:iterate id="file" name="getBackupJobFullReportForm" property="updatePmtFiles" type="com.ahsay.obs.www.report.bean.GetBackupJobFullReportForm$RecordBean"> 
                                    <tr> 
                                        <% if (iCount > 1 && (file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumPairFileType() + "]") || file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumDeltaFileType() + "]") || file.getFilename().startsWith("[" + getBackupJobFullReportForm.getLinkCheckSumFileType() + "]"))) iCount--; %>
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'><% if (!file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumPairFileType() + "]") && !file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumDeltaFileType() + "]") && !file.getFilename().startsWith("[" + getBackupJobFullReportForm.getLinkCheckSumFileType() + "]")) out.print(iCount); %></td> 
                                        <logic:equal name="getBackupJobFullReportForm" property="showHost" value="true">							
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'>
                                            <nested:equal property="checksumFile" value="false">
                                                <nested:write property="host" />
                                            </nested:equal>
                                        </td>										
                                        </logic:equal>
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'><% out.print(file.getFilename()); %></td> 
                                        <td class='<%= (iCount%2)==0 ? "bver" : "bvor" %>'><nested:write property="size" /> / <nested:write property="uncompressedSize" /> [<nested:write property="compressPercentage" />%]</td> 
                                        <td class='<%= (iCount%2)==0 ? "bver" : "bvor" %>'><nested:write property="timestamp" /></td> 
                                    </tr> 
                                    <% iCount++; %> 
                                </nested:iterate> 
                                <% if (iCount==1) { %> 
                                    <tr><td colspan="4" align="center"><bean:message key="jsp.report.backupJobFull.jsp.NoPermissionUpdated"/></td></tr> 
                                <% } %> 
                                <% if (getBackupJobFullReportForm.isOverlimitPmt()) { %> 
                                    <tr><td colspan="4" align="left"><bean:message key="jsp.report.backupJobFull.jsp.TooManyEntriesToShowHere"/></td></tr> 
                                <% } %>
                            </table> 
                        </td> 
                    </tr> 
                </table> 
            </td> 
        </tr> 
    </table>
    
    <p>
    <table border="0" cellpadding="0" cellspacing="0" width="650"> 
        <tr> 
            <td class="t1"> 
                <table border="0" cellpadding="0" cellspacing="2" width="100%"> 
                    <tr> 
                        <td> 
                            <table border="0" cellpadding="0" cellspacing="0" width="100%"> 
                                <tr> 
                                    <td width="40%" class="t1"><bean:message key="GLOBAL.BackupJob.DeletedFiles"/></td> 
                                </tr> 
                            </table> 
                        </td> 
                    </tr> 
                    <tr> 
                        <td bgcolor="#FFFFFF"> 
                            <table border="0" cellpadding="0" cellspacing="1" width="100%"> 
                                <tr> 
                                    <td class="bfl"><span style="width: 20"><bean:message key="GLOBAL.General.Number"/></span></td> 
                                    <logic:equal name="getBackupJobFullReportForm" property="showHost" value="true">
                                    <td class="bfl"><span style="width: 50"><bean:message key="GLOBAL.BackupJob.BackupLog.ScheduleHost"/></span></td>
                                    </logic:equal>
                                    <td class="bfl"><span style="width: 380"><bean:message key="GLOBAL.BackupJob.BackupLog.DirFiles"/></span></td> 
                                    <td class="bfr"><span style="width: 110"><bean:message key="jsp.report.BackupJobFull.jsp.Zipped"/> / <bean:message key="GLOBAL.BackupJob.BackupLog.Size"/> <bean:message key="jsp.report.BackupJobFull.jsp.Ratio"/></span></td> 
                                    <td class="bfr"><span style="width: 90"><bean:message key="GLOBAL.BackupJob.BackupLog.LastModified"/></span></td> 
                                </tr> 
                                <%	iCount=1; %> 
                                <nested:iterate id="file" name="getBackupJobFullReportForm" property="deleteFiles" type="com.ahsay.obs.www.report.bean.GetBackupJobFullReportForm$RecordBean"> 
                                    <tr> 
                                        <% if (iCount > 1 && (file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumPairFileType() + "]") || file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumDeltaFileType() + "]") || file.getFilename().startsWith("[" + getBackupJobFullReportForm.getLinkCheckSumFileType() + "]"))) iCount--; %>
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'><% if (!file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumPairFileType() + "]") && !file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumDeltaFileType() + "]") && !file.getFilename().startsWith("[" + getBackupJobFullReportForm.getLinkCheckSumFileType() + "]")) out.print(iCount); %></td> 
                                        <logic:equal name="getBackupJobFullReportForm" property="showHost" value="true">							
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'>
                                            <nested:equal property="checksumFile" value="false">
                                                <nested:write property="host" />
                                            </nested:equal>
                                        </td>										
                                        </logic:equal>
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'><% out.print(file.getFilename()); %></td> 
                                        <td class='<%= (iCount%2)==0 ? "bver" : "bvor" %>'><nested:write property="size" /> / <nested:write property="uncompressedSize" /> [<nested:write property="compressPercentage" />%]</td> 
                                        <td class='<%= (iCount%2)==0 ? "bver" : "bvor" %>'><nested:write property="timestamp" /></td> 
                                    </tr> 
                                    <% iCount++; %> 
                                </nested:iterate> 
                                <% if (iCount==1) { %> 
                                    <tr><td colspan="4" align="center"><bean:message key="jsp.report.backupJobFull.jsp.NoDeletedFiles"/></td></tr> 
                                <% } %>
                                <% if (getBackupJobFullReportForm.isOverlimitDel()) { %> 
                                    <tr><td colspan="4" align="left"><bean:message key="jsp.report.backupJobFull.jsp.TooManyEntriesToShowHere"/></td></tr> 
                                <% } %>
                            </table> 
                        </td> 
                    </tr> 
                </table> 
            </td> 
        </tr> 
    </table>
    
    <p> 
    <table border="0" cellpadding="0" cellspacing="0" width="650"> 
        <tr> 
            <td class="t1"> 
                <table border="0" cellpadding="0" cellspacing="2" width="100%"> 
                    <tr> 
                        <td>
                            <table border="0" width="100%" cellspacing="0" cellpadding="0"> 
                                <tr> 
                                    <td width="40%" class="t1"><bean:message key="GLOBAL.BackupJob.MovedFiles"/></td> 
                                </tr> 
                            </table> 
                        </td> 
                    </tr> 
                    <tr> 
                        <td bgcolor="#FFFFFF"> 
                            <table border="0" cellpadding="0" cellspacing="1" width="100%"> 
                                <tr> 
                                    <td class="bfl"><span style="width: 20"><bean:message key="GLOBAL.General.Number"/></span></td> 
                                    <logic:equal name="getBackupJobFullReportForm" property="showHost" value="true">
                                    <td class="bfl"><span style="width: 50"><bean:message key="GLOBAL.BackupJob.BackupLog.ScheduleHost"/></span></td>
                                    </logic:equal>
                                    <td class="bfl"><span style="width: 380"><bean:message key="GLOBAL.BackupJob.BackupLog.Files"/></span></td> 
                                    <td class="bfr"><span style="width: 110"><bean:message key="jsp.report.BackupJobFull.jsp.Zipped"/> / <bean:message key="GLOBAL.BackupJob.BackupLog.Size"/> <bean:message key="jsp.report.BackupJobFull.jsp.Ratio"/></span></td> 
                                    <td class="bfr"><span style="width: 90"><bean:message key="GLOBAL.BackupJob.BackupLog.LastModified"/></span></td> 
                                </tr> 
                                <% iCount=1; %> 
                                <nested:iterate id="file" name="getBackupJobFullReportForm" property="moveFiles" type="com.ahsay.obs.www.report.bean.GetBackupJobFullReportForm$RecordBean"> 
                                    <tr>
                                        <% if (iCount > 1 && (file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumPairFileType() + "]") || file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumDeltaFileType() + "]") || file.getFilename().startsWith("[" + getBackupJobFullReportForm.getLinkCheckSumFileType() + "]"))) iCount--; %>
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'><% if (!file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumPairFileType() + "]") && !file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumDeltaFileType() + "]") && !file.getFilename().startsWith("[" + getBackupJobFullReportForm.getLinkCheckSumFileType() + "]")) out.print(iCount); %></td> 
                                        <logic:equal name="getBackupJobFullReportForm" property="showHost" value="true">							
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'>
                                            <nested:equal property="checksumFile" value="false">
                                                <nested:write property="host" />
                                            </nested:equal>
                                        </td>										
                                        </logic:equal>
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'><% out.print(file.getOthers()); %></td> 
                                        <td class='<%= (iCount%2)==0 ? "bver" : "bvor" %>'><nested:write property="size" /> / <nested:write property="uncompressedSize" /> [<nested:write property="compressPercentage" />%]</td> 
                                        <td class='<%= (iCount%2)==0 ? "bver" : "bvor" %>'><nested:write property="timestamp" /></td> 
                                    </tr> 
                                    <% iCount++; %> 
                                </nested:iterate> 
                                <% if (iCount==1) { %> 
                                    <tr><td colspan="4" align="center"><bean:message key="jsp.report.backupJobFull.jsp.NoMovedFiles"/></td></tr> 
                                <% } %>
                                <% if (getBackupJobFullReportForm.isOverlimitMov()) { %> 
                                    <tr><td colspan="4" align="left"><bean:message key="jsp.report.backupJobFull.jsp.TooManyEntriesToShowHere"/></td></tr> 
                                <% } %>
                            </table> 
                        </td> 
                    </tr> 
                </table> 
            </td> 
        </tr> 
    </table>     
	
    <p>
    <table border="0" cellpadding="0" cellspacing="0" width="650"> 
        <tr> 
            <td class="t1"> 
                <table border="0" cellpadding="0" cellspacing="2" width="100%"> 
                    <tr> 
                        <td> 
                            <table border="0" cellpadding="0" cellspacing="0" width="100%"> 
                                <tr> 
                                    <td width="40%" class="t1"><bean:message key="GLOBAL.BackupJob.CopiedFiles"/></td> 
                                </tr> 
                            </table> 
                        </td> 
                    </tr> 
                    <tr> 
                        <td bgcolor="#FFFFFF"> 
                            <table border="0" cellpadding="0" cellspacing="1" width="100%"> 
                                <tr> 
                                    <td class="bfl"><span style="width: 20"><bean:message key="GLOBAL.General.Number"/></span></td> 
                                    <logic:equal name="getBackupJobFullReportForm" property="showHost" value="true">
                                    <td class="bfl"><span style="width: 50"><bean:message key="GLOBAL.BackupJob.BackupLog.ScheduleHost"/></span></td>
                                    </logic:equal>
                                    <td class="bfl"><span style="width: 380"><bean:message key="GLOBAL.BackupJob.BackupLog.DirFiles"/></span></td> 
                                    <td class="bfr"><span style="width: 110"><bean:message key="jsp.report.BackupJobFull.jsp.Zipped"/> / <bean:message key="GLOBAL.BackupJob.BackupLog.Size"/> <bean:message key="jsp.report.BackupJobFull.jsp.Ratio"/></span></td> 
                                    <td class="bfr"><span style="width: 90"><bean:message key="GLOBAL.BackupJob.BackupLog.LastModified"/></span></td> 
                                </tr> 
                                <%	iCount=1; %> 
                                <nested:iterate id="file" name="getBackupJobFullReportForm" property="copyFiles" type="com.ahsay.obs.www.report.bean.GetBackupJobFullReportForm$RecordBean"> 
                                    <tr> 
                                        <% if (iCount > 1 && (file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumPairFileType() + "]") || file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumDeltaFileType() + "]") || file.getFilename().startsWith("[" + getBackupJobFullReportForm.getLinkCheckSumFileType() + "]"))) iCount--; %>
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'><% if (!file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumPairFileType() + "]") && !file.getFilename().startsWith("[" + getBackupJobFullReportForm.getChecksumDeltaFileType() + "]") && !file.getFilename().startsWith("[" + getBackupJobFullReportForm.getLinkCheckSumFileType() + "]")) out.print(iCount); %></td> 
                                        <logic:equal name="getBackupJobFullReportForm" property="showHost" value="true">							
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'>
                                            <nested:equal property="checksumFile" value="false">
                                                <nested:write property="host" />
                                            </nested:equal>
                                        </td>										
                                        </logic:equal>
                                        <td class='<%= (iCount%2)==0 ? "bvel" : "bvol" %>'><% out.print(file.getFilename()); %></td> 
                                        <td class='<%= (iCount%2)==0 ? "bver" : "bvor" %>'><nested:write property="size" /> / <nested:write property="uncompressedSize" /> [<nested:write property="compressPercentage" />%]</td> 
                                        <td class='<%= (iCount%2)==0 ? "bver" : "bvor" %>'><nested:write property="timestamp" /></td> 
                                    </tr> 
                                    <% iCount++; %> 
                                </nested:iterate> 
                                <% if (iCount==1) { %> 
                                    <tr><td colspan="4" align="center"><bean:message key="jsp.report.backupJobFull.jsp.NoCopiedFiles"/></td></tr> 
                                <% } %>
                                <% if (getBackupJobFullReportForm.isOverlimitCpy()) { %> 
                                    <tr><td colspan="4" align="left"><bean:message key="jsp.report.backupJobFull.jsp.TooManyEntriesToShowHere"/></td></tr> 
                                <% } %>
                            </table> 
                        </td> 
                    </tr> 
                </table> 
            </td> 
        </tr> 
    </table>	
    </html:form>
    
    <table border="0" cellpadding="0" cellspacing="0" width="650"> 
        <tr> 
            <td valign="top" width="1" style="padding-left: 1mm"><font color="#FF0000"><b><bean:message key="jsp.report.backupJobFull.jsp.Note"/></b></font></td> 
            <td valign="top" style="padding-left: 2mm; padding-bottom: 5mm"><bean:message key="jsp.report.backupJobFull.jsp.Note.Message"/></td> 
        </tr> 
        <tr> 
            <td colspan="2" bgcolor="#F0F0F0" style="padding-top: 2mm; padding-left: 2mm; padding-bottom: 2mm; padding-right: 2mm"> 
                <table border="0" cellpadding="0" cellspacing="0" width="100%"> 
                    <tr> 
                        <td colspan="2" ><b><u><bean:message key="jsp.report.backupJobFull.jsp.Key"/></u></b></td> 
                    </tr> 
                    <tr> 
                        <td class="kf"><div style="width: 100"><bean:message key="GLOBAL.BackupJob.BackupLogs"/></div></td> 
                        <td class="kv"><bean:message key="jsp.report.backupJobFull.jsp.Key.BackupLogs"/></td> 
                    </tr> 
                    <tr> 
                        <td class="kf" bgcolor="#FFFFEE"><bean:message key="GLOBAL.BackupJob.NewFiles"/></td> 
                        <td class="kv" bgcolor="#FFFFEE"><bean:message key="jsp.report.backupJobFull.jsp.Key.NewFiles"/></td> 
                    </tr> 
                    <tr> 
                        <td class="kf"><bean:message key="GLOBAL.BackupJob.UpdatedFiles"/></td> 
                        <td class="kv"><bean:message key="jsp.report.backupJobFull.jsp.Key.UpdatedFiles"/></td> 
                    </tr> 
                    <tr> 
                        <td class="kf" bgcolor="#FFFFEE"><bean:message key="GLOBAL.BackupJob.DeletedFiles"/></td> 
                        <td class="kv" bgcolor="#FFFFEE"><bean:message key="jsp.report.backupJobFull.jsp.Key.DeletedFiles"/></td> 
                    </tr> 
                    <tr> 
                        <td class="kf"><bean:message key="GLOBAL.BackupJob.MovedFiles"/></td> 
                        <td class="kv"><bean:message key="jsp.report.backupJobFull.jsp.Key.MovedFiles"/></td> 
                    </tr>
                    <tr> 
                        <td class="kf"><bean:message key="GLOBAL.BackupJob.CopiedFiles"/></td> 
                        <td class="kv"><bean:message key="jsp.report.backupJobFull.jsp.Key.CopiedFiles"/></td> 
                    </tr>					
                    <tr> 
                        <td class="kf" bgcolor="#FFFFEE"><bean:message key="GLOBAL.BackupJob.[C]"/></td> 
                        <td class="kv" bgcolor="#FFFFEE"><bean:message key="jsp.report.backupJobFull.jsp.Key.CheckSumFile"/></td> 
                    </tr>
                    <tr> 
                        <td class="kf"><bean:message key="GLOBAL.BackupJob.[D]"/></td> 
                        <td class="kv"><bean:message key="jsp.report.backupJobFull.jsp.Key.DeltaFile"/></td> 
                    </tr> 
                    <tr> 
                        <td class="kf" bgcolor="#FFFFEE"><bean:message key="GLOBAL.BackupJob.[I]"/></td> 
                        <td class="kv" bgcolor="#FFFFEE"><bean:message key="GLOBAL.BackupJob.[I].Dsc"/></td> 
                    </tr> 
                    <tr> 
                        <td class="kf"><bean:message key="GLOBAL.BackupJob.[CD]"/></td> 
                        <td class="kv"><bean:message key="GLOBAL.BackupJob.[CD].Dsc"/></td> 
                    </tr> 
                </table> 
            </td> 
        </tr> 
    </table>  
</body> 
</html>