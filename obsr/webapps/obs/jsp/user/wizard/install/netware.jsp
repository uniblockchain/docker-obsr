<%@ page language="java" %>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="/WEB-INF/tlds/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tlds/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tlds/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tlds/struts-nested.tld" prefix="nested" %>
<%@ page import="com.ahsay.obs.www.Resource" %>
<%
    String sOS = request.getParameter("os");
    if(sOS==null || "".equals(sOS)) sOS = "windows.jsp";
    String sLocale = request.getParameter("locale");
    if(sLocale!=null && !"".equals(sLocale)) {
        Resource.setLocale(request, response, sLocale); 	
    }
%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Content-Language" content="<%= Resource.getLocaleName(request) %>">
<link rel="stylesheet" type="text/css" href="/obs/www/getCSS.do">
<script language="JavaScript" src="/obs/jsp/lib/common.js"></script></head>
    
<body class="installguidebody" onLoad="self.focus()" topmargin="5" leftmargin="5">
    <table cellPadding="0" width="100%" border="0" id="table4">
        <tr>
            <td class="installguide_title" style="font-size: 16px; padding-bottom: 5mm">
                <bean:message key="jsp.install.guide.InstallationGuide"/>
                - <bean:message key="jsp.install.guide.AhsayOBM"/>
                - <bean:message key="jsp.install.guide.NetWare"/>
            </td>
            <td valign="top" align="right" width="5%"><p align="center"><a href="javascript: window.print()">
                <bean:message key="jsp.install.guide.Print"/></a></p>
            </td>
        </tr>
    </table>
    
    <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <tr>
            <td>
                <table border="0" cellpadding="3" cellspacing="0">
                    <tr>
                        <td class="installguide_subtitle" style="padding-left: 2mm; padding-right: 2mm"><bean:message key="jsp.install.guide.SystemRequirement"/></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
<tr><td width="100%" class="installguide_subtitle"><img border="0" src="/obs/jsp/images/stub.gif" width="1" height="1"></td></tr>
    </table>
    
    <ul>
        <li><bean:message key="jsp.install.guide.OperatingSystem"/> : <bean:message key="jsp.install.guide.OperatingSystem.NetWare.Des"/></li>
        <li><bean:message key="jsp.install.guide.Mermory"/> : 128 <bean:message key="GLOBAL.Label.MBytes"/></li>
        <li><bean:message key="jsp.install.guide.DiskSpace"/> : 100 <bean:message key="GLOBAL.Label.MBytes"/></li>
        <li><bean:message key="jsp.install.guide.NetworkProtocol"/> : TCP/IP (Http/Https)</li>
        <li><bean:message key="jsp.install.guide.AdditionalRequirement"/>:
            <ul>    
                <li><bean:message key="jsp.install.guide.AdditionalRequirement.NetWare.Des"/></li>
				<li><bean:message key="jsp.install.guide.AdditionalRequirement.NetWare.Perl"/></li>				
            </ul>
        </li>
    </ul>
    
    <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <tr>
            <td>
                <table border="0" cellpadding="3" cellspacing="0">
                    <tr>
                        <td class="installguide_subtitle" style="padding-left: 2mm; padding-right: 2mm"><bean:message key="jsp.install.MainPage.Download"/></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td width="100%" class="installguide_subtitle"><img border="0" src="/obs/jsp/images/stub.gif" width="1" height="1"></td>
        </tr>
    </table>
    
    <ol>
        <p><b><bean:message key="jsp.install.MainPage.Download"/> <a href="/obs/download/obm-netware.zip"><bean:message key="GLOBAL.ProductName.AhsayOBM"/></a></b> - <bean:message key="jsp.install.guide.AhsayOBM.Netware.DownloadNote"/></p>
    </ol>
    
    <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <tr>
            <td>
                <table border="0" cellpadding="3" cellspacing="0">
                    <tr>
                        <td class="installguide_subtitle" style="padding-left: 2mm; padding-right: 2mm"><bean:message key="jsp.install.guide.GetStarted"/></td>
                    </tr>
                </table>
            </td>
        </tr>

<tr><td width="100%" class="installguide_subtitle"><img border="0" src="/obs/jsp/images/stub.gif" width="1" height="1"></td>
        </tr>
    </table>
    
    <ol>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Netware.Des1b"/></p></li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Netware.Des2" arg0='<%= Resource.getMessage(request, "jsp.install.guide.GetStarted.Netware.InstallDir") %>'/></p></li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Install.Des"/></p>    
            <p class="installguide_userinput"><bean:message key="jsp.install.guide.GetStarted.Netware.InstallDir"/>\aua\bin\install-aua.ncf</p>
        </li>        
        <li><p><bean:message key="jsp.install.guide.GetStarted.Start.AUA.Des"/></p>
            <p class="installguide_userinput"><bean:message key="jsp.install.guide.GetStarted.Netware.InstallDir"/>\aua\bin\startup.ncf</p>
        </li>        
        <li><p><bean:message key="jsp.install.guide.GetStarted.Netware.Des9"/></p>
            <p class="installguide_userinput"><bean:message key="jsp.install.guide.GetStarted.Netware.InstallDir"/>\bin\Scheduler.ncf</p>
            <p><bean:message key="jsp.install.guide.GetStarted.Netware.Des9i"/></p>
        </li>                   
        <li><p><bean:message key="jsp.install.guide.GetStarted.Netware.Des3" arg0='<%= Resource.getMessage(request, "jsp.install.guide.GetStarted.Netware.InstallDir") %>'/></p></li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Netware.Des3b"/></p></li>
		<li><p><bean:message key="jsp.install.guide.GetStarted.Netware.Des3c"/></p></li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Netware.Des4b"/></p>
            <ol type="i">
                <li><bean:message key="jsp.install.guide.GetStarted.Netware.Des4ib"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.Netware.Des4iib"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.Netware.Des4iii"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.Netware.Des4iv"/></li>
            </ol>
        </li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Netware.Des5b"/></p></li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Netware.Des6"/></p>
            <ol type="i">
                <li><bean:message key="jsp.install.guide.GetStarted.Netware.Des6ib"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.Netware.Des6iib"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.Netware.Des6iiib"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.Netware.Des6iv"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.Netware.Des6vb"/></li>
            </ol>
        </li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Netware.Des7b"/></p></li>
        <li><bean:message key="jsp.install.guide.GetStarted.Netware.Des10"/></li>
		<li><p><bean:message key="jsp.install.guide.GetStarted.Netware.Des11"/></p>
            <ol type="i">
                <li><bean:message key="jsp.install.guide.GetStarted.Netware.Des11i"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.Netware.Des11ii"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.Netware.Des11iii"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.Netware.Des11iv"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.Netware.Des11v"/></li>
            </ol>
        </li>
    </ol>

    <p align="right"><a href="javascript: window.print()"><bean:message key="jsp.install.guide.Print"/></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="javascript: window.top.close()"><bean:message key="jsp.install.guide.Close"/></a>&nbsp;</p>
    
</body>
</html>
