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
        
        <!--  Introduction  -->
        <table cellpadding="0" cellspacing="0" width="100%">
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
              <div class="Title"><img src="../images/ico_OBM.gif" align="absmiddle"> Getting Started with <script language="JavaScript">document.write(RPSName_Short);</script></div>
		      </td>
            </tr>
          </tbody>
        </table>

        <table border="0" cellpadding="5" cellspacing="0" width="100%">
          <tbody>
            <tr>            
              <td rowspan="2" class="lNavigation" bordercolor="#F9F9F9" valign="top" width="100%">
                
								
                <div style="padding-bottom: 5px;"><img src="../images/spacer.gif" height="1"></div>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody>
                    <tr>
                      <td class="step" bgcolor="#92e1cf" valign="top" width="1%">
                        <div style="width: 40px;">Step 1.</div>
                      </td>
                      <td class="step" bgcolor="#92e1cf" width="99%"> <a href="nav_a1.jsp" class="stepLink">Setup <script language="JavaScript">document.write(RPSName_Short);</script></a></td>
                    </tr>
                  </tbody>
                </table>

                <div style="padding-bottom: 5px;"><img src="../images/spacer.gif" height="1"></div>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody>
                    <tr>
                      <td class="step On" bgcolor="#92e1cf" valign="top" width="1%">
                        <div style="width: 40px;">Step 2.</div>
                      </td>
                      <td class="step On" bgcolor="#92e1cf" width="99%">Setup <script language="JavaScript">document.write(OBSName_Short);</script></td> 
                    </tr>
                  </tbody>
                </table>

                <div class="notes">
                <ol style="list-style-type: lower-roman;">
                  <li style="padding-bottom: 5px;">Go to the [<script language="JavaScript">document.write(OBSName_Short);</script> Administration Console] page and logon with the following information:<br>e.g.<br>Go to http://10.0.0.1/obs/system/logon.do?locale=en<br> &nbsp;- Login Name: <span style="font-weight: bold;" class="style1">system </span>(default)<br> &nbsp;- Password: <span style="font-weight: bold;" class="style1">system</span> (default)</li>
                  <li style="padding-bottom: 5px;"> Configure the replication receiver for <script language="JavaScript">document.write(OBSName_Short);</script> [Manage System] -&gt; [Replication Config].</li>
	        </ol>
		                
                </div>
                               
                <div style="padding-bottom: 5px;"><img src="../images/spacer.gif" height="1"></div>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody>
                    <tr>
                      <td class="step" bgcolor="#92e1cf" valign="top" width="1%">
                        <div style="width: 40px;">Step 3.</div>
                      </td>
                      <td class="step" bgcolor="#92e1cf" width="99%"><a href="nav_a3.jsp" class="stepLink">Verify  
                        setup</a></td>
                    </tr>
                  </tbody>
                </table>

                <div style="padding-bottom: 5px;"><img src="../images/spacer.gif" height="1"></div>
                
              </td>
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
	  <script language="JavaScript">document.write(RenameProcedure);</script> 
      </td>    </tr>
  </tbody>
</table>
</body>
</html>
