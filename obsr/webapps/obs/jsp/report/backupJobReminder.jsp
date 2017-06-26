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

<bean:define id="getBackupJobReminderReportForm" name="getBackupJobReminderReportForm"
type="com.ahsay.obs.www.report.bean.GetBackupJobReminderReportForm"/>

<% String sHomepage = getBackupJobReminderReportForm.getHomepage(); %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=<%= sCharSet %>">
    <meta http-equiv="Content-Language" content="<%= sLocale %>">
</head>

<body bgcolor="#FFFFFF">
    <table border="0" cellpadding="0" cellspacing="0" width="650">
        <tr>
            <td rowspan="2"><a href="<%= sHomepage %>"><img border="0" src="<bean:write name="getBackupJobReminderReportForm" property="embedLogoLink"/>" hspace="2" vspace="2"></a></td>
            <td valign="top" align="left"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 20px" color="#006699"><bean:message key="jsp.report.backupJobReminder.jsp.Title"/></font></td>
        </tr>
        <tr>
            <td valign="bottom" align="right"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><bean:message key="jsp.report.backupJobReminder.jsp.GeneratedAt"/> <%= new java.util.Date() %></font></td>
        </tr>
    </table>

    <table border="0" cellpadding="5" width="650" cellspacing="0">
        <tr>
            <td valign="top">
                <p style="font-family: Arial; font-size: 12px"><b><u><bean:message key="jsp.report.backupJobReminder.jsp.MissedScheduledTitle"/><bean:message key="GLOBAL.Label.Colon"/></u></b></p>
				<table>
					<nested:equal name="getBackupJobReminderReportForm" property="userInfo.isOBM" value="true">
					<tr>
						<td>
							<p style="font-family: Arial; color: red; font-weight: bold; font-style: normal; font-size: 12px"><bean:message key="GLOBAL.BackupSet"/><bean:message key="GLOBAL.Label.Colon"/></p>
						</td>
						<td>
							<font style="font-family: Arial; font-size: 12px">
								<nested:write name="getBackupJobReminderReportForm" property="backupSet.backupSetName"/>
							</font>
						</td>
					</tr>
					</nested:equal>
					<tr>
						<td valign="top">
							<p style="font-family: Arial; color: red; font-weight: bold; font-size: 12px"><bean:message key="jsp.report.backupJobReminder.jsp.ScheduledTime"/><bean:message key="GLOBAL.Label.Colon"/></p>				
						<td>
							<logic:equal name="getBackupJobReminderReportForm" property="isPeriodic" value="false">
								<font style="font-family: Arial; font-size: 12px">
									<nested:write name="getBackupJobReminderReportForm" property="scheduledTime"/>
								</font>
							</logic:equal>
							<logic:equal name="getBackupJobReminderReportForm" property="isPeriodic" value="true">
								<nested:iterate name="getBackupJobReminderReportForm" id="missedPeriodicJobs" property="missedPeriodicJobs"> 
									<font style="font-family: Arial; font-size: 12px">
										<nested:write/> <br>
									</font>
								</nested:iterate>		
							</logic:equal>
						</td>
					</tr>
					<tr>
						<td valign="top">
							<p style="font-family: Arial; color: red; font-weight: bold; font-size: 12px"><bean:message key="GLOBAL.BackupSet.ScheduleHost"/><bean:message key="GLOBAL.Label.Colon"/></p>				
						<td>
							<font style="font-family: Arial; font-size: 12px">
								<nested:write name="getBackupJobReminderReportForm" property="missedHost"/>
							</font>
						</td>
					</tr>
				</table>
                <table border="0" width="300">
                    <tr>
                        <td colspan="2"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b><bean:message key="jsp.report.backupJobReminder.jsp.FAQs"/></b></font></td>
                    </tr>
                    <tr>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#008000"><b><bean:message key="GLOBAL.Label.1"/>.</b></font></td>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><font color="#008000">
                            <b><bean:message key="jsp.report.backupJobReminder.jsp.FAQs.Q1"/></b></font><br>
                            <bean:message key="jsp.report.backupJobReminder.jsp.FAQs.A1"/>
                            <br></font>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#008000"><b><bean:message key="GLOBAL.Label.2"/>.</b></font></td>
                        <td valign="top"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><font color="#008000">
                            <b><bean:message key="jsp.report.backupJobReminder.jsp.FAQs.Q2"/></b></font><br>
                            <bean:message key="jsp.report.backupJobReminder.jsp.FAQs.A2"/>
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
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getBackupJobReminderReportForm" property="userInfo.loginName"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Alias"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write name="getBackupJobReminderReportForm" property="userInfo.alias"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Language"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
							<bean:message key="<%=Resource.getLanguagePropertyName(getBackupJobReminderReportForm.getUserInfo().getLanguage()) %>"/>
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.Contact"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                            <nested:iterate id="contact" name="getBackupJobReminderReportForm" property="userInfo.contacts">
                                <bean:write name="contact" /><br>
                            </nested:iterate>
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><div style="width: 119; height: 15"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.BackupSet.ScheduleHost"/></font></div></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                            <nested:write name="getBackupJobReminderReportForm" property="userInfo.scheduledHost"/>
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
                            <nested:iterate id="src" name="getBackupJobReminderReportForm" property="backupSet.selectedSrcs" type="com.ahsay.obs.www.report.bean.GetBackupJobReminderReportForm$BackupSetBean$SourceBean">
                                <% bSrcPresent=true; %>
                                <nested:write property="src" /><br>
                            </nested:iterate></font>
                            <% boolean bPresent = false; %>
                            <nested:iterate id="src" name="getBackupJobReminderReportForm" property="backupSet.deselectedSrcs" type="com.ahsay.obs.www.report.bean.GetBackupJobReminderReportForm$BackupSetBean$SourceBean">
                                <% if(!bPresent)  { %>
                                    <font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><u><bean:message key="jsp.report.backupJobReminder.jsp.BackupSource.Exclude"/></u></font><br>
                                    <% 	bPresent=true; %>                                    
                                <% } %>                                    
                                <font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699"><nested:write property="src" /></font><br>
                            </nested:iterate>  
                            <%	if(!bSrcPresent) { %>
                                <font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                                <bean:message key="jsp.report.backupJobReminder.jsp.BackupSource.None"/>
                                </font> 
                            <% } %> 
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><div style="width: 119; height: 15"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.BackupSet.Schedule"/></font></div></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">
                            <%	boolean bSchedulePresent=false;	%>
                            <nested:iterate id="sch" name="getBackupJobReminderReportForm" property="backupSet.daySchedules" type="com.ahsay.obs.www.report.bean.GetBackupJobReminderReportForm$BackupSetBean$DayScheduleBean">
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
										else sInterval += Resource.getMessage(request, "GLOBAL.DateTime.Hour");
									} else {
										sInterval += Integer.toString(sch.getBackupInterval());
										if (sch.getBackupInterval() > 1) sInterval += " " + Resource.getMessage(request, "GLOBAL.DateTime.Minutes");
										else sInterval += Resource.getMessage(request, "GLOBAL.DateTime.Minute");
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
										<bean:message key="jsp.report.settingChange.jsp.BackupSet.Schedules.Daily.TimeLimited" arg0='<%= sTime %>' arg1='<%= Integer.toString(sch.getDuration()) %>'/>	
									</nested:notEqual>
								</nested:equal>
                                <br>
                            </nested:iterate>
                            
                            <nested:iterate id="weeksch" name="getBackupJobReminderReportForm" property="backupSet.weekSchedules" type="com.ahsay.obs.www.report.bean.GetBackupJobReminderReportForm$BackupSetBean$WeekScheduleBean">
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
										<bean:message key="jsp.report.settingChange.jsp.BackupSet.Schedules.Weekly.TimeLimited" arg0='<%= sWeekDays %>' arg1='<%= sTime %>' arg2='<%= Integer.toString(weeksch.getDuration()) %>'/>
									</nested:notEqual>
								</nested:equal>
                                <br>
                            </nested:iterate>

                            <nested:iterate id="monthsch" name="getBackupJobReminderReportForm" property="backupSet.monthSchedules" type="com.ahsay.obs.www.report.bean.GetBackupJobReminderReportForm$BackupSetBean$MonthScheduleBean">
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
                                        <bean:message key="jsp.report.backupJobReminder.jsp.BackupSet.Schedules.Monthly.Day.Full" arg0='<%= Integer.toString(monthsch.getDate()) %>' arg1='<%= sTime %>' />
                                    </nested:equal>
                                    <nested:notEqual property="duration" value="-1">
                                        <bean:message key="jsp.report.backupJobReminder.jsp.BackupSet.Schedules.Monthly.Day.TimeLimited" arg0='<%= Integer.toString(monthsch.getDate()) %>' arg1='<%= sTime %>' arg2='<%= Integer.toString(monthsch.getDuration()) %>' />
                                    </nested:notEqual>
                                </nested:equal>
                                <nested:notEqual property="occurrence" value="">
                                    <%
                                        String sOccurrence="";
                                        if(getBackupJobReminderReportForm.isFirst(monthsch.getOccurrence())) sOccurrence=Resource.getMessage(request, "GLOBAL.DateTime.First");
                                        else if(getBackupJobReminderReportForm.isSecond(monthsch.getOccurrence())) sOccurrence=Resource.getMessage(request, "GLOBAL.DateTime.Second");
                                        else if(getBackupJobReminderReportForm.isThird(monthsch.getOccurrence())) sOccurrence=Resource.getMessage(request, "GLOBAL.DateTime.Third");
                                        else if(getBackupJobReminderReportForm.isFourth(monthsch.getOccurrence())) sOccurrence=Resource.getMessage(request, "GLOBAL.DateTime.Fourth");
                                        else if(getBackupJobReminderReportForm.isLast(monthsch.getOccurrence())) sOccurrence=Resource.getMessage(request, "GLOBAL.DateTime.Last");
                                        String sCriteria="";
                                        if(getBackupJobReminderReportForm.isDay(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Day");
                                        else if(getBackupJobReminderReportForm.isWeekday(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Weekday");
                                        else if(getBackupJobReminderReportForm.isWeekend(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Weekend");
                                        else if(getBackupJobReminderReportForm.isSunday(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Sunday");
                                        else if(getBackupJobReminderReportForm.isMonday(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Monday");
                                        else if(getBackupJobReminderReportForm.isTuesday(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Tuesday");
                                        else if(getBackupJobReminderReportForm.isWednesday(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Wednesday");
                                        else if(getBackupJobReminderReportForm.isThursday(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Thursday");
                                        else if(getBackupJobReminderReportForm.isFriday(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Friday");
                                        else if(getBackupJobReminderReportForm.isSaturday(monthsch.getCriteria())) sCriteria=Resource.getMessage(request, "GLOBAL.DateTime.Saturday");
                                    %>    
                                    <nested:equal property="duration" value="-1">
                                        <bean:message key="jsp.report.backupJobReminder.jsp.BackupSet.Schedules.Monthly.Criteria.Full" arg0='<%= sOccurrence %>' arg1='<%= sCriteria %>' arg2='<%= sTime %>' />
                                    </nested:equal>
                                    <nested:notEqual property="duration" value="-1">
                                        <bean:message key="jsp.report.backupJobReminder.jsp.BackupSet.Schedules.Monthly.Criteria.TimeLimited" arg0='<%= sOccurrence %>' arg1='<%= sCriteria %>'  arg2='<%= sTime %>' arg3='<%= Integer.toString(monthsch.getDuration()) %>' />
                                    </nested:notEqual>
                                </nested:notEqual>
                                <br>
                            </nested:iterate>

                            <nested:iterate id="customsch" name="getBackupJobReminderReportForm" property="backupSet.customSchedules" type="com.ahsay.obs.www.report.bean.GetBackupJobReminderReportForm$BackupSetBean$CustomScheduleBean">
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
                                    <bean:message key="jsp.report.backupJobReminder.jsp.BackupSet.Schedules.Custom.Full" arg0='<%= customsch.getDate() %>' arg1='<%= sTime %>' />
                                </nested:equal>
                                <nested:notEqual property="duration" value="-1">
                                    <bean:message key="jsp.report.backupJobReminder.jsp.BackupSet.Schedules.Custom.TimeLimited" arg0='<%= customsch.getDate() %>' arg1='<%= sTime %>' arg2='<%= Integer.toString(customsch.getDuration()) %>' />
                                </nested:notEqual>
                                <br>
                            </nested:iterate>
                            
                            <%	if(!bSchedulePresent) { %>
                                <bean:message key="jsp.report.backupJobReminder.jsp.BackupSet.Schedules.None" />
                            <%	} %>
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
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">&nbsp;<nested:write name="getBackupJobReminderReportForm" property="userInfo.dataFileNo"/> [ <nested:write name="getBackupJobReminderReportForm" property="userInfo.dataSize"/> ] </font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.RetentionArea"/>*</font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">&nbsp;<nested:write name="getBackupJobReminderReportForm" property="userInfo.retainFileNo"/> [ <nested:write name="getBackupJobReminderReportForm" property="userInfo.retainSize"/> ] </font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.BackupQuota"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">&nbsp;<nested:write name="getBackupJobReminderReportForm" property="userInfo.quota"/></font></td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px">&nbsp;<bean:message key="GLOBAL.UserProfile.RemainingQuota"/></font></td>
                        <td valign="top" bgcolor="#FFFFEE"><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px"><b>:</b></font></td>
                        <td><font style="font-family: Arial; font-weight: normal; font-style: normal; font-size: 12px" color="#006699">&nbsp;<nested:write name="getBackupJobReminderReportForm" property="userInfo.remainQuota"/></font></td>
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
