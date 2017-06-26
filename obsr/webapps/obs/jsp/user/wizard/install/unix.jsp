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
                - <bean:message key="jsp.install.guide.AhsayOBM"/>
                - <bean:message key="jsp.install.guide.UnixLinux"/>
            </td>
            <td valign="top" align="right" ><a href="javascript: window.print()"><bean:message key="jsp.install.guide.Print"/></a></td>
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
			<b><bean:message key="jsp.install.MainPage.Download"/> <a href="/obs/download/obm-nix.tar.gz"><bean:message key="GLOBAL.ProductName.AhsayOBM"/></a></b> - 
			<% if (isOEM) { %>
				<bean:message key="jsp.install.guide.AhsayOBM.Nix.DownloadNote.OEM.v63"/>
			<% } else { %>
				<bean:message key="jsp.install.guide.AhsayOBM.Nix.DownloadNote.v67"/>
			<% } %>
		</p>
    </ol>
    
    <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <tr>
            <td>
                <table border="0" cellpadding="3" cellspacing="0">
                    <tr>
                        <td class="installguide_subtitle" style="padding-left: 2mm; padding-right: 2mm"><bean:message key="jsp.install.guide.GetStarted"/> - <bean:message key="jsp.install.guide.GetStarted.Linux"/></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td width="100%" class="installguide_subtitle"><img border="0" src="/obs/jsp/images/stub.gif" width="1" height="1"></td>
        </tr>
    </table>
    
    <ol>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.DownloadSetupFileNoName.v63"/></p></li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.LoginAsRoot.v63"/></p></li>
        <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.ChangeLocale.v63"/>
            <p class="installguide_userinput">set LC_ALL=&lt;selected language&gt;.UTF-8<br>
                export LC_ALL<br>
                set LC_LANG=&lt;selected language&gt;.UTF-8<br>
                export LC_LANG
            </p>
        </li>
        <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.UnpackInstallFile.v63"/>
            <p class="installguide_userinput">mkdir -p &quot;/usr/local/obm&quot;<br>
                cd &quot;/usr/local/obm&quot;<br>
                gunzip obm-nix.tar.gz<br>
                tar -xf obm-nix.tar
            </p>
        </li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.Linux.InstallJava.v63"/></p></li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.Linux.CreateSymLinka.v63"/></p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.Linux.CreateSymLinkb.v63"/></p>
            <p class="installguide_userinput">ln –sf &quot;/usr/java&quot; &quot;/usr/local/obm/jvm&quot;</p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.Or.v63"/></p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.Linux.CreateSymLinkc.v63"/></p>
            <p class="installguide_userinput">export JAVA_HOME=&quot;/usr/java&quot;</p>
        </li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Install.Des.v63"/></p>
            <p class="installguide_userinput">cd &quot;/usr/local/obm&quot;<br>
                ./bin/install.sh &gt; install.log</p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.InstallLog.v63"/></p>
        </li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.ContinueInstallation.v63"/></p></li>  
    </ol>
 
    <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <tr>
            <td>
                <table border="0" cellpadding="3" cellspacing="0">
                    <tr>
                        <td class="installguide_subtitle" style="padding-left: 2mm; padding-right: 2mm"><bean:message key="jsp.install.guide.GetStarted"/> - <bean:message key="jsp.install.guide.GetStarted.Solaris"/></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td width="100%" class="installguide_subtitle"><img border="0" src="/obs/jsp/images/stub.gif" width="1" height="1"></td>
        </tr>
    </table>
    
    <ol>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.DownloadSetupFileNoName.v63"/></p></li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.LoginAsRoot.v63"/></p></li>
        <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.ChangeLocale.v63"/>
            <p class="installguide_userinput">set LC_ALL=&lt;selected language&gt;.UTF-8<br>
                export LC_ALL<br>
                set LC_LANG=&lt;selected language&gt;.UTF-8<br>
                export LC_LANG
            </p>
        </li>
        <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.UnpackInstallFile.v63"/>
            <p class="installguide_userinput">mkdir -p &quot;/usr/local/obm&quot;<br>
                cd &quot;/usr/local/obm&quot;<br>
                gunzip obm-nix.tar.gz<br>
                tar -xf obm-nix.tar
            </p>
        </li>
        <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.SolarisBSD.RemoveBundledJVM.v63"/>
            <p class="installguide_userinput">rm –rf /usr/local/obm/jre32<br>
                rm –rf /usr/local/obm/jre64<br>
            </p>
        </li>		
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.SolarisBSD.InstallJava.v63"/></p></li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.SolarisBSD.CreateSymLinka.v63"/></p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.SolarisBSD.CreateSymLinkb.v63"/></p>
            <p class="installguide_userinput">ln -sf &quot;/usr/java&quot; &quot;/usr/local/obm/jvm&quot;</p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.Or.v63"/></p>			
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.SolarisBSD.CreateSymLinkc.v63"/></p>
            <p class="installguide_userinput">JAVA_HOME=&quot;/usr/java&quot;; export JAVA_HOME</p>
        </li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.Install.Des.v63"/></p>
            <p class="installguide_userinput">cd &quot;/usr/local/obm&quot;<br> 
                ./bin/install.sh > install.log
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.InstallLog.v63"/></p>
        </li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.ContinueInstallation.v63"/></p></li>    
    </ol>
  
    <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <tr>
            <td>
                <table border="0" cellpadding="3" cellspacing="0">
                    <tr>
                        <td class="installguide_subtitle" style="padding-left: 2mm; padding-right: 2mm"><bean:message key="jsp.install.guide.GetStarted"/> - <bean:message key="jsp.install.guide.GetStarted.BSD"/></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td width="100%" class="installguide_subtitle"><img border="0" src="/obs/jsp/images/stub.gif" width="1" height="1"></td>
        </tr>
    </table>
    
 	<ol>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.DownloadSetupFileNoName.v63"/></p></li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.LoginAsRoot.v63"/></p></li>
        <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.ChangeLocale.v63"/>
            <p class="installguide_userinput">set LC_ALL=&lt;selected language&gt;.UTF-8<br>
                export LC_ALL<br>
                set LC_LANG=&lt;selected language&gt;.UTF-8<br>
                export LC_LANG<br>
            </p>
        </li>
        <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.UnpackInstallFile.v63"/>
            <p class="installguide_userinput">mkdir -p &quot;/usr/local/obm&quot;<br>
                cd &quot;/usr/local/obm&quot;<br>
                gunzip obm-nix.tar.gz<br>
                tar -xf obm-nix.tar
            </p>
        </li>
        <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.SolarisBSD.RemoveBundledJVM.v63"/>
            <p class="installguide_userinput">rm –rf /usr/local/obm/jre32<br>
                rm –rf /usr/local/obm/jre64<br>
            </p>
        </li>		
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.DownloadBSDJVM.DownloadOpenJDKV6.v692"/></p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.DownloadBSDJVM.ForExample.v692"/></p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.DownloadBSDJVM.DownloadOpenJDKV6File.v692"/><br>
               ftp://ftp.freebsd.org/pub/FreeBSD/ports/i386/packages-8-stable/Latest/openjdk6.tbz
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.DownloadBSDJVM.ForMoreReference.v692"/><br>
               http://www.freebsdfoundation.org/downloads/java.shtml
            </p>
        </li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallBSDJVM.v692"/></p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallBSDJVMa.v692"/></p>
            <p class="installguide_userinput">pkg_add -r openjdk6</p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallBSDJVMb.v692"/></p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallBSDJVMc.v692"/><br>
               <font class="installguide_userinput">pkg_add -r ftp://ftp.freebsd.org/pub/FreeBSD/ports/amd64/packages-7-stable/Latest/openjdk6.tbz</font>
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallBSDJVMd.v692"/><br>
               <font class="installguide_userinput">pkg_add -r ftp://ftp.freebsd.org/pub/FreeBSD/ports/i386/packages-7-stable/Latest/openjdk6.tbz</font>
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallBSDJVMe.v692"/><br>
               <font class="installguide_userinput">pkg_add -r ftp://ftp.freebsd.org/pub/FreeBSD/ports/amd64/packages-8-stable/Latest/openjdk6.tbz</font>
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallBSDJVMf.v692"/><br>
               <font class="installguide_userinput">pkg_add -r ftp://ftp.freebsd.org/pub/FreeBSD/ports/i386/packages-8-stable/Latest/openjdk6.tbz</font>
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallBSDJVM.OpenBSD47i.v692"/><br>
               <font class="installguide_userinput">pkg_add ftp://ftp.openbsd.org/pub/OpenBSD/4.7/packages/i386/jre-1.7.0.00b72p0.tgz</font>
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallBSDJVM.OpenBSD48i.v692"/><br>
               <font class="installguide_userinput">pkg_add ftp://ftp.openbsd.org/pub/OpenBSD/4.8/packages/i386/jre-1.7.0.00b72p1.tgz</font>
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallBSDJVM.OpenBSD48a.v692"/><br>
               <font class="installguide_userinput">pkg_add ftp://ftp.openbsd.org/pub/OpenBSD/4.8/packages/amd64/jre-1.7.0.00b72p1.tgz</font>
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallBSDJVM.OpenBSD49i.v692"/><br>
               <font class="installguide_userinput">pkg_add ftp://ftp.openbsd.org/pub/OpenBSD/4.9/packages/i386/jre-1.7.0.00beta122p0v0.tgz</font>
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallBSDJVM.OpenBSD49a.v692"/><br>
               <font class="installguide_userinput">pkg_add ftp://ftp.openbsd.org/pub/OpenBSD/4.9/packages/amd64/jre-1.7.0.00beta122p0v0.tgz</font>
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallBSDJVM.OpenBSD50i.v692"/><br>
               <font class="installguide_userinput">pkg_add ftp://ftp.openbsd.org/pub/OpenBSD/5.0/packages/i386/jre-1.7.0.00beta122p1v0.tgz</font>
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallBSDJVM.OpenBSD50a.v692"/><br>
               <font class="installguide_userinput">pkg_add ftp://ftp.openbsd.org/pub/OpenBSD/5.0/packages/amd64/jre-1.7.0.00beta122p1v0.tgz</font>
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallBSDJVMg.v692"/></p>
        </li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.SolarisBSD.CreateSymLinka.v63"/></p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.CreateSymLink.v692"/></p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallBDSJVM.FreeBSD.v692"/><bean:message key="GLOBAL.Label.Colon"/></p>
            <p class="installguide_userinput">ln -sf &quot;/usr/local/openjdk6&quot; &quot;/usr/local/obm/jvm&quot;</p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.SetJavaSymbolicLinka.v63"/></p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.SetJavaSymbolicLinkb.v63"/></p>
            <p class="installguide_userinput">setenv JAVA_HOME &quot;/usr/local/openjdk6&quot;</p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallBSDJVM.OpenBSD.v692"/><bean:message key="GLOBAL.Label.Colon"/></p>
            <p class="installguide_userinput">ln -sf &quot;/usr/local/jre-1.7.0&quot; &quot;/usr/local/obm/jvm&quot;</p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.SetJavaSymbolicLinka.v63"/></p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.SetJavaSymbolicLinkb.v63"/></p>
            <p class="installguide_userinput">setenv JAVA_HOME &quot;/usr/local/jre-1.7.0&quot;</p>
        </li>		
        <li><p><bean:message key="jsp.install.guide.GetStarted.Install.Des.v63"/></p>
            <p class="installguide_userinput">cd &quot;/usr/local/OBM&quot;<br>
                ./bin/install.sh > install.log</p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.InstallLog.v63"/></p>
        </li>  
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallScheduler&Aua.UserAddTwoEntries.v63"/></p>
            <p class="installguide_userinput">
                obmaua_enable=&quot;YES&quot;<br>
                obmscheduler_enable=&quot;YES&quot;
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallScheduler&Aua.RunScripts.v63"/></p>
            <p class="installguide_userinput">
                /usr/local/etc/rc.d/obmscheduler start &<br>
                /usr/local/etc/rc.d/obmaua start &
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallScheduler&Aua.OpenBSD49.v692"/><br>
               <bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallScheduler&Aua.OpenBSD49.AddEntries.v692"/>
            </p>
            <p class="installguide_userinput">
                if [ -x /etc/obmaua ] ; then<br>
                /etc/obmaua start<br>
                fi
            </p>
            <p class="installguide_userinput">
                if [ -x /etc/obmscheduler ] ; then<br>
                /etc/obmscheduler start<br>
                fi
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallScheduler&Aua.RunScripts.v63"/></p>
            <p class="installguide_userinput">
                /etc/obmscheduler start &<br>
                /etc/obmaua start &
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallScheduler&Aua.OpenBSD50.v692"/><br>
               <bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallScheduler&Aua.OpenBSD50.AddEntries.v692"/>
            </p>
            <p class="installguide_userinput">
                pkg_scripts="obmaua obmscheduler"
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallScheduler&Aua.OpenBSD50.ApppendEntry.v692"/>
               <font class="installguide_userinput">pkg_scripts="xxx yyy obmaua obmscheduler"</font>
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallScheduler&Aua.RunScripts.v63"/></p>
            <p class="installguide_userinput">
                /etc/rc.d/obmscheduler start &<br>
                /etc/rc.d/obmaua start &
            </p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.BSD.InstallScheduler&Aua.Installed.V6"/></p>
        </li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.LinuxSolarisBSD.ContinueInstallation.v63"/></p></li>    
    </ol>
 
 
    <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <tr>
            <td>
                <table border="0" cellpadding="3" cellspacing="0">
                    <tr>
                        <td class="installguide_subtitle" style="padding-left: 2mm; padding-right: 2mm"><bean:message key="jsp.install.guide.GetStarted"/> - <bean:message key="jsp.install.XWindow"/></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td width="100%" class="installguide_subtitle"><img border="0" src="/obs/jsp/images/stub.gif" width="1" height="1"></td>
        </tr>
    </table>
        
    <ol>                   
        <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.SetDisplayEnvironmentVariables.v63"/>
            <p class="installguide_userinput">Linux / Unix (sh, bash): </p>
            <p class="installguide_userinput">DISPLAY=<font class="installguide_promptmsg">IP_ADDRESS_OF_XTERMINAL</font>[:0.0]; export DISPLAY</p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.SetDisplayEnvironmentVariables.ForExample.v63"/></p>
            <p>DISPLAY=:0.0; export DISPLAY<br>  
                or DISPLAY=127.0.0.1; export DISPLAY<br>   
                or DISPLAY=127.0.0.1:0.0; export DISPLAY<br>   
                or DISPLAY=192.168.0.2; export DISPLAY<br>   
                or DISPLAY=192.168.0.2:0.0; export DISPLAY
            </p>
            <br>
            <p class="installguide_userinput">BSD (csh): </p>
            <p class="installguide_userinput">setenv DISPLAY <font class="installguide_promptmsg">IP_ADDRESS_OF_XTERMINAL</font>[:0.0]</p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.SetDisplayEnvironmentVariables.ForExample.v63"/></p>
            <p>setenv DISPLAY :0.0<br>  
                or setenv DISPLAY 127.0.0.1<br>   
                or setenv DISPLAY 127.0.0.1:0.0<br>   
                or setenv DISPLAY 192.168.0.2<br>   
                or setenv DISPLAY 192.168.0.2:0.0
            </p>
        </li>
        <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.RunOBM.v63"/>
            <p class="installguide_userinput">sh /usr/local/obm/bin/RunOBC.sh &amp;</p>
        </li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.EnterServerHost.v63"/></p></li>
		<li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.EnterProxyServer.v63"/></p></li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.TrialRegistration.Header.v63"/></p>
            <ol type="i">
                <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.TrialRegistration.LoginNamePasswordConfirmPassword.v63"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.TrialRegistration.EnterEmail.v63"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.TrialRegistration.PressSubmit.v63"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.TrialRegistration.LoggedToBackupServerAlready.v63"/><br>&nbsp;</li>
            </ol>
        </li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.RegisteredUserLogon.v63"/></p></li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.FirstLogon.v63"/></p>
            <ol type="i">
                <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.FirstLogon.EnterBackupSetNameType.v63"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.FirstLogon.SelectFiles.v63"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.FirstLogon.Properties.v63"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.FirstLogon.SetupEncryptionSetting.v63"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.FirstLogon.OK.v63"/><br>&nbsp;</li>
            </ol>
        </li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.RunManualBackupImmediately"/></p></li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.SetupCompleted.v63"/></p></li>
    </ol>

    <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <tr>
            <td>
                <table border="0" cellpadding="3" cellspacing="0">
                    <tr>
                        <td class="installguide_subtitle" style="padding-left: 2mm; padding-right: 2mm"><bean:message key="jsp.install.guide.GetStarted"/> - <bean:message key="jsp.install.CmdLine"/></td>
                    </tr>  
                </table>
            </td>
        </tr>
        <tr>
            <td width="100%" class="installguide_subtitle"><img border="0" src="/obs/jsp/images/stub.gif" width="1" height="1"></td>
        </tr>
    </table>
    
    <ol>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.CmdLine.UseWebInterface.v63"/></p>
            <ol type="i">
                <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.CmdLine.UseWebInterface.UpdateBackupSet.v63"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.CmdLine.UseWebInterface.AddBackupSet.v63"/></li>
                <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.CmdLine.UseWebInterface.RemoveBackupSet.v63"/><br>&nbsp;</li>
            </ol>
        </li>
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.CmdLine.UseBackupConfigurator.v63"/></p>
            <p class="installguide_userinput">sh /usr/local/obm/bin/Configurator.sh</p>
        </li>
        <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.CmdLine.EnterNamePassword.v63"/>
            <p class="installguide_promptmsg">Login Name: <font class="installguide_userinput"> userXXX</font><br>
                Password: <font class="installguide_userinput">*****************************</font><br>
                Backup Server URL: <font class="installguide_userinput">xxx.yyy.com</font><br>
                Which Protocol ? (1) Http (2) Https: <font class="installguide_userinput">1</font><br>
                Use proxy? (Y)es or (N)o: <font class="installguide_userinput">Y</font><br>
                Proxy Type? (1) Http/Https Proxy (2) SOCKS: <font class="installguide_userinput">1</font><br>
                Enter proxy server: <font class="installguide_userinput"> aaa.bbb.com</font><br>
                Enter proxy port: <font class="installguide_userinput">xxx</font><br>
                Enter proxy username (optional): <font class="installguide_userinput">administrator</font><br>
                Enter proxy password (optional): <font class="installguide_userinput">********************</font>
            </p>
        </li>		
        <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.CmdLine.SetEncryptionKey"/>
            <p class="installguide_promptmsg">Found new backup set 'xxx'<br>  
                Please enter the following values for this backup set:<br>  
                <br>
                Encrypting Algorithm?<br>  
                (1) Twofish (2) AES (3) Triple DES (4) No Encryption: <font class="installguide_userinput">1</font><br>  
                Encrypting Key: <font class="installguide_userinput">*****************</font><br>
                Re-Enter Encrypting Key: <font class="installguide_userinput">******************</font><br>
                Encrypting Mode? (1) ECB (2) CBC: <font class="installguide_userinput">1</font><br>
                Run scheduled backup on this computer? (Y)es or (N)o: <font class="installguide_userinput">Y</font>
            </p>
        </li>
			
        <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.MakeChangesToSetting"/>
            <p class="installguide_promptmsg">Main Menu:<br>
                ----------<br>
                (1). List Backup Setting<br>
                (2). Change Password<br>
                (3). Change Network Setting<br>
                (4). Change run scheduled backup setting<br> 
                (5). Toggle Masked Field (Password, Encryption Key)<br> 
                (6). Generate Configuration Report (text format)<br>
                (7). Quit
            </p>
            <p class="installguide_promptmsg">Your Choice:</p>
        </li>
        <li><bean:message key="jsp.install.guide.GetStarted.UnixLinux.CmdLine.RunABackup"/>
            <p class="installguide_userinput">sh /usr/local/obm/bin/RunBackupSet.sh <font class="installguide_promptmsg">[BACKUP_SET]</font></p>
            <p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.CmdLine.RunABackup.Where"/> <font class="installguide_promptmsg">[BACKUP_SET]</font> <bean:message key="jsp.install.guide.GetStarted.UnixLinux.CmdLine.RunABackup.NameOfBackupSet.v63"/></p>
        </li>	   
        <li><p><bean:message key="jsp.install.guide.GetStarted.UnixLinux.xWindows.SetupCompleted.v63"/></p></li>
    </ol>
	
    <p align="right"><a href="javascript: window.print()"><bean:message key="jsp.install.guide.Print"/></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="javascript: window.top.close()"><bean:message key="jsp.install.guide.Close"/></a>&nbsp;</p>

</body>
</html>










