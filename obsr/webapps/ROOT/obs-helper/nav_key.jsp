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
                <table bgcolor="#095798" border="0" cellpadding="0" cellspacing="0" width="100%">
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
                      <td class="Title" width="100%"><img src="../images/ico_feature.gif" align="absmiddle"> Key Features</td>
                    </tr>
                  </tbody>
                </table>

                <% boolean IS_NETWARE_DESUPPORTED = true; %>
                <div style="padding: 5px;">
                  <div class="notes">
                    <ul>
                      <li>Support Microsoft Exchange Server, Microsoft Exchange Server(DAG), Exchange mail level,  Microsoft SQL Server, Oracle, Lotus Domino/Notes, MySQL, Windows System backup, Windows System State backup, Hyper-V and VMware ESX, ESXi (both paid and free versions), Server, Workstation, Fusion, Player.&nbsp;<sup><small>1</small></sup></li>
                      <% if (IS_NETWARE_DESUPPORTED) { %>
                          <li>Run on Windows, Linux, Mac OS X and Unix.&nbsp;<sup><small>2</small></sup></li>
                      <% } else { %>
                          <li>Run on Windows, Linux, Mac OS X, NetWare and Unix.&nbsp;<sup><small>2</small></sup></li>
                      <% } %>
                      <li>Backing up changes within a file (In-file delta).</li>
                      <li>Support backup of "opened files".&nbsp;<sup><small>3</small></sup></li>
                      <li>Real-time offsite data replication.</li>
                      <li>Protect all desktops and notebooks easily.</li>
                      <li>Restoring files anytime, anywhere.</li>
                      <li>Support 30+ different languages.</li>
                    </ul>
                    <br>
                    <small><sup>1</sup>&nbsp;&nbsp;Supported by <script language="JavaScript">document.write(OBMName_Short);</script> only.</small>
                    <br>
                    <small><sup>2</sup>&nbsp;&nbsp;<script language="JavaScript">document.write(ACBName_Short);</script> runs on Windows (XP/2003/Vista/7/8/2008/2012) and Mac OS X only.</small>                    
                    <br>
                    <small><sup>3</sup>&nbsp;&nbsp;Supported by Windows (XP/2003/Vista/7/8/2008/2012) only.</small>
                  </div>
                </div>
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
      </td>
    </tr>
  </tbody>
</table>

</body>

</html>