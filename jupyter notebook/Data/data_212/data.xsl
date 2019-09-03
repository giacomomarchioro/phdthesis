<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>Virtual SRM File</h2>
    <h3>Contents:</h3> 
    <table cellpadding="2" cellspacing="2" border="1" width="600">
    <tr>
      <td valign="Top"><a href="#part">Part Information</a>
      </td>
      <td valign="Top"><a href="#filter">Filter Information</a>
      </td>
    </tr>
    <tr>
      <td valign="Top"><a href="#process">Process Information</a>   
      </td>
      <td valign="Top"><a href="#primary">Primary Profile</a> 
      </td>
    </tr>
    <tr>
      <td valign="Top"><a href="#measurement">Measurement Conditions</a>
      </td>
      <td valign="Top"><a href="#roughness">Roughness</a>
      </td>
    </tr>
    <tr>
      <td valign="Top"><a href="#datafile">Data File Information</a>
      </td>
      <td valign="Top"><a href="#waviness">Waviness</a>
      </td>
    </tr>
    <tr>
      <td valign="Top"> <a href="#LSQ">Least Square Removal Information</a>
      </td>
      <td valign="Top"><a href="#PSD">PSD</a>
      </td>
    </tr>
    <tr>
      <td valign="Top"><a href="#totalprofile">Total Profile</a>
      </td>
      <td valign="Top"><a href="#ACC">Auto-Correlation</a>
      </td>
    </tr>
