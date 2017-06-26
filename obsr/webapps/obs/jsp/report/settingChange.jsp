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

<bean:define id="getSettingChangeReportForm" name="getSettingChangeReportForm" type="com.ahsay.obs.www.report.bean.GetSettingChangeReportForm" />

<% String sHomepage = getSettingChangeReportForm.getHomepage(); %>
 
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=<%= sCharSet %>">
    <meta http-equiv="Content-Language" content="<%= sLocale %>">
</head>

<body bgcolor="#FFFFFF">
    <table border="0" cellpadding="0" cellspacing="0" width="650">
        <tr>
            <td rowspan="2"><a href="<%= sHomepage %>"><img border="0" src="<bean:write name="getSettingChangeReportForm" property="embedLogoLink"/>" hspace="2" vspace="2"></a></td>
            <td valign="top" align="left"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 20px" color="#006699"><bean:message key="jsp.report.settingChange.jsp.Title" /></font></td>
        </tr>
        <tr>
            <td valign="bottom" align="right"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><bean:message key="jsp.report.settingChange.jsp.GeneratedAt" /> <%= new java.util.Date() %></font></td>
        </tr>
    </table>

    <table border="0" cellpadding="5" width="650" cellspacing="0">
        <tr>
            <td valign="top"><p><font color="#008000"><b><bean:message key="jsp.report.settingChange.jsp.PageHeader" /></b></font></p>
                <p><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><bean:message key="jsp.report.settingChange.jsp.Paragraph1" /></font></p>
                <p>&nbsp;</p>
            </td>
            <td valign="top">
                <table border="0" cellspacing="0" width="290">
                    <tr>
                        <td colspan="3" bgcolor="#666666"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><b>&nbsp;<bean:message key="jsp.report.settingChange.jsp.UserSetting" /></b></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><div style="width: 120; height: 1"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.LoginName" /></font></div></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getSettingChangeReportForm" property="userInfo.loginName"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Alias" /></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getSettingChangeReportForm" property="userInfo.alias"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Language" /></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
							<bean:message key="<%=Resource.getLanguagePropertyName(getSettingChangeReportForm.getUserInfo().getLanguage()) %>"/>						
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Contact" /></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                            <nested:iterate id="contact" name="getSettingChangeReportForm" property="userInfo.contacts">
                                <bean:write name="contact" /><br>
                            </nested:iterate>
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.BackupQuota" /></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getSettingChangeReportForm" property="userInfo.quota"/></font></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
 
    <nested:iterate id="backupSetList" property="backupSetList" name="getSettingChangeReportForm" type="com.ahsay.obs.www.report.bean.GetSettingChangeReportForm$BackupSetBean">
    <table border="0" cellspacing="0" width="650">
		<nested:equal name="getSettingChangeReportForm" property="userInfo.isOBM" value="true">
		<tr>
            <td colspan="3" bgcolor="#666666"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><b>&nbsp;<bean:message key="GLOBAL.BackupSet" /> - <nested:write property="backupSetName"/></b></font></td>
        </tr> 
		</nested:equal>
		<nested:equal name="getSettingChangeReportForm" property="userInfo.isACB" value="true">
		<tr>
            <td colspan="3" bgcolor="#666666"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#FFFFFF"><b>&nbsp;<bean:message key="GLOBAL.BackupSet" /></b></font></td>
        </tr> 
		</nested:equal>
		<tr>
            <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="jsp.report.settingChange.jsp.BackupSet.Sources" /></font></td>
            <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
            <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                <% boolean bSrcPresent=false; %>
                <nested:iterate id="src" property="selectedSrcs" type="com.ahsay.obs.www.report.bean.GetSettingChangeReportForm$BackupSetBean$SourceBean">
                    <% bSrcPresent=true; %>
                    <nested:write property="src" /><br>
                </nested:iterate></font>
                <% boolean bPresent = false; %>
                <nested:iterate id="src" property="deselectedSrcs" type="com.ahsay.obs.www.report.bean.GetSettingChangeReportForm$BackupSetBean$SourceBean">
                    <% if(!bPresent)  { %>
                        <font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><u><bean:message key="jsp.report.settingChange.jsp.BackupSet.Sources.Exclude" /></u></font><br>
                        <% bPresent=true; %>
                    <% } %>                        
                    <font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write property="src" /></font><br>
                </nested:iterate>
                <% if(!bSrcPresent) { %>
                    <font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                    <bean:message key="jsp.report.settingChange.jsp.BackupSet.Sources.None" />
                    </font>
                <% } %>
            </td>
        </tr> 
        <tr>
            <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="jsp.report.settingChange.jsp.BackupSet.Schedules" /></font></td>
            <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
            <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                <% boolean bSchedulePresent=false; %>
                <nested:iterate id="sch" property="daySchedules" type="com.ahsay.obs.www.report.bean.GetSettingChangeReportForm$BackupSetBean$DayScheduleBean">
                    <%
                        bSchedulePresent=true;
                        String sTime = "";
                        if(sch.getHour()<10) sTime += "0";
                        sTime += Integer.toString(sch.getHour());
                        sTime += ":";
                        if(sch.getMinute()<10) sTime += "0";
                        sTime += Integer.toString(sch.getMinute());
						String sInterval = "";
						if (sch.getBackupInterval() >= 60) {
							sInterval += Integer.toString(sch.getBackupInterval() / 60);
							if (sch.getBackupInterval() / 60 > 1) sInterval += " " + Resource.getMessage(request, "GLOBAL.DateTime.Hours");
							else sInterval += " " + Resource.getMessage(request, "GLOBAL.DateTime.Hour");
							} else {
								sInterval += Integer.toString(sch.getBackupInterval());
								if (sch.getBackupInterval() > 1) sInterval += " " + Resource.getMessage(request, "GLOBAL.DateTime.Minutes");
								else sInterval += " " + Resource.getMessage(request, "GLOBAL.DateTime.Minute");
 }						
                    %>
					<nested:notEqual property="atExactTime" value="true">
						<bean:message key="jsp.report.settingChange.jsp.BackupSet.Schedules.Daily.BackupInterval.Full" arg0='<%= sInterval %>'/>
					</nested:notEqual>
					<nested:equal property="atExactTime" value="true">
						<nested:equal property="duration" value="-1">
							<bean:message key="jsp.report.settingChange.jsp.BackupSet.Schedules.Daily.Full" arg0='<%= sTime %>'/>
						</nested:equal>
						<nested:notEqual property="duration" value="-1">	
							<bean:message key="jsp.report.settingChange.jsp.BackupSet.Schedules.Daily.TimeLimited" arg0='<%= sTime %>' arg1='<%=Integer.toString(sch.getDuration()) %>'/>	
						</nested:notEqual>
					</nested:equal>
                    <br>
                </nested:iterate>

                <nested:iterate id="weeksch" property="weekSchedules" type="com.ahsay.obs.www.report.bean.GetSettingChangeReportForm$BackupSetBean$WeekScheduleBean">
                    <%
                        bSchedulePresent=true;
                        String sWeekDays="";
                        if(weeksch.isSun()) sWeekDays+=Resource.getMessage(request, "GLOBAL.DateTime.Sun");
                        if(weeksch.isMon()) sWeekDays+=" "+Resource.getMessage(request, "GLOBAL.DateTime.Mon");
                        if(weeksch.isTue()) sWeekDays+=" "+Resource.getMessage(request, "GLOBAL.DateTime.Tue");
                        if(weeksch.isWed()) sWeekDays+=" "+Resource.getMessage(request, "GLOBAL.DateTime.Wed");
                        if(weeksch.isThu()) sWeekDays+=" "+Resource.getMessage(request, "GLOBAL.DateTime.Thu");
                        if(weeksch.isFri()) sWeekDays+=" "+Resource.getMessage(request, "GLOBAL.DateTime.Fri");
                        if(weeksch.isSat()) sWeekDays+=" "+Resource.getMessage(request, "GLOBAL.DateTime.Sat");

                        String sTime = "";
                        if(weeksch.getHour()<10) sTime += "0";
                        sTime += Integer.toString(weeksch.getHour());
                        sTime += ":";
                        if(weeksch.getMinute()<10) sTime += "0";
                        sTime += Integer.toString(weeksch.getMinute());
						String sInterval = "";
						if (weeksch.getBackupInterval() >= 60) {
							sInterval += Integer.toString(weeksch.getBackupInterval() / 60);
							if (weeksch.getBackupInterval() / 60 > 1) sInterval += " " + Resource.getMessage(request, "GLOBAL.DateTime.Hours");
							else sInterval += " " + Resource.getMessage(request, "GLOBAL.DateTime.Hour");
						} else {
							sInterval += Integer.toString(weeksch.getBackupInterval());
							if (weeksch.getBackupInterval() > 1) sInterval += " " + Resource.getMessage(request, "GLOBAL.DateTime.Minutes");
							else sInterval += " " + Resource.getMessage(request, "GLOBAL.DateTime.Minute");
						} 						
                    %>
					<nested:notEqual property="atExactTime" value="true">
						<bean:message key="jsp.report.settingChange.jsp.BackupSet.Schedules.Weekly.BackupInterval.Full" arg0='<%= sWeekDays %>' arg1='<%= sInterval %>'/>
					</nested:notEqual>
					<nested:equal property="atExactTime" value="true">
						<nested:equal property="duration" value="-1">
							<bean:message key="jsp.report.settingChange.jsp.BackupSet.Schedules.Weekly.Full" arg0='<%= sWeekDays %>' arg1='<%= sTime %>'/>
						</nested:equal>
						<nested:notEqual property="duration" value="-1">	
							<bean:message key="jsp.report.settingChange.jsp.BackupSet.Schedules.Weekly.TimeLimited" arg0='<%= sWeekDays %>' 	arg1='<%= sTime %>' arg2='<%= Integer.toString(weeksch.getDuration()) %>'/>
						</nested:notEqual>
					</nested:equal>
                    <br>
                </nested:iterate>

                <nested:iterate id="monthsch" property="monthSchedules" type="com.ahsay.obs.www.report.bean.GetSettingChangeReportForm$BackupSetBean$MonthScheduleBean">
                    <%
                        bSchedulePresent=true;
                        String sTime = "";
                        if(monthsch.getHour()<10) sTime += "0";
                        sTime += Integer.toString(monthsch.getHour());
                        sTime += ":";
                        if(monthsch.getMinute()<10) sTime += "0";
                        sTime += Integer.toString(monthsch.getMinute());
                    %>
                    <nested:equal property="occurrence" value="">
                        <nested:equal property="duration" value="-1">
                            <bean:message key="jsp.report.settingChange.jsp.BackupSet.Schedules.Monthly.Day.Full" arg0='<%= Integer.toString(monthsch.getDate()) %>' arg1='<%= sTime %>' />
                        </nested:equal>
                        <nested:notEqual property="duration" value="-1">
                            <bean:message key="jsp.report.settingChange.jsp.BackupSet.Schedules.Monthly.Day.TimeLimited" arg0='<%= Integer.toString(monthsch.getDate()) %>' arg1='<%= sTime %>' arg2='<%= Integer.toString(monthsch.getDuration()) %>' />
                        </nested:notEqual>
                    </nested:equal>
                    <nested:notEqual property="occurrence" value="">
                        <%
                            String sOccurrence="";
                            if(getSettingChangeReportForm.isFirst(monthsch.getOccurrence())) sOccurrence=Resource.getMessage(request, "GLOBAL.DateTime.First");
                            else if(getSettingChangeReportForm.isSecond(monthsch.getOccurrence())) sOccurrence=Resource.getMessage(request, "GLOBAL.DateTime.Second");
                            else if(getSettingChangeReportForm.isThird(monthsch.getOccurrence())) sOccurrence=Resource.getMessage(request, "GLOBAL.DateTime.Third");
                            else if(getSettingChangeReportForm.isFourth(monthsch.getOccurrence())) sOccurrence=Resource.getMessage(request, "GLOBAL.DateTime.Fourth");
                            else if(getSettingChangeReportForm.isLast(monthsch.getOccurrence())) sOccurrence=Resource.getMessage(request, "GLOBAL.DateTime.Last");
                            String sCriteria="";
                            if(getSettingChangeReportForm.isDay(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Day");
                            else if(getSettingChangeReportForm.isWeekday(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Weekday");
                            else if(getSettingChangeReportForm.isWeekend(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Weekend");
                            else if(getSettingChangeReportForm.isSunday(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Sunday");
                            else if(getSettingChangeReportForm.isMonday(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Monday");
                            else if(getSettingChangeReportForm.isTuesday(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Tuesday");
                            else if(getSettingChangeReportForm.isWednesday(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Wednesday");
                            else if(getSettingChangeReportForm.isThursday(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Thursday");
                            else if(getSettingChangeReportForm.isFriday(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Friday");
                            else if(getSettingChangeReportForm.isSaturday(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Saturday");
                        %>
                        <nested:equal property="duration" value="-1">
                            <bean:message key="jsp.report.settingChange.jsp.BackupSet.Schedules.Monthly.Criteria.Full" arg0='<%= sOccurrence %>' arg1='<%= sCriteria %>' arg2='<%= sTime %>' />
                        </nested:equal>
                        <nested:notEqual property="duration" value="-1">
                            <bean:message key="jsp.report.settingChange.jsp.BackupSet.Schedules.Monthly.Criteria.TimeLimited" arg0='<%= sOccurrence %>' arg1='<%= sCriteria %>'  arg2='<%= sTime %>' arg3='<%= Integer.toString(monthsch.getDuration()) %>' />
                        </nested:notEqual>
                    </nested:notEqual>
                    <br>
                </nested:iterate>
                
                <nested:iterate id="customsch" property="customSchedules" type="com.ahsay.obs.www.report.bean.GetSettingChangeReportForm$BackupSetBean$CustomScheduleBean">
                    <%
                        bSchedulePresent=true;
                        String sTime = "";
                        if(customsch.getHour()<10) sTime += "0";
                        sTime += Integer.toString(customsch.getHour());
                        sTime += ":";
                        if(customsch.getMinute()<10) sTime += "0";
                        sTime += Integer.toString(customsch.getMinute());
                    %>
                    <nested:equal property="duration" value="-1">
                        <bean:message key="jsp.report.settingChange.jsp.BackupSet.Schedules.Custom.Full" arg0='<%= customsch.getDate() %>' arg1='<%= sTime %>' />
                    </nested:equal>
                    <nested:notEqual property="duration" value="-1">
                        <bean:message key="jsp.report.settingChange.jsp.BackupSet.Schedules.Custom.TimeLimited" arg0='<%= customsch.getDate() %>' arg1='<%= sTime %>' arg2='<%= Integer.toString(customsch.getDuration()) %>' />
                    </nested:notEqual>
                    <br>
                </nested:iterate>
                <% if(!bSchedulePresent) { %>
                    <bean:message key="jsp.report.settingChange.jsp.BackupSet.Schedules.None" />
                <% } %>
                </font>
            </td>
        </tr>
        <tr>
            <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.BackupSet.Filter" /></font></td>
            <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
            <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                <%	boolean bFilterPresent=false;	%>
                <nested:iterate id="filter" property="filters" type="com.ahsay.obs.www.report.bean.GetSettingChangeReportForm$BackupSetBean$FilterBean">
                    <%
                        bFilterPresent=true;
                        String sPattern = "";
                    %>
                    <nested:iterate id="pattern" property="patterns">
                        <nested:present name="pattern">
                            <% sPattern += " " + pattern.toString(); %>
                        </nested:present>
                    </nested:iterate>
                    
                    <nested:equal property="include" value="true">
                        <nested:equal property="apply2File" value="true">
                            <nested:equal property="type" value="START_WITH">
                                <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.Include.File.StartsWith" arg0='<%= filter.getTopDir() %>' arg1='<%= sPattern %>' />
                            </nested:equal>
                            <nested:equal property="type" value="END_WITH">
                                <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.Include.File.EndsWith" arg0='<%= filter.getTopDir() %>' arg1='<%= sPattern %>' />
                            </nested:equal>
                            <nested:equal property="type" value="CONTAIN">
                                <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.Include.File.Contains" arg0='<%= filter.getTopDir() %>' arg1='<%= sPattern %>' />
                            </nested:equal>
                            <nested:equal property="type" value="CUSTOM">
                                <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.Include.File.RegExp" arg0='<%= filter.getTopDir() %>' arg1='<%= sPattern %>' />
                            </nested:equal>
                        </nested:equal>
                        
                        <nested:notEqual property="apply2File" value="true">
                        <nested:equal property="apply2Dir" value="true">
                            <nested:equal property="type" value="START_WITH">
                                <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.Include.Directory.StartsWith" arg0='<%= filter.getTopDir() %>' arg1='<%= sPattern %>' />
                            </nested:equal>
                            <nested:equal property="type" value="END_WITH">
                                <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.Include.Directory.EndsWith" arg0='<%= filter.getTopDir() %>' arg1='<%= sPattern %>' />
                            </nested:equal>
                            <nested:equal property="type" value="CONTAIN">
                                <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.Include.Directory.Contains" arg0='<%= filter.getTopDir() %>' arg1='<%= sPattern %>' />
                            </nested:equal>
                            <nested:equal property="type" value="CUSTOM">
                                <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.Include.Directory.RegExp" arg0='<%= filter.getTopDir() %>' arg1='<%= sPattern %>' />
                            </nested:equal>
                        </nested:equal>
                        </nested:notEqual>
                        
                        <nested:equal property="only" value="true">
                            <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.ExcludeOthers" />
                        </nested:equal>
                    </nested:equal>
                    
                    <nested:equal property="include" value="false">
                        <nested:equal property="apply2File" value="true">
                            <nested:equal property="type" value="START_WITH">
                                <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.Exclude.File.StartsWith" arg0='<%= filter.getTopDir() %>' arg1='<%= sPattern %>' />
                            </nested:equal>
                            <nested:equal property="type" value="END_WITH">
                                <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.Exclude.File.EndsWith" arg0='<%= filter.getTopDir() %>' arg1='<%= sPattern %>' />
                            </nested:equal>
                            <nested:equal property="type" value="CONTAIN">
                                <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.Exclude.File.Contains" arg0='<%= filter.getTopDir() %>' arg1='<%= sPattern %>' />
                            </nested:equal>
                            <nested:equal property="type" value="CUSTOM">
                                <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.Exclude.File.RegExp" arg0='<%= filter.getTopDir() %>' arg1='<%= sPattern %>' />
                            </nested:equal>
                        </nested:equal>
                        
                        <nested:notEqual property="apply2File" value="true">
                        <nested:equal property="apply2Dir" value="true">
                            <nested:equal property="type" value="START_WITH">
                                <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.Exclude.Directory.StartsWith" arg0='<%= filter.getTopDir() %>' arg1='<%= sPattern %>' />
                            </nested:equal>
                            <nested:equal property="type" value="END_WITH">
                                <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.Exclude.Directory.EndsWith" arg0='<%= filter.getTopDir() %>' arg1='<%= sPattern %>' />
                            </nested:equal>
                            <nested:equal property="type" value="CONTAIN">
                                <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.Exclude.Directory.Contains" arg0='<%= filter.getTopDir() %>' arg1='<%= sPattern %>' />
                            </nested:equal>
                            <nested:equal property="type" value="CUSTOM">
                                <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.Exclude.Directory.RegExp" arg0='<%= filter.getTopDir() %>' arg1='<%= sPattern %>' />
                            </nested:equal>
                        </nested:equal>
                        </nested:notEqual>
                        
                        <nested:equal property="only" value="true">
                            <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.IncludeOthers" />
                        </nested:equal>
                    </nested:equal>
                </nested:iterate> 
                <% if(!bFilterPresent) { %>
                    <bean:message key="jsp.report.settingChange.jsp.BackupSet.Filters.None" />
                <%	} %>
                </font>
            </td>
        </tr>
        <tr>
            <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.BackupSet.RetentionPolicy" /></font></td>
            <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
            <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                <nested:nest property="retention">
                <nested:define property="period" id="retentionPeriod"/>
                    <nested:equal property="unit" value="DAYS">
                        <bean:message key="jsp.report.settingChange.jsp.BackupSet.RetentionPolicy.days" arg0='<%= retentionPeriod.toString() %>' />
                    </nested:equal>
                    <nested:equal property="unit" value="JOBS">
                        <bean:message key="jsp.report.settingChange.jsp.BackupSet.RetentionPolicy.jobs" arg0='<%= retentionPeriod.toString() %>' />
                    </nested:equal>
                </nested:nest>
                </font>
            </td>
        </tr>
        <tr>
            <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.BackupSet.TransferBlockSize" /></font></td>
            <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
            <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                <nested:write property="transferSize"/> <bean:message key="GLOBAL.Label.Bytes" /></font>
            </td>
        </tr>
        <tr>
            <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="jsp.report.settingChange.jsp.BackupSet.PreCommands" /></font></td>
            <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
            <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                <% boolean bPreCmdPresent=false; %>
                <nested:iterate property="preCmds" id="preCmd" type="com.ahsay.obs.www.report.bean.GetSettingChangeReportForm$BackupSetBean$CommandBean">
                    <% bPreCmdPresent=true;	%>
                    <bean:message key="jsp.report.settingChange.jsp.BackupSet.Commands.Run" arg0='<%= preCmd.getPath() %>' arg1='<%= preCmd.getWorkingDir() %>' />
                    <br>
                </nested:iterate>
                <% if(!bPreCmdPresent) { %>
                    <bean:message key="jsp.report.settingChange.jsp.BackupSet.Commands.None" />
                <% } %>
                </font>
            </td>
        </tr> 
        <tr>
            <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="jsp.report.settingChange.jsp.BackupSet.PostCommands" /></font></td>
            <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
            <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                <% boolean bPostCmdPresent=false; %>
                <nested:iterate property="postCmds" id="postCmd" type="com.ahsay.obs.www.report.bean.GetSettingChangeReportForm$BackupSetBean$CommandBean">
                    <% bPostCmdPresent=true; %>
                    <bean:message key="jsp.report.settingChange.jsp.BackupSet.Commands.Run" arg0='<%= postCmd.getPath() %>' arg1='<%= postCmd.getWorkingDir() %>' />
                    <br>
                </nested:iterate>
                <% if(!bPostCmdPresent) { %>
                    <bean:message key="jsp.report.settingChange.jsp.BackupSet.Commands.None" />
                <%	} %>
                </font>
            </td>
        </tr>
        <tr>
            <td valign="top"><div style="width: 115; height: 19"></div></td>
            <td valign="top"></td>
            <td><div style="width: 492; height: 19"></div></td>
        </tr>
    </table>
    </nested:iterate>
</body>
</html>
