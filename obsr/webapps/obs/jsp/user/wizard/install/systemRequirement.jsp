<%@ page language="java" %>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="/WEB-INF/tlds/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tlds/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tlds/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tlds/struts-nested.tld" prefix="nested" %>
<%@ page import="com.ahsay.obs.www.Resource" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Content-Language" content="<%= Resource.getLocaleName(request) %>">
    <link rel="stylesheet" type="text/css" href="/obs/www/getCSS.do">
    <script language="JavaScript" src="/obs/jsp/lib/common.js"></script>
	<style type="text/css">
		/* level 1 */
		.lv1_outline{
			list-style:none;
			margin:0px 0px 20px 0px;
			padding: 0px 0px 0px 25px;
		}

		.lv1_outline_item{
			/*
			color: #017EB4;
			*/
			color: #000000;
			padding-top:10px;
			padding-bottom:10px;
			font-family: Arial;
			font-weight: bold;
			font-size:10pt;
		}

		.lv1_ul{
			list-style:square;
			margin:0px 0px 30px 0px;
			padding: 0px 0px 0px 25px;
		}

		.lv1_ul_item{
			color: #000000;
			padding-top:2px;
			padding-bottom:2px;
			font-family: Arial;
			font-weight: bold;
			font-size:10pt;
		}

		.lv1_ol{
			list-style:decimal;
			margin:0px 0px 30px 0px;
			padding: 0px 0px 0px 25px;
		}

		.lv1_ol_item{
			color: #000000;
			padding-top:2px;
			padding-bottom:2px;
			font-family: Arial;
			font-weight: bold;
			font-size:10pt;
		}

		.lv1_content{
			font-family: Arial;
			color: #000000;
			font-size:10pt;
			font-weight:normal;
			margin-right:10px;
		}

		/* level 2 */
		.lv2_outline{
			list-style:decimal;
			margin:0px 0px 30px 0px;
			padding: 0px 0px 0px 25px;
		}

		.lv2_outline_item{
			color: #000000;
			padding-top:5px;
			padding-bottom:5px;
			font-family: Arial;
			font-weight: bold;
			font-size:10pt;
		}

		.lv2_ul{
			list-style:disc;
			margin:0px 0px 40px 0px;
			padding: 0px 0px 0px 25px;
		}

		.lv2_ul_item{
			color: #000000;
			padding-top:2px;
			padding-bottom:2px;
			font-family: Arial;
			font-weight: bold;
			font-size:10pt;
		}

		.lv2_ol{
			list-style:lower-roman;
			margin:0px 0px 40px 0px;
			padding: 0px 0px 0px 25px;
		}

		.lv2_ol_item{
			color: #000000;
			padding-top:2px;
			padding-bottom:2px;
			font-family: Arial;
			font-weight: bold;
			font-size:10pt;
		}

		.lv2_content{
			font-family: Arial;
			color: #000000;
			font-size:10pt;
			margin-right:10px;
		}

		/* level 3 */
		.lv3_outline{
			list-style:decimal;
			margin:0px 0px 40px 0px;
			padding: 0px 0px 0px 25px;
		}

		.lv3_outline_item{
			color: #000000;
			padding-top:2px;
			padding-bottom:2px;
			font-family: Arial;
			font-weight: normal;
			font-size:10pt;
			font-style:italic;
		}

		.lv3_ul{
			list-style:circle;
			margin:0px 0px 50px 0px;
			padding: 0px 0px 0px 25px;
		}

		.lv3_ul_item{
			color: #000000;
			padding-top:2px;
			padding-bottom:2px;
			font-family: Arial;
			font-weight: normal;
			font-size:10pt;
			font-style:normal;
		}

		.lv3_ol{
			list-style:lower-alpha;
			margin:0px 0px 50px 0px;
			padding: 0px 0px 0px 25px;
		}

		.lv3_ol_item{
			color: #000000;
			padding-top:2px;
			padding-bottom:2px;
			font-family: Arial;
			font-weight: normal;
			font-size:10pt;
			font-style:normal;
		}

		.lv3_content{
			font-family: Arial;
			color: #000000;
			font-size:10pt;
			font-style:normal;
			margin-right:10px;
		}
		a:link { color:#005695; }
		a:visited { color:#005695; }
		a:hover { color:#ff0000; }
	</style>
</head>

<body style="margin-top:0px; padding-top:0px; padding-bottom:10px; padding-left:12px; padding-right:5px" bgcolor="#c0c0c0">
	<div style="background-color:#ffffff">	
	<br>
	
	<table cellPadding="0" width="100%" border="0" id="table4">
        <tr>
            <td class="installguide_title" style="font-size: 16px; padding-bottom: 5mm">
                <bean:message key="jsp.install.guide.InstallationGuide"/>
                - <bean:message key="jsp.install.guide.AhsayOBM"/> / <bean:message key="jsp.install.guide.AhsayACB"/>
            </td> 
            <td valign="top" align="right" width="1%"><a href="javascript: window.print()"><bean:message key="jsp.install.guide.Print"/></a></td>
        </tr>
    </table>
	
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tbody>
	<tr>
		<td align="left" width="100%">
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody>
			<tr>
				<td width="100%">
					<ol class="lv1_outline">						
						<li class="lv1_outline_item">Product Version:</li>
						<div class="lv1_content">v6</div>
						<li class="lv1_outline_item">Description:</li>
						<div class="lv1_content">This document lists the available operating systems, platforms, and applications specifically tested to be compatible with software.</div>											
						<li class="lv1_outline_item">Content:</li>
						<div class="lv1_content">
						<ul>
							<li class="lv1_content"><a href="#op">Supported&nbsp;Operation System List</a></li>
							<li class="lv1_content"><a href="#app">Supported Applications and Database List</a> </li>
							<li class="lv1_content"><a href="#plan">Planned Support List</a></li>
							<li class="lv1_content"><a href="#req">System&nbsp;Requirements</a></li>
						</ul><br><br>
						<a name="op"></a>
						<strong><u>Operating Systems</u></strong> compatible with <bean:message key="jsp.install.guide.AhsayOBM"/> <img alt="" src="/obs/jsp/icon/obm.gif" border="0">&nbsp;/ <bean:message key="jsp.install.guide.AhsayACB"/> <u><img alt="" src="/obs/jsp/icon/acb.gif" border="0"><br></u><br>
						<table border="0" cellpadding="0" cellspacing="0" height="160" width="95%">
						<tbody>
						<tr>
							<td style="WIDTH: 45%; BORDER-RIGHT: #ffffff 1px solid" bgcolor="#335c9c" height="40">
							<p align="center"><font size="2"><font color="#ffffff">Operating System<br></font></font></p></td>
							<td style="BORDER-RIGHT: #ffffff 1px solid" bgcolor="#335c9c">
							<p align="center"><font size="2"><font color="#ffffff">Supported Application<br></font></font></p></td>
							<td style="BORDER-RIGHT: #ffffff 1px solid" bgcolor="#335c9c">
							<p align="center"><font size="2"><font color="#ffffff">Supported Version<br></font></font></p></td>
							<td style="BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#335c9c">
							<p align="center"><font color="#ffffff" size="2">Support End Date<br><font size="1">(YYYY/MM/DD)</font><font size="2">&nbsp;</font></font></p></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>Windows platforms</u></strong><u>:</u> <sup>[</sup><sup>1</sup><sup>]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;XP </font><font size="1">Home / Professional</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Vista </font><font size="1">Home Basic&nbsp;/ Home Premium / Business / Enterprise / Ultimate</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;7 </font><font size="1">Home Basic / Home Premium / Professional / Enterprise / Ultimate</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2020/01/14</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;8 </font><font size="1">Pro / Enterprise</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.11.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2023/01/10&nbsp; </font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;8.1 </font><font size="1">Pro / Enterprise</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.15.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2023/01/10&nbsp; </font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;10 </font><font size="1">Pro / Enterprise</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.27.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2025/10/14&nbsp; </font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Server 2003 </font><font size="1">Standard / Enterprise / Datacenter</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Server 2003 R2 </font><font size="1">Standard / Enterprise / Datacenter</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Server 2008 </font><font size="1">Standard / Enterprise / Datacenter</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2020/01/14</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Server 2008 R2 </font><font size="1">Standard / Enterprise / Datacenter</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2020/01/14</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Server 2012 </font><font size="1">Standard / Essentials / Datacenter</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.11.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2023/01/10</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Server 2012 R2 </font><font size="1">Standard / Essentials / Datacenter</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.15.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2023/01/10</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Small Business Server 2003 </font><font size="1">Standard / Premium</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font> </td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Small Business Server 2008 </font><font size="1">Standard / Premium</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Small Business Server 2011 </font><font size="1">Standard / Essentials / Premium</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.5.4.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="4" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="4" bgcolor="#fef6ed"><font size="2"><sup>[</sup><sup>1</sup><sup>]</sup> <font size="1">For
							 <bean:message key="jsp.install.guide.AhsayOBM"/> installation on 64 bit Windows platforms, Adobe Flash Player 
							11 - 64 bit version for Internet Explorer must be installed: </font><a title="http://get.adobe.com/flashplayer/otherversions/" href="http://get.adobe.com/flashplayer/otherversions/" target="_pedia_window"><font size="1"></font></a><font size="1"><a href="http://get.adobe.com/flashplayer/otherversions"><br>http://get.adobe.com/flashplayer/otherversions</a></font></font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="4" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>Linux platforms</u></strong><u>:</u> <sup>[2, 3]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;CentOS 4</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached </font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;CentOS 5</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;CentOS 6</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.7.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2017/11/30</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;CentOS 7</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.19.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2024/06/30</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Red Hat Enterprise Linux 4</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Red Hat Enterprise Linux 5</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Red Hat Enterprise Linux 6</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.7.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2020/11/30</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Red Hat Enterprise Linux 7</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.19.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="4" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="4" bgcolor="#fef6ed"><font size="2"><sup>[2]</sup></font><font size="1"> Other Linux distributions such as&nbsp;Fedora are not officially supported, but should work.</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="4" bgcolor="#fef6ed"><font size="2"><sup>[</sup><sup>3</sup><sup>]</sup></font><font size="1"> GUI support Gnome, but KDE should work.</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="4" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>Unix platforms</u></strong><u>:</u> <sup>[4]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;FreeBSD 7.3</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;FreeBSD 8.1</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;FreeBSD 8.2</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.5.2.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;FreeBSD 8.3</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.9.2.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;FreeBSD 9.0</td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.9.2.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;FreeBSD 9.1</td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.15.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;FreeBSD 9.2</td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.15.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;FreeBSD 10.0</td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.15.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;FreeBSD 10.1</td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.23.2.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;HP-UX 11i v1</font>&nbsp;<font size="1">or above&nbsp;<sup>[5]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.11.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;IBM AIX 5.2</font>&nbsp;<font size="1">or above&nbsp;<sup>[5]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.13.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;OpenBSD 4.7</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.9.2.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;OpenBSD 4.8</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.9.2.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;OpenBSD 4.9</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.9.2.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;OpenBSD 5.0</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.9.2.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;OpenBSD 5.2</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.13.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;SCO OpenServer 6</font>&nbsp;<font size="1">or above</font>&nbsp;<sup>[5]</sup></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.11.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Solaris 10 <font size="1">x86</font></font><font size="2"><sup> </sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2018/01/31</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Solaris 10 <font size="1">SPARC</font>&nbsp;<sup>[5]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.11.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2018/01/31</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Solaris 11 Express <font size="1">x86</font></font><font size="2"><sup> </sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.7.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Solaris 11 Express <font size="1">SPARC</font>&nbsp;<sup>[5]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.11.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Solaris 11 <font size="1">x86</font></font><font size="2"><sup> </sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.9.2.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2024/11/30</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Solaris 11 <font size="1">SPARC</font>&nbsp;<sup>[5]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.11.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2024/11/30</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="4" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="4" bgcolor="#fef6ed"><font size="2"><sup>[4]</sup></font><font size="1"> GUI support Gnome, but KDE should work.</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="4" bgcolor="#fef6ed"><font size="2"><sup>[5]</sup></font><font size="1">
							 Limited support, no intensive testing has been
							performed on this platform, but should work. Best effort support will be
							 provided.</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="4" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>Mac OS X platforms</u></strong><u>:</u></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Mac OS X 10.5 - Leopard</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Mac OS X 10.6 - Snow Leopard</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Mac OS X 10.7 - Lion</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.9.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #97c0ff 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Mac OS X 10.8 - Mountain Lion</font></td>
							<td style="BORDER-BOTTOM: #97c0ff 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #97c0ff 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.11.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #97c0ff 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #97c0ff 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Mac OS X 10.9 - Mavericks</font></td>
							<td style="BORDER-BOTTOM: #97c0ff 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #97c0ff 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.17.0.2 or above</font></td>
							<td style="BORDER-BOTTOM: #97c0ff 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #97c0ff 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Mac OS X 10.10 - Yosemite</font></td>
							<td style="BORDER-BOTTOM: #97c0ff 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="bottom"><font size="2">&nbsp;<img alt="" src="/obs/jsp/icon/obm.gif" border="0"><img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></td>
							<td style="BORDER-BOTTOM: #97c0ff 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.21.4.0 or above</font></td>
							<td style="BORDER-BOTTOM: #97c0ff 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						</tbody>
						</table>
						<font color="#ff0000"><br></font><br><br>							
							
						<a name="app"></a><u><strong>Applications and Database</strong></u>&nbsp;compatible with <bean:message key="jsp.install.guide.AhsayOBM"/> <img alt="" src="/obs/jsp/icon/obm.gif" border="0"><br><br>
						<table border="0" cellpadding="0" cellspacing="0" height="160" width="95%">
						<tbody>
						<tr>
							<td style="WIDTH: 45%; BORDER-RIGHT: #ffffff 1px solid" bgcolor="#335c9c" height="40"><font size="2">
							<p align="center"><font size="2"><font color="#ffffff">Application<br></font></font></p></font></td>
							<td style="BORDER-RIGHT: #ffffff 1px solid" bgcolor="#335c9c"><font size="2"><font size="2"><font color="#ffffff">
							<p align="center"><font size="2"><font color="#ffffff">Supported Version<br></font></font></p></font></font></font></td>
							<td style="BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#335c9c"><font size="2"><font size="2"><font color="#ffffff">
							<p align="center"><font color="#ffffff" size="2">Support End Date<br><font size="1">(YYYY/MM/DD)</font><font size="2">&nbsp;</font></font></p></font></font></font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>MS Exchange</u></strong><u>:</u></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Exchange Server 2003 <font size="1">Standard / Enterprise</font></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Exchange Server 2007 <font size="1">Standard / Enterprise</font></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Exchange Server 2010 <font size="1">Standard / Enterprise</font></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2020/01/14</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Exchange Server 2013 <font size="1">Standard / Enterprise</font>&nbsp;<sup>[6]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.13.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2023/04/11</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2"><sup>[6]</sup><font size="1"> MS Exchange Mail Level Backup Module for Exchange Server 2013 is supported by 6.15.0.0 or above.</font></font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>MS SQL</u></strong><u>:</u></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;SQL Server 2000 <font size="1">Standard / Enterprise</font></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;SQL Server 2005 <font size="1">Standard /&nbsp;Express / Enterprise</font></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;SQL Server 2008 </font><font size="1">Standard /&nbsp;Express / Enterprise</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2019/01/08</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;SQL Server 2008 R2 <font size="1">Standard /&nbsp;Express / Enterprise</font></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2019/01/08</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;SQL Server 2012 <font size="1">Standard /&nbsp;Express / Enterprise</font></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.9.2.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2022/07/12</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;SQL Server 2014 <font size="1">Standard /&nbsp;Express / Enterprise</font></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.19.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2024/07/09</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>MS SharePoint</u></strong><u>:</u>&nbsp;<sup>[7]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp; </font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;SharePoint Server 2003</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;SharePoint Server 2007</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;SharePoint Server 2010</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2020/10/13</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2"><sup>[7]</sup><font size="1"> Backup performed using file backup set with pre-backup command.</font></font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>Oracle</u></strong><u>:</u></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Oracle Database 10g </font><font size="1">Release 1</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Oracle Database 10g </font><font size="1">Release 2</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Oracle Database 11g </font><font size="1">Release 1</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Oracle Database 11g <font size="1">Release 2</font></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2023/01/01</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Oracle Database 12c <font size="1">Release 1</font>&nbsp;<sup>[8]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.19.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2"><sup>[8]</sup><font size="1"> Oracle Database 12c is only support on Windows platforms.</font></font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>MySQL</u></strong><u>:</u></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;MySQL 5.1.x <font size="1">Standard / Enterprise</font></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;MySQL 5.5.x <font size="1">Standard / Enterprise</font>&nbsp;<sup>[9]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;MySQL 5.6.x <font size="1">Standard / Enterprise</font></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.15.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2"><sup>[9]</sup><font size="1"> MySQL 5.5.15 is supported by 6.7.0.0 or above.</font></font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>Lotus Domino / Notes</u></strong><u>:</u>&nbsp;<sup>[10]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Domino / Notes 8.0.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Domino / Notes 8.5.1</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Domino / Notes 8.5.3</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.9.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Domino / Notes 9.0.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.19.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2">&nbsp; </font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2"><sup>[10]</sup><font size="1"> Domino and Notes version 8.5.2 are not supported, and&nbsp;Notes is only support on Windows platforms.</font></font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>MS Virtualization Platforms</u></strong><u>:</u>&nbsp;<sup>[11]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Hyper-V Server 2008</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2020/01/14</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Hyper-V Server 2008 R2</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2019/01/08</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Hyper-V Server 2012</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.13.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2023/01/10</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Hyper-V Server 2012 R2</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.15.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2023/01/10</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Hyper-V Server 2008 Stand-alone Server</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.13.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Hyper-V Server 2012 Stand-alone Server</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.13.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Hyper-V Server 2008 R2 Stand-alone Server</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.15.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Hyper-V Server 2012 R2 Stand-alone Server</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.15.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2">&nbsp; </font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2"><sup>[11]</sup><font size="1"> Hyper-V Server 2008 and 2008 R2 Cluster is supported, but Hyper-V Server 2012 and 2012 R2 is not supported.</font></font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>VMware&nbsp;Virtualization Platforms</u></strong><u>:</u></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware Player 3.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.7.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware Player 4.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.9.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware Player 5.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.13.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware Player 6.x&nbsp;<sup>[12]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.19.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware Player 7.x&nbsp;<sup>[12]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.25.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware Workstation 6.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware Workstation 7.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.7.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware Workstation 8.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.7.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware Workstation 9.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.13.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware Workstation 10.x&nbsp;<sup>[12]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.17.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware Workstation 11.x&nbsp;<sup>[12]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.25.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware Fusion 3.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.7.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware Fusion 4.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.9.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware Fusion 5.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.13.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware Fusion 6.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.19.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware Fusion 7.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.19.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
						<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware Server 1.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.7.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware Server 2.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.7.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware ESX Server&nbsp;4.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware ESXi Server 4.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware ESXi Server 5.x&nbsp;<sup>[13]</sup></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2018/08/24</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware ESXi Server 6.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.27.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2020/03/12</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware vCenter Server 4.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.11.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware vCenter Server 5.0</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.11.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware vCenter Server 5.1</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.11.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;EOS reached</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware vCenter Server 5.5</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.17.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2018/09/19</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;VMware vCenter Server 6.x</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.27.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;2020/03/12</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2"><sup>[12]</sup><font size="1"> VMware Player 6.x and Workstation 10.x is only support on Windows platforms.</font></font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2"><sup>[13]</sup><font size="1"> VMware ESXi version 5.0 is supported by 6.7.0.0 or above, version 5.1 is supported by 6.11.0.0 and version 5.5 is supported by 6.17.0.0. or above.</font></font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>StorageCraft ShadowProtect</u></strong><u>:</u></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;ShadowProtect 3.5.1 <font size="1">Desktop / Server</font></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;ShadowProtect 4.1.0 <font size="1">Desktop / Server</font></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.5.2.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;ShadowProtect 4.2.5 <font size="1">Desktop / Server</font></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.9.4.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;ShadowProtect 5.0.1 <font size="1">Desktop / Server</font></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.13.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>System State Backup Module</u></strong><u>:</u></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;XP</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Server 2003</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Server 2008</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Server 2008 R2</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Server 2012</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.11.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Server 2012 R2</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.15.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Small Business Server 2003</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Small Business Server 2008</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Small Business Server 2011</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="3" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>MS Windows System Backup Module</u></strong><u>:</u></font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Vista</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;7</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;8</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.11.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;8.1</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.15.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;10</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.27.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Server 2008</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Server 2008 R2</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Server 2012</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.11.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Server 2012 R2</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.15.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Small Business Server 2008</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #97c0ff 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;Small Business Server 2011</font></td>
							<td style="BORDER-BOTTOM: #97c0ff 1px solid; BORDER-LEFT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;6.3.0.0 or above</font></td>
							<td style="BORDER-BOTTOM: #97c0ff 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2">&nbsp;-</font></td>
						</tr>
						</tbody>
						</table>
						<br><br><br>
						
						
						<a name="req"></a><u>System Requirements</u> for Backup Software <br><br>
						<table border="0" cellpadding="0" cellspacing="0" width="95%">
						<tbody>
						<tr>
							<td style="BORDER-RIGHT: #ffffff 1px solid" bgcolor="#335c9c" height="40">
							<p align="center"><font color="#ffffff" size="2"><bean:message key="jsp.install.guide.AhsayOBM"/> <img alt="" src="/obs/jsp/icon/obm.gif" border="0">&nbsp;/ <bean:message key="jsp.install.guide.AhsayACB"/> <img alt="" src="/obs/jsp/icon/acb.gif" border="0"></font></p>
							</td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>CPU</u></strong><u>:</u></font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2">&nbsp;N/A&nbsp;<sup>[15]</sup></font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2"><sup>[15]</sup></font><font size="1"> </font><font size="1">Multiple thread support is available for both backup and restore operation, resulting in increased processing power requirement and memory usage. It is recommended a client machine should be installed with multiple core processors with sufficient memory.</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="1"><br>Additional Note:<br>Max number of threads available for backup and restore operation&nbsp;is determined by the number of logical CPU on the client machine, calculated with the following formula:<br>Max # of Threads = # of&nbsp;CPU x 2 (up to a maximum of&nbsp;4 threads for backup and 8 threads for restore)</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>Memory</u></strong><u>:</u>&nbsp;<sup>[16]</sup></font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" height="45" valign="center"><font size="2">&nbsp;Minimum:&nbsp;512 MB<br>&nbsp;Recommended:&nbsp;1 GB or more</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid"  bgcolor="#fef6ed"><font size="2">&nbsp; </font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid"  bgcolor="#fef6ed"><font size="2"><sup>[16]</sup><font size="1"> 2GB RAM or more is recommended for better performance</font><font size="1">.</font></font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp;</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>Installation Space</u></strong><u>:</u></font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2"><font size="2">&nbsp;Minimum: 300 MB</font></font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp; </font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>Network Protocol</u></strong><u>:</u></font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" height="25" valign="center"><font size="2"><font size="2">&nbsp;TCP/IP</font></font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp; </font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-TOP: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" height="30"><font size="2"><strong>&nbsp;<u>Java Version</u></strong><u>:</u></font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #d7d3d2 1px solid; BORDER-LEFT: #97c0ff 1px solid;BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" height="45" valign="center"><font size="2">&nbsp;Minimum: Java 1.5u22&nbsp;<sup>[17]</sup><br>&nbsp;Recommended: Java 1.6u23 or above</font></td>
						</tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed"><font size="2">&nbsp; </font></td></tr>
						<tr>
							<td style="BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" bgcolor="#fef6ed" valign="center"><font size="2"><sup>[17]</sup></font><font size="1"> </font><font size="1">Performance and stability is dependent on the operating system platforms and / or hardware architecture.</font></td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM: #97c0ff 1px solid; BORDER-LEFT: #97c0ff 1px solid; BORDER-RIGHT: #97c0ff 1px solid" colspan="2" bgcolor="#fef6ed"><font size="2">&nbsp; </font></td>
						</tr>
						</tbody>
						</table>

						</div>
					</ol>
				</td>
			</tr>
			</tbody>
			</table>
		</td>
	</tr>
	</tbody>
	</table>
	
	<p align="right"><a href="javascript: window.print()"><bean:message key="jsp.install.guide.Print"/></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="javascript: window.top.close()"><bean:message key="jsp.install.guide.Close"/></a>&nbsp;</p> 
	<br>
	
	</div>

</body>
</html>
