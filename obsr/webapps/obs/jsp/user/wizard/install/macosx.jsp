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
	// 5718: 2011-03-29 Kevin Wong changed to brandable page
	boolean isOEM = Resource.isOEM();
%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Content-Language" content="<%= Resource.getLocaleName(request) %>">
	<link rel="stylesheet" type="text/css" href="/obs/www/getCSS.do">
	<script language="JavaScript" src="/obs/jsp/lib/common.js"></script>
</head>

<body class="installguidebody" onLoad="self.focus()" topmargin="5" leftmargin="5"> 
    <table cellPadding="0" width="100%" border="0" id="table4">
        <tr>
            <td class="installguide_title" style="font-size: 16px; padding-bottom: 5mm">
                <bean:message key="jsp.install.guide.InstallationGuide"/>
                - <bean:message key="jsp.install.guide.AhsayOBM"/>  / <bean:message key="jsp.install.guide.AhsayACB"/>
                - <bean:message key="jsp.install.guide.MacOSX"/>
            </td>
            <td valign="top" align="right" width="1%"><a href="javascript: window.print()"><bean:message key="jsp.install.guide.Print"/></a></td>
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
            <td width="100%" class="installguide_subtitle"><img border="0" src="/obs/jsp/images/stub.gif" width="1" height="1"></td>
        </tr>
    </table>
    
    <ol>
        <p>
			<% if (isOEM) { %>
				<bean:message key="jsp.install.guide.ReferToSystemRequirement.v63"/>
			<% } else { %>
				<bean:message key="jsp.install.guide.ReferToAhsayHelpCentre.v67"/>
			<% } %>
		</p> 
    </ol>
    
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
        <p>
			<b><bean:message key="jsp.install.MainPage.Download"/> <a href="/obs/download/obm-mac.zip"><bean:message key="GLOBAL.ProductName.AhsayOBM"/></a></b> - 
			<% if (isOEM) { %>
				<bean:message key="jsp.install.guide.AhsayOBM.Mac.DownloadNote.OEM.v63"/>
			<% } else { %>
				<bean:message key="jsp.install.guide.AhsayOBM.Mac.DownloadNote.v67"/>
			<% } %>
		</p>
    </ol>
	
	<ol>
        <p><b><bean:message key="jsp.install.MainPage.Download"/> <a href="/obs/download/acb-mac.zip"><bean:message key="GLOBAL.ProductName.AhsayACB"/></a></b></p>
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
        <tr>
            <td width="100%" class="installguide_subtitle"><img border="0" src="/obs/jsp/images/stub.gif" width="1" height="1"></td>
        </tr>
    </table>
    
    <ol>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Mac.Des1b.v63"/></p></li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Mac.Des2b.v63"/></p></li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Mac.Des3.v63"/></p></li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Restart.Des.b.v63"/></p></li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Mac.Des4b.v63"/></p></li>
		<li><p><bean:message key="jsp.install.guide.GetStarted.Mac.Des4c.v63"/></p></li>
        <li>
            <p><bean:message key="jsp.install.guide.GetStarted.Mac.Des5b.v63"/></p>
            <ol type="i">
                <li><bean:message key="jsp.install.guide.GetStarted.Mac.Des5ib.v63"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.Mac.Des5iib.v63"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.Mac.Des5iii.v63"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.Mac.Des5iv.v63"/></li>
            </ol>
        </li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Mac.Des6b.v63"/></p></li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Mac.Des7.v63"/></p>
            <ol type="i">
                <li><bean:message key="jsp.install.guide.GetStarted.Mac.Des7ib.v63"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.Mac.Des7iib.v63"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.Mac.Des7iiib.v63"/></li>
				<li><bean:message key="jsp.install.guide.GetStarted.Mac.Des7iiic.v63"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.Mac.Des7iv.v63"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.Mac.Des7vb.v63"/></li>
            </ol>
            <p><bean:message key="jsp.install.guide.GetStarted.Mac.Des7vi"/></p>
        </li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Mac.Des8b.v63"/></p>
		</li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Mac.Des9.v63"/></p></li>
    </ol>
    
    <p align="right"><a href="javascript: window.print()"><bean:message key="jsp.install.guide.Print"/></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="javascript: window.top.close()"><bean:message key="jsp.install.guide.Close"/></a>&nbsp;</p>
    
</body>
</html>
