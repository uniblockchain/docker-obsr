// name - name of the cookie 
// value - value of the cookie 
// [expires] - expiration date of the cookie 
// (defaults to end of current session) 
// [path] - path for which the cookie is valid 
// (defaults to path of calling document) 
// [domain] - domain for which the cookie is valid 
// (defaults to domain of calling document) 
// [secure] - Boolean value indicating if 
// the cookie transmission requires a secure transmission 
// * an argument defaults when it is assigned null as a placeholder 
// * a null placeholder is not required for trailing omitted arguments 

/*
 * Copyright (c) 2010 Ahsay Systems Corporation Limited. All Rights    
 * Reserved.
 *
 * Description: OBS common java script
 * 
 * Date        Task  Author           Changes
 * 2011-02-09  5548  Violet Chow      Added method openWindow to open a new window
 * 2011-03-25  5703  Kevin Wong       Changed to show the scroll bar
 *
 */

 
function setCookie(name, value, expires, path, domain, secure) { 
	var curCookie = name + "=" + escape(value) + 
			 ((expires) ? "; expires=" + expires.toGMTString() : "") + 
			 ((path) ? "; path=" + path : "") + 
			 ((domain) ? "; domain=" + domain : "") + 
			 ((secure) ? "; secure" : "") 
	if ((name + "=" + escape(value)).length <= 4000) document.cookie = curCookie 
	else if (confirm("Cookie exceeds 4KB and will be cut!")) 
		document.cookie = curCookie 
} 

function setCookie(name, value) {
	var expiration=new Date(2099,12,31);	
    document.cookie = name + "=" +escape(value) + ";expires=" + expiration.toGMTString();
}
  
// name - name of the cookie 
// * return string containing value 
// of specified cookie or null if cookie 
// does not exist 
function getCookie(name) { 
	var prefix = name + "=" 
	var cookieStartIndex = document.cookie.indexOf(prefix) 
	if(cookieStartIndex == -1) return null 
	var cookieEndIndex = document.cookie.indexOf(";", cookieStartIndex + prefix.length) 
	if(cookieEndIndex == -1) cookieEndIndex = document.cookie.length 
	return unescape(document.cookie.substring(cookieStartIndex + prefix.length, cookieEndIndex));
} 
 
function validateEmail(emailStr) { 
	var checkTLD=0; 
	var knownDomsPat=/ ^(com|net|org|edu|int|mil|gov|arpa|biz|aero|name|coop|info|pro|museum)$/; 
	var emailPat=/^(.+)@(.+)$/; 
	var specialChars="\\(\\)><@,;:\\\\\\\"\\.\\[\\]"; 
	var validChars="\[^\\s" + specialChars + "\]"; 
	var quotedUser="(\"[^\"]*\")"; 
	var ipDomainPat=/^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/; 
	var atom=validChars + '+'; 
	var word="(" + atom + "|" + quotedUser + ")"; 
	var userPat=new RegExp("^" + word + "(\\." + word + ")*$"); 
	var domainPat=new RegExp("^" + atom + "(\\." + atom +")*$"); 
	var matchArray=emailStr.match(emailPat); 
	if (matchArray==null) { 
		return false; 
	} 
	var user=matchArray[1]; 
	var domain=matchArray[2]; 
	for (i=0; i<user.length; i++) {
		if (user.charCodeAt(i)>127) return false; 
	} 
	for (i=0; i<domain.length; i++) { 
		if (domain.charCodeAt(i)>127) return false; 
	} 
	if (user.match(userPat)==null) return false; 
	var IPArray=domain.match(ipDomainPat); 
	if (IPArray!=null) { 
		for (var i=1;i<=4;i++) if (IPArray>255) return false; // The Destination IP Address Is Invalid 
		return true; 
	} 
	var atomPat=new RegExp("^" + atom + "$"); 
	var domArr=domain.split("."); 
	var len=domArr.length; 
	for (i=0;i<len;i++) { 
		if (domArr[i].search(atomPat)==-1) return false; 
	} 
 	if (checkTLD && domArr[domArr.length-1].length!=2 && domArr[domArr.length-1].search(knownDomsPat)==-1) { 
		return false; 
	} 
	if (len<2) return false; // The Address Is Missing A Hostname.
	return true; 
} 

 // 2010-06-22 Jason added to verify quota
 // Returns true if quota is a positive number, false otherwise
 function validateQuota(quota)
 {
	var regex = /^\d*\.?\d*$/;
	if(!quota.match(regex) || quota.value == "") {
		return false;
	}
	return true;
 }
 // 2010-06-22 End
  
