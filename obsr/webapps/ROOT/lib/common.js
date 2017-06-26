var RenameProcedure = '<table cellpadding=3 cellspacing=1 width=100% bgcolor=#cccccc><tr><td bgcolor=#ffffff><div class=notes>Edit [INSTALL_FOLDER] \\ webapps \\ ROOT \\ lib \\ common.js to customize your company logo and the names of softwares. After that, you can delete the content of \"RenameProcedure\" to remove this line.</div></tr></td></table><br>';

var RenameProcedureRPS = '<table cellpadding=3 cellspacing=1 width=100% bgcolor=#cccccc><tr><td bgcolor=#ffffff><div class=notes>Edit [INSTALL_FOLDER] \\ webapps \\ ROOT \\ lib \\ common.js to customize your company logo and the names of softwares. After that, you can delete the content of \"RenameProcedureRPS\" to remove this line.</div></tr></td></table><br>';

var CompanyLogo = '<img src=image/Logo_default.gif border=0><br>';
var SoftwareSuite = 'Ahsay Online Backup Suite';
var OBSName_Short = 'AhsayOBS';
var OBSName_Long = 'Ahsay&#8482; Offsite Backup Server';
var OBMName_Short = 'AhsayOBM';
var OBMName_Long = 'Ahsay&#8482; Online Backup Manager';
var ACBName_Short = 'AhsayACB';
var ACBName_Long = 'Ahsay&#8482; A-Click Backup';
var RPSName_Short = 'AhsayRPS';
var RPSName_Long = 'Ahsay&#8482; Replication Server';

function openWindow(theURL) {
  window.open(theURL, "download","width=800,height=600,menubar=no,scrollbars=no");
}

function leapto(form) {
  var myindex=form.menu.selectedIndex;
//alert(form.menu.value);
//form.menu.value
  top.obs.location.href="/obs/jsp/system/index.jsp?locale=" + form.menu.value;
  myindex = 0; // reset pulldown menu
}

function leaptouser(form) {
  var myindex=form.menu.selectedIndex;
//alert(form.menu.value);
//form.menu.value
  top.obs.location.href="/obs/jsp/user/index.jsp?locale=" + form.menu.value;
  myindex = 0; // reset pulldown menu
}

function leaptoRPS(form) {
  var myindex=form.menu.selectedIndex;
//alert(form.menu.value);
//form.menu.value
  top.obs.location.href="/rps/system/logon.do?locale=" + form.menu.value;
  myindex = 0; // reset pulldown menu
}

function toggleMenu(btn) {
  menuwidth = parent.document.getElementById('maincontainer');

  if (menuwidth.cols == "310,12,*"){
		menuwidth.cols = '0,12,*';
		btn.value = "";
		btn.id="toggleMenuBtnRight";
                btn.title="Expand";
	 }
  else{
		menuwidth.cols = '310,12,*';
		btn.value = "";
		btn.id="toggleMenuBtnLeft";
                btn.title="Hide";
	 }
}

/*  Backup
function toggleMenu(btn) {
  menuwidth = parent.document.getElementById('maincontainer');

  if (menuwidth.cols == "330,*"){
		menuwidth.cols = '12,*';
		btn.value = "";
		btn.id="toggleMenuBtnRight";
                btn.title="Expand";
	 }
  else{
		menuwidth.cols = '330,*';
		btn.value = "";
		btn.id="toggleMenuBtnLeft";
                btn.title="Hide";
	 }
}
*/

