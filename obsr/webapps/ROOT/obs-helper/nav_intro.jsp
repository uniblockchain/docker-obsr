<%@ page contentType="text/html; charset=utf-8"%>
<link rel="stylesheet" href="../lib/obs_en_1.css" media="screen" type="text/css">
<script language="javascript" type="text/javascript" src="../lib/common.js"></script>

<body leftmargin="5" topmargin="5" marginwidth="5" marginheight="5" style="background-color: rgb(255, 255, 255);">


<table border="0" cellpadding="0" cellspacing="0" height="100%" width="300">
  <tbody>
    <tr height="99%">
      <td valign="top">

       <table cellpadding="0" cellspacing="0" height="10" width="100%">
        <tbody>
          <tr>
            <td><img border="0" src="../images/stub.gif" width="10" height="7"><br><img border="0" src="../images/obs_header.gif" ><br><img border="0" src="../images/stub.gif" width="10" height="15"></td>
          </tr>
        </tbody>
       </table>


        <!--  Switch to RPS  -->
        <jsp:include page="rps.jsp" flush="true" />
      
        <table cellpadding="0" cellspacing="0" height="10" width="100%">
          <tbody>
            <tr>
              <td></td>
            </tr>
          </tbody>
        </table>
        
        <!--  Introduction  -->
        <table cellpadding="0" cellspacing="0" width="100%">
          <tbody>
            <tr>
              <td rowspan="2" class="lNavigation" width="100%">
              <div class="Title"><img src="../images/ico_info.gif" align="absmiddle"> Introduction</div>
              </td>
            </tr>
          </tbody>
        </table>

        <table border="0" cellpadding="5" cellspacing="0" width="100%">
          <tbody>
            <tr>
              <td rowspan="2" class="lNavigation" bordercolor="#F9F9F9" valign="top" width="100%">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody>
                    <tr>
                      <td class="step On" bgcolor="#f9f9f9" width="99%">Understanding   <script language="JavaScript">document.write(SoftwareSuite);</script> </td>
                    </tr>
                  </tbody>
                </table>

                <div class="notes">
                  <p><strong><img src="../images/ico_OBS.gif" alt="OBS" align="absmiddle"><script language="JavaScript">document.write(OBSName_Long + " (" + OBSName_Short +")");</script></strong> is a server application which offers online backup services to its users.</p>
                  <p style="padding-top: 5px;"><strong><img src="../images/ico_OBM.gif" alt="OBM" align="absmiddle"><script language="JavaScript">document.write(OBMName_Long + " (" + OBMName_Short +")");</script></strong> is a full-featured client application used to backup data to the 
	<script language="JavaScript">document.write(OBSName_Short);</script>.</p>
                  <p style="padding-top: 5px;"><strong><img src="../images/ico_ACB.gif" alt="ACB" align="absmiddle"><script language="JavaScript">document.write(ACBName_Long + " (" + ACBName_Short +")");</script></strong> is a lite client application for easy backup / recovery of files to / from the <script language="JavaScript">document.write(OBSName_Short);</script>.</p>
				  <p style="padding-top: 5px;"><strong><img src="../images/ico_RPS.gif" alt="RPS" align="absmiddle"><script language="JavaScript">document.write(RPSName_Long + " (" + RPSName_Short +")");</script></strong> provides an offsite store for backed up data from multiple <script language="JavaScript">document.write(OBSName_Short);</script>s.</p>
                </div>
                <div style="padding-bottom: 5px;"><img src="../images/spacer.gif" height="1"><!-- </div> --></div>
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
                <table bgcolor="#095798" border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody>
                    <tr>
                      <td class="Title" width="200"><img src="../images/ico_startOBM.gif" align="absmiddle"> <a href="nav_a1.jsp" class="TitleLink">Getting Started with <script language="JavaScript">document.write(OBMName_Short);</script></a></td>
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
        <table cellpadding="0" cellspacing="0" width="100%">
          <tbody>
            <tr>
              <td rowspan="2" class="lNavigation" width="100%">
                <table bgcolor="#095798" border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody>
                    <tr>
                      <td class="Title" width="200"><img src="../images/ico_startACB.gif" align="absmiddle"> <a href="nav_b1.jsp" class="TitleLink">Getting Started with <script language="JavaScript">document.write(ACBName_Short);</script></a></td>
                      <td width="18">
                        <div style="padding-left: 2px;"><a href="nav_b1.jsp"><img src="../images/arrow_down.gif" alt="more" border="0" height="12" width="12"></a></div>
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

        <!--  Key Features  -->
        <table cellpadding="0" cellspacing="0" width="100%">
          <tbody>
            <tr>
              <td rowspan="2" class="lNavigation" width="100%">
                <table bgcolor="#095798" border="0" cellpadding="0" cellspacing="0" width="100%">
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
                <table bgcolor="#095798" border="0" cellpadding="0" cellspacing="0" width="100%">
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
                <table bgcolor="#095798" border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody>
                    <tr>
                      <td class="Title" width="200"><img src="../images/ico_system.gif" align="absmiddle"> <a href="nav_sm1.jsp" class="TitleLink">System Management</a> </td>
                      <td width="18">
                        <div style="padding-left: 2px;"><a href="nav_sm1.jsp"><img src="../images/arrow_down.gif" alt="more" border="0" height="12" width="12"></a></div>
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

        <!--  Contact Us  -->
        <table cellpadding="0" cellspacing="0" width="100%">
          <tbody>
            <tr>
              <td rowspan="2" class="lNavigation" width="100%">
                <table bgcolor="#095798" border="0" cellpadding="0" cellspacing="0" width="100%">
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
	  <script language="JavaScript">document.write(RenameProcedure);</script>
	  <!--
      <script language="JavaScript">document.write(CompanyLogo);</script>	
      -->  
      </td>
    </tr>
  </tbody>
</table>

</body>

</html>