// 4999 : 2010-12-07 Cliff Yeung added to check whether the date format is valid
function validateDateFormat(year, month, day) {
    var regexFor2Digit = /^\d{1,2}$/;
    var regexFor4Digit = /^\d{4}$/;
    if (!year.match(regexFor4Digit) || year == "" || !month.match(regexFor2Digit) || month == ""
            || !day.match(regexFor2Digit) || day == "") {
        return false;
    }
    return true;
}

// 4999 : 2010-12-07 Cliff Yeung added to check whether the date is valid
function validateDate(year, month, day) {
    var actualDay = 0;
    if (month == 4 || month == 6 || month == 9 || month == 11) {
        actualDay = 30;		
    } else if (month == 2) {
        // leap year
        if (year % 4 == 0 && ((!(year % 100 == 0)) || (year % 400 == 0))) {
            actualDay = 29;
        // non leap year			
        } else {
            actualDay = 28;
        }
    } else {
        actualDay = 31;
    }
    if (year == 0 || month == 0 || month > 12 || day == 0 || day > actualDay) {
        return false;
    } 
    return true;
}

// 2298 : 2011-01-11 Cliff Yeung added to check whether the year is leap year
function isLeapYear(year) {
    return (year % 4 == 0 && ((!(year % 100 == 0)) || (year % 400 == 0)));
}

// 2298 : 2011-01-11 Cliff Yeung added to get the number of days in month
function getDaysInMonth(year, month) {
    if (month == 4 || month == 6 || month == 9 || month == 11) {
        return 30;
    } else if (month == 2) {
        return (isLeapYear(year) ? 29 : 28);
    } else {
        return 31;
    }
}

function isIE() { 
	if (navigator.appName != "Microsoft Internet Explorer") return false; 
	return true; 
} 
  
function isBrowserSupported() { 
	if((navigator.appName.indexOf("Netscape")>-1)) //Netscape must greater than version 4 
	{ 
		browserVersion = navigator.appVersion; 
		End = browserVersion.indexOf("["); 
		End1 = navigator.userAgent.lastIndexOf("Netscape6"); 
		if(End > -1) 
			VersionNo = browserVersion.substring(0,End); 
		else if (End1 == -1) 
			VersionNo = browserVersion.substring(0,browserVersion.indexOf("(")); 
		else { 
			VersionNo = navigator.userAgent.substring(End1+10, navigator.userAgent.length); 
		} 
		if ((parseFloat(VersionNo) >= 4.07)) { 
			return true; 
 		} 
	} 
	if((navigator.appName.indexOf("Microsoft")>-1)) //IE must greater than verison 4 
	{ 
		browserName = navigator.appVersion; 
		VersionPos=browserName.lastIndexOf("MSIE") + 5; 
		VersionNo = browserName.substring(VersionPos,VersionPos+1); 
		if(parseFloat(VersionNo)>=4){ 
			return true; 
		} 
	} 
	return false; 
} 
  
function greaterThan(str1, str2) { 
	if(str1==null) return false; 
	if(str2==null) return false; 
	for(var i=0; i<str1.length && i<str2.length; i++) { 
		var chr1 = str1.charCodeAt(i); 
		var chr2 = str2.charCodeAt(i); 
		if(chr1>chr2) return true; 
		else if(chr1<chr2) return false; 
	} 
	return false; 
} 
  
function getJVM() { 
	var jvm = "default"; 
	if (navigator.appName == "Microsoft Internet Explorer") { 
		return jvm ; 
	} 
	return "plugin"; 
	if(navigator.plugins) { 
		var installedVersion="0"; 
		for (i=0; navigator.plugins && i<navigator.mimeTypes.length; i++) { 
			var type = navigator.mimeTypes[i].type; 
			if(type.indexOf("application/x-java-applet")>-1) { 
				var idx = type.indexOf("="); 
				var thisVersion = type.substring(idx+1); 
				if(greaterThan(thisVersion, installedVersion)) { 
					installedVersion=thisVersion; 
				} 
			} 
		} 
		if(installedVersion!="0") { 
			return "plugin"; 
		} 
	 } 
	return jvm; 
} 
  
  
function setSubmitToItself(form) { 
	// Submitting parameters to the same document 
	form.action=document.location.pathname; 
	form.target="_self"; 
	return true; 
} 
  
