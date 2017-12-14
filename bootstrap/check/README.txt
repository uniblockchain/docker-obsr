How to determine the number of AhsayOBM and AhsayACB licenses required to upgrade from AhsayOBS v6 to AhsayCBS v7 ?

For Windows:
1. Download http://s3.amazonaws.com/ahsay-dn/v7/check-v7-license-required.zip 
2. Expand it to AhsayOBS v6 installation directory %OBS_HOME%, e.g. C:\Program Files\AhsayOBS and AhsayRPS
3. cd %OBS_HOME%\check 
4. Run ShowV7Usage.bat
5. Open %OBS_HOME%\check\usage.xml with your browser
6. Refer to the number of ObmCountV6, AcbCountV6, ObmCountV7 and AcbCountV7 located at the bottom of the document

For Linux:
1. Download http://s3.amazonaws.com/ahsay-dn/v7/check-v7-license-required.zip 
2. Expand it to AhsayOBS v6 installation directory $OBS_HOME, e.g. /usr/local/obs
3. cd $OBS_HOME/check 
4. Run "sh ShowV7Usage.sh"
5. Open $OBS_HOME/check/usage.xml with your browser
6. Refer to the number of ObmCountV6, AcbCountV6, ObmCountV7 and AcbCountV7 located at the bottom of the document
