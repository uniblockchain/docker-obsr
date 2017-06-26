<%@ page language="java" %> 
<%@ page contentType="text/html; charset=utf-8" %> 
<%@ taglib uri="/WEB-INF/tlds/struts-bean.tld" prefix="bean" %> 
<%@ taglib uri="/WEB-INF/tlds/struts-html.tld" prefix="html" %> 
<%@ taglib uri="/WEB-INF/tlds/struts-logic.tld" prefix="logic" %> 
<%@ page import="com.ahsay.obs.www.Resource" %>   
<%@ page import="com.ahsay.obs.www.Constant" %>
<%@ page import="com.ahsay.obs.www.Util" %>
 
<%	
    response.addHeader("Pragma","No-cache"); 
    response.addHeader("Cache-Control","no-cache"); 
    response.addHeader("Expires","1"); 
    String sOS = request.getParameter("os");
    if(sOS==null || "".equals(sOS)) sOS = "windows.jsp";
    sOS = Util.getXssSafeString(sOS);
    String sLocale = request.getParameter("locale");
    if(sLocale!=null && !"".equals(sLocale)) {
        Resource.setLocale(request, response, sLocale); 	
    }
%>
  
<html> 
<head> 
    <title><bean:message key="GLOBAL.ProductName.UserTitle"/></title> 
</head> 

<frameset rows="70,*" frameborder="no" framespacing="0"> 
    <frame scrolling="no" src="/obs/jsp/user/wizard/install/osIndex.jsp" marginheight="0" name="os" noresize> 
    <frame scrolling="auto" src="/obs/jsp/user/wizard/install/<%= sOS %>" noresize > 
    <noframes>
        <p><bean:message key="jsp.user.index.jsp.MoreInfo"/></p>
    </noframes>
</frameset> 
</html> 