function updateWindow(html, width, height) 
{ 
	var path = location.href.substring(0, location.href.lastIndexOf("/")+1) + html; 
	var time = (new Date()).toGMTString(); 
	path = path + "?a=" + time; 
	updWin = window.open("", "update","toolbar=no,scrollbars=no,resizable=no,location=no," 
				 + "screenX=0,screenY=0,width=1,height=1"); 
	updWin.close(); 
	updWin = window.open(path, "update", "toolbar=no,scrollbars=yes,resizable=yes,location=no," 
				+ "screenX=0,screenY=0,width=" + width + ",height=" + height); 
} 
  
function newWindow(name, html, width, height) 
{ 
	var path = location.href.substring(0, location.href.lastIndexOf("/")+1) + html; 
	var time = (new Date()).toGMTString(); 
	newWin = window.open(path, name, "toolbar=no,status=no,scrollbars=yes,resizable=no,location=no," 
				+ "screenX=0,screenY=0,width=" + width + ",height=" + height); 
} 
  
function adminWindow(html) 
{ 	adminWin = window.open(html,"admin", 
			 "toolbar=no,status=yes,scrollbars=yes,resizable=no,location=no,screenX=0,screenY=0,width=650,height=450"); 
} 
  
function registerWindow(html) 
{ 	hlpWin = window.open(html,"help", 
			 "toolbar=no,status=no,scrollbars=yes,resizable=no,location=no,screenX=0,screenY=0,width=450,height=320"); 
} 
  
function openInstallWin(html) {
 guideWin = window.open(html,"install",
  "toolbar=no,status=no,scrollbars=yes,resizable=no,location=no,screenX=0,screenY=0,width=600,height=550");
}
  
function restoreWindow(html) 
{ 	hlpWin = window.open(html,"restore", 
			"toolbar=no,status=no,scrollbars=yes,resizable=no,location=no,screenX=0,screenY=0,width=500,height=380"); 
} 

function localeWindow(html) 
{ 
   window.open(html, "locale", "toolbar=no,status=no,scrollbars=yes,resizable=no,location=no,screenX=250,screenY=250,width=250,height=350"); 
} 

// 5703: Changed to show the scroll bar
// 5548: Added a method to open a resizable window
function openWindow(name, theURL, width, height) {
  // window.open(theURL, name,"width=" + width + ",height=" + height +",menubar=no,scrollbars=no,resizable=yes");
  window.open(theURL, name,"width=" + width + ",height=" + height +",menubar=no,scrollbars=yes,resizable=yes");
}

function blinkIt() {
	if (!document.all) return;
	else {
		for(i=0;i<document.all.tags('blink').length;i++){
			s=document.all.tags('blink')[i];
			s.style.visibility=(s.style.visibility=='visible')?'hidden':'visible';
		}
	}
}

function saveObsLastVisitedLink(link) {
	var vObsLastVisitedLink="obsLastVisitedLink";
	document.cookie = vObsLastVisitedLink + "=" + escape(link) + ";path=/";
}

function getObsLastVisitedLink() {
	var vObsLastVisitedLink="obsLastVisitedLink";
	return getCookie(obsLastVisitedLink);
}

function deleteObsLastVisitedLink() {
	var vObsLastVisitedLink="obsLastVisitedLink";
	document.cookie = vObsLastVisitedLink + "=;path=/";
}

function showHide(elementName, elementImg, elementKey){
	if(document.getElementById(elementName).style.display == 'block'){
		document.getElementById(elementName).style.display = 'none';
		if (elementKey != ''){
			document.getElementById(elementKey).style.display = 'none';
		}
		document.getElementById(elementImg).src="/obs/jsp/images/arrow_down.gif";
	}else{
		document.getElementById(elementName).style.display = 'block';
		if (elementKey != ''){
			document.getElementById(elementKey).style.display = 'block';
		}
		document.getElementById(elementImg).src="/obs/jsp/images/arrow_up.gif";
	}
}
		
String.prototype.endsWith = function(txt,ignoreCase)
{
  var rgx;

  if(ignoreCase)
  {
    rgx = new RegExp(txt+"$","i");
  }
  else
  {
    rgx = new RegExp(txt+"$");
  }

  return this.match(rgx)!=null; 
}