<%@ page language="java" %>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="/WEB-INF/tlds/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tlds/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tlds/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tlds/struts-nested.tld" prefix="nested" %>
<%@ page import="com.ahsay.obs.www.*" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Content-Language" content="<%= Resource.getLocaleName(request) %>">
    <link rel=stylesheet type="text/css" href="/obs/www/getCSS.do">
    <script language="JavaScript" src="/obs/jsp/lib/resource<%= "_" + Resource.getLocaleName(request) %>.js"></script>
    <script language="JavaScript" src="/obs/jsp/lib/common.js"></script>
</head>

<body class="installguidebody">
    <table border="0" cellspacing="1" cellpadding="0" width="100%">
        <tr>
            <td width="100%" class="installguide_indexborder">
                <table border="0" width="100%" cellspacing="1" cellpadding="3">
                    <tr>
                        <% if (Constant.YES.equals(Constant.DESUPPORTED_NETWARE)) { %>
                            <td align="center" colspan="3" width="100%" class="installguide_index"><bean:message key="jsp.user.wizard.install.chooseOS.jsp.SelectYourOS"/></td>
                        <% } else { %>
                            <td align="center" colspan="5" width="100%" class="installguide_index"><bean:message key="jsp.user.wizard.install.chooseOS.jsp.SelectYourOS"/></td>
                        <% } %>
                    </tr>
                    <tr>
                        <td align="center" bgcolor="#FFFFFF" width="25%"><a target="_parent" href="index.jsp?os=windows.jsp"><img border="0" src="/obs/jsp/images/logo_MSWindows_s.gif" alt="<bean:message key='jsp.install.guide.Windows'/>"></a></td>
                        <td align="center" bgcolor="#FFFFFF" width="25%"><a target="_parent" href="index.jsp?os=macosx.jsp"><img border="0" src="/obs/jsp/images/logo_Mac_s.gif" alt="<bean:message key='jsp.install.guide.MacOSX'/>"></a></td>
                        <td align="center" bgcolor="#FFFFFF" width="25%"><a target="_parent" href="index.jsp?os=unix.jsp"><img border="0" src="/obs/jsp/images/logo_Unix_Linux_s.gif" alt="<bean:message key='jsp.install.guide.Unix'/>"></a></td>
                        <% if (!Constant.YES.equals(Constant.DESUPPORTED_NETWARE)) { %>
                            <td align="center" bgcolor="#FFFFFF" width="25%"><a target="_parent" href="index.jsp?os=netware.jsp"><img border="0" src="/obs/jsp/images/logo_netware_s.gif" alt="<bean:message key='jsp.install.guide.NetWare'/>"></a></td>
                        <% } %>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>
