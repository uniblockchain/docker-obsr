<%@ page contentType="text/html; charset=utf-8"%>
<link rel="stylesheet" href="../lib/rps_en_1.css" media="screen" type="text/css">
<script language="javascript" type="text/javascript" src="../lib/common.js"></script>

<body leftmargin="5" topmargin="5" marginwidth="5" marginheight="5" style="background-color: rgb(255, 255, 255);">


<table border="0" cellpadding="0" cellspacing="0" height="100%" width="300">
  <tbody>
    <tr height="99%">
      <td valign="top">

       <table cellpadding="0" cellspacing="0" height="10" width="100%">
        <tbody>
          <tr>
            <td><img border="0" src="../images/stub.gif" width="10" height="7"><br><img border="0" src="../images/rps_header.gif" ><br><img border="0" src="../images/stub.gif" width="10" height="15"></td>
          </tr>
        </tbody>
       </table>

	  
        <!--  Switch to OBS  -->
        <jsp:include page="obs.jsp" flush="true" />
      
        <table cellpadding="0" cellspacing="0" height="10" width="100%">
          <tbody>
            <tr>
              <td></td>
            </tr>
          </tbody>
        </table>
        
        <!--  Introduction  -->        <table cellpadding="0" cellspacing="0" width="100%">
          <tbody>
            <tr>
              <td rowspan="2" class="lNavigation" width="100%">
                <table bgcolor="#1b5445" border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody>
                    <tr>
                      <td class="Title" width="200"><img src="../images/ico_info.gif" align="absmiddle"> <a href="nav_intro.jsp" class="TitleLink">Introduction</a></td>
                      <td width="18">
                        <div style="padding-left: 2px;"><a href="nav_intro.jsp"><img src="../images/arrow_down.gif" alt="more" border="0" height="12" width="12"></a></div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
          </tbody>
        </table>

        <table cellpadding="0" cellspacing="0" height="10" width="100%">
          <tbody>
            <tr>
              <td></td>
            </tr>
          </tbody>
        </table>

        <!--  Getting Started with OBM  -->
        <table cellpadding="0" cellspacing="0" width="100%">
          <tbody>
            <tr>
              <td rowspan="2" class="lNavigation" width="100%">
                <table bgcolor="#1b5445" border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody>
                    <tr>
                      <td class="Title" width="200"><strong><img src="../images/ico_RPS.gif" alt="RPS" align="absmiddle"></strong> <a href="nav_a1.jsp" class="TitleLink">Getting Started with <script language="JavaScript">document.write(RPSName_Short);</script></a></td>
                      <td width="18">
                        <div style="padding-left: 2px;"><a href="nav_a1.jsp"><img src="../images/arrow_down.gif" alt="more" border="0" height="12" width="12"></a></div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
          </tbody>
        </table>

        <table cellpadding="0" cellspacing="0" height="10" width="100%">
          <tbody>
            <tr>
              <td></td>
            </tr>
          </tbody>
        </table>

        <!--  Getting Started with ACB  -->

        <!--  Key Features  -->
        <table cellpadding="0" cellspacing="0" width="100%">
          <tbody>
            <tr>
              <td rowspan="2" class="lNavigation" width="100%">
                <table bgcolor="#1b5445" border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody>
                    <tr>
                      <td class="Title" width="200"><img src="../images/ico_feature.gif" align="absmiddle"> <a href="nav_key.jsp" class="TitleLink">Key Features</a></td>
                      <td width="18">
                        <div style="padding-left: 2px;"><a href="nav_key.jsp"><img src="../images/arrow_down.gif" alt="more" border="0" height="12" width="12"></a></div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
          </tbody>
        </table>

        <table cellpadding="0" cellspacing="0" height="10" width="100%">
          <tbody>
            <tr>
              <td></td>
            </tr>
          </tbody>
        </table>

        <!--  Documentation  -->
        <table cellpadding="0" cellspacing="0" width="100%">
          <tbody>
            <tr>
              <td rowspan="2" class="lNavigation" width="100%">
                <table bgcolor="#1b5445" border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody>
                    <tr>
                      <td class="Title" width="200"><img src="../images/ico_doc.gif" align="absmiddle"> <a href="nav_doc.jsp" class="TitleLink">Documentation</a></td>
                      <td width="18">
                        <div style="padding-left: 2px;"><a href="nav_doc.jsp"><img src="../images/arrow_down.gif" alt="more" border="0" height="12" width="12"></a></div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
          </tbody>
        </table>

        <table cellpadding="0" cellspacing="0" height="10" width="100%">
          <tbody>
            <tr>
              <td></td>
            </tr>
          </tbody>
        </table>

        <!--  System Management  -->
        <table cellpadding="0" cellspacing="0" width="100%">
          <tbody>
            <tr>
              <td rowspan="2" class="lNavigation" width="100%">
                <table bgcolor="#1b5445" border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody>
                    <tr>
                      <td class="Title"><img src="../images/ico_system.gif" align="absmiddle"> System Management</td>
                    </tr>
                  </tbody>
                </table>

                <div style="padding: 5px;">
                  <div class="step On">  <script language="JavaScript">document.write(RPSName_Short);</script> Management Console</div>
                  <div class="notes">
                    <ul>
                      <li>This is the web interface for system administrators to manage <script language="JavaScript">document.write(RPSName_Short);</script>   
                        . Please choose the language of your choice to start with:</li>  
                    </ul>
                    <div style="padding-top: 5px;">
                      <form name="form" style="padding-top: 3px;">
                        <table border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td>&nbsp;&nbsp;&nbsp;</td>
                            <td><select name="menu" size="1">
                              <option value="bg">Bulgarian</option>
                              <option value="ca">Catalan</option>
                              <option value="cs">Czech</option>
                              <option value="da">Danish</option>
                              <option value="de">German</option>
      
                              <option value="el">Greek Modern</option>
                              <option selected="selected" value="en">English</option>
                              <option value="es">Spanish</option>
                              <option value="eu">Basque</option>
                              <option value="fi">Finnish</option>
                              <option value="fr">French</option>
                              <option value="iw">Hebrew</option>
                              <option value="hu">Hungarian</option>
                              <option value="is">Icelandic</option>
                              <option value="it">Italian</option>
                              <option value="ja">Japanese</option>
                              <option value="ko">Korean</option>
                              <option value="lt">Lithuanian</option>
                              <option value="nl">Dutch</option>
                              <option value="no">Norwegian</option>
                              <option value="pl">Polish</option>
                              <option value="pt_BR">Portuguese (Brazil)</option>
                              <option value="pt_PT">Portuguese (Portugal)</option>
                              <option value="ro">Romanian</option>
                              <option value="ru">Russian</option>
                              <option value="sl">Slovenian</option>
                              <option value="sv">Swedish</option>
                              <option value="th_TH">Thai (Western digits)</option>
                              <option value="tr">Turkish</option>
                              <option value="uk">Ukrainian</option>
                              <option value="zh_CN">Chinese (Simplified)</option>
                              <option value="zh_TW">Chinese (Traditional)</option>		
                            </select>
                            <input name="BUTTON" style="height: 19px; font-size: 11px;" onClick="leaptoRPS(this.form)" value="Go" type="button">
                            </td>
                          </tr>
                        </table>
                      </form>
                    </div>
                  </div>
                </div>
              </td>
            </tr>
          </tbody>
        </table>

        <!--  Contact Us  -->
        <table cellpadding="0" cellspacing="0" width="100%">
          <tbody>
            <tr>
              <td rowspan="2" class="lNavigation" width="100%">
                <table bgcolor="#1b5445" border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody>
                    <tr>
                      <td class="Title" width="200"><img src="../images/ico_contactus.gif" align="absmiddle"> <a href="nav_contact.jsp" class="TitleLink">Contact us</a></td> 
                      <td width="18">
                        <div style="padding-left: 2px;"><a href="nav_contact.jsp"><img src="../images/arrow_down.gif" alt="more" border="0" height="12" width="12"></a></div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
          </tbody>
        </table>
        <br>
      </td>
    </tr>
    <tr height="1%">
      <td>
	  <script language="JavaScript">document.write(RenameProcedureRPS);</script>
      </td>
    </tr>
  </tbody>
</table>

</body>

</html>