</table>
<p></p>
<p></p>
<p></p> 
    <a name="part"></a><table border="0" bgcolor="#9acd32" width="100%"><b>Part Information</b></table>
    <table border="0" spacing="2">
	<tr><td>Part Name:</td><td><xsl:value-of select="DATA/PART/PART_NAME" /></td></tr>
	<tr><td>Date:</td><td><xsl:value-of select="DATA/PART/PART_DATE" /></td></tr>
	<tr><td>Part Manufacturer:</td><td><xsl:value-of select="DATA/PART/PART_MANUFACTURER" /></td></tr>
   	<tr><td>Description:</td><td><xsl:value-of select="DATA/PART/PART_DESCRIPTION" /></td></tr>
	<tr><td>Additional Information:</td><td><xsl:value-of select="DATA/PART/PART_ADDITIONAL_INFO" /></td></tr>  
   </table>
    <a name="process"></a><table border="0" bgcolor="#9acd32" width="100%"><b>Process Information</b></table>
    <table border="0" spacing="2">
	<tr><td>Process Name:</td><td><xsl:value-of select="DATA/PROCESS/PROCESS_NAME" /></td></tr>
	<tr><td>Description:</td><td><xsl:value-of select="DATA/PROCESS/PROCESS_DESCRIPTION" /></td></tr>
	<tr><td>Date:</td><td><xsl:value-of select="DATA/PROCESS/PROCESS_DATE" /></td></tr>
  	<tr><td>Temperature:</td><td><xsl:value-of select="DATA/PROCESS/PROCESS_TEMPERATURE" /></td></tr>
	<tr><td>Depth of Cut:</td><td><xsl:value-of select="DATA/PROCESS/PROCESS_DEPTH_CUT" /></td></tr> 
  	<tr><td>Tool Speed:</td><td><xsl:value-of select="DATA/PROCESS/PROCESS_TOOL_SPEED" /></td></tr> 
    <tr><td>Tool Life:</td><td><xsl:value-of select="DATA/PROCESS/PROCESS_TOOL_LIFE" /></td></tr> 
    <tr><td>Additional Information:</td><td><xsl:value-of select="DATA/PROCESS/PROCESS_ADDITIONAL_INFO" /></td></tr>   
    </table>
    <a name="measurement"></a><table border="0" bgcolor="#9acd32" width="100%"><b>Measurement Conditions</b></table>
    <table border="0" spacing="2">
	<tr><td>Instrument Type:</td><td><xsl:value-of select="DATA/MEASUREMENT/MEASUREMENT_INSTRUMENT_TYPE" /></td></tr>
	<tr><td>Measurement Temperature:</td><td><xsl:value-of select="DATA/MEASUREMENT/MEASUREMENT_TEMPERATURE" /></td></tr>
	<tr><td>Tip Radius:</td><td><xsl:value-of select="DATA/MEASUREMENT/MEASUREMENT_TIP_RADIUS" /></td></tr>
   	<tr><td>Tip Force:</td><td><xsl:value-of select="DATA/MEASUREMENT/MEASUREMENT_TIP_FORCE" /></td></tr>
	<tr><td>Tip Angle:</td><td><xsl:value-of select="DATA/MEASUREMENT/MEASUREMENT_TIP_ANGLE" /></td></tr> 
  	<tr><td>Vertical Digitization:</td><td><xsl:value-of select="DATA/MEASUREMENT/MEASUREMENT_VERTICAL_DIGITIZATION" /></td></tr> 
    <tr><td>Horizontal Digitization:</td><td><xsl:value-of select="DATA/MEASUREMENT/MEASUREMENT_HORIZONTAL_DIGITIZATION" /></td></tr> 
    <tr><td>Drive Speed:</td><td><xsl:value-of select="DATA/MEASUREMENT/MEASUREMENT_DRIVE_SPEED" /></td></tr> 
  	<tr><td>Probe Range:</td><td><xsl:value-of select="DATA/MEASUREMENT/MEASUREMENT_PROBE_RANGE" /></td></tr> 
    <tr><td>Offset (mm):</td><td><xsl:value-of select="DATA/MEASUREMENT/MEASUREMENT_OFFSET_mm" /></td></tr> 
    <tr><td>Last Calibration:</td><td><xsl:value-of select="DATA/MEASUREMENT/MEASUREMENT_LAST_CALIBRATION" /></td></tr> 
    <tr><td>Date:</td><td><xsl:value-of select="DATA/MEASUREMENT/MEASUREMENT_DATE" /></td></tr> 
    <tr><td>Additional Information:</td><td><xsl:value-of select="DATA/MEASUREMENT/MEASUREMENT_ADDITIONAL_INFO" /></td></tr> 
    </table>
    <a name="datafile"></a><table border="0" bgcolor="#9acd32" width="100%"><b>Data File Information</b></table>
    <table border="0" spacing="2">
	<tr><td>File Name:</td><td><xsl:value-of select="DATA/DATAFILE/FILENAME" /></td></tr>
	<tr><td>Units:</td><td><xsl:value-of select="DATA/DATAFILE/UNIT" /></td></tr>
	<tr><td>Number of Data Points:</td><td><xsl:value-of select="DATA/DATAFILE/NUMPOINTS" /></td></tr>
   	<tr><td>Spacing:</td><td><xsl:value-of select="DATA/DATAFILE/SPACING" /><xsl:value-of select="DATA/DATAFILE/UNIT" /></td></tr>
   	<tr><td>Kcal:</td><td><xsl:value-of select="DATA/DATAFILE/KCAL" /></td></tr>
	<tr><td>Data Type:</td><td><xsl:value-of select="DATA/DATAFILE/DATA_TYPE" /></td></tr> 
	<tr><td>Position Number:</td><td><xsl:value-of select="DATA/DATAFILE/POSITION_NO" /></td></tr> 
	<tr><td>Trace Number:</td><td><xsl:value-of select="DATA/DATAFILE/TRACE_NO" /></td></tr> 
    <tr>Data Point Values</tr>   
   </table>
     <table border="1" width="600">
     <xsl:value-of select="DATA/DATAFILE/DATA_POINT_VALUES" />
     </table>
     <table border="0" bgcolor="#9acd32" width="100%"><b>Analysis Data Information</b></table>
     <a name="LSQ"></a><table border="0" bgcolor="#ff9900" width="100%"><b>Least Square Removal Information</b></table>
     <table><b>Least Square Coefficients</b></table>
     <table border="1" width="1">
     <xsl:value-of select="DATA/ANALYSIS/CURVATURE_REMOVAL/LSQ_COEFF" />
     </table>
      <a name="totalprofile"></a><table border="0" bgcolor="#cc9933" width="100%"><b>Total Profile</b></table>
     <table><b>Total Profile Parameters</b></table>
     <table border="1" width="600">
        <tr><td>Pa=<xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/PA" /><xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/UNITS" /></td></tr>
        <tr><td>Pq=<xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/PQ" /><xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/UNITS" /></td></tr>
        <tr><td>Psk=<xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/PSK" /></td></tr>
        <tr><td>Pku=<xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/PKU" /></td></tr>
        <tr><td>Pz=<xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/PZ" /><xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/UNITS" /></td></tr>
        <tr><td>PDq=<xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/PDq" />um/um</td></tr>
        <tr><td>PSm=<xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/PSm" /><xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/UNITS" /></td></tr>
        <tr><td>Pc=<xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/Pc" /><xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/UNITS" /></td></tr>
        <tr><td>Pt=<xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/Pt" /><xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/UNITS" /></td></tr>
        <tr><td>Pp=<xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/Pp" /><xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/UNITS" /></td></tr>
       <tr><td>Pv=<xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/Pv" /><xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/UNITS" /></td></tr>
        <tr><td>Note: Sm is calculated based on <xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/SM_SETTING" /> for the height and spacing discrimination</td></tr>
        <tr><td>Note: Pc is calculated based on <xsl:value-of select="DATA/ANALYSIS/FILTER/RAW_PROFILE/RAW_PROFILE_SURFACE_PARAMETERS/PC_SETTING" /> for the height and spacing discrimination</td></tr>
     </table>
            <table border="0" bgcolor="#ff9900" width="100%"><b>Statistical Analysis Data Information</b></table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
