<?xml version="1.0" encoding="iso-8859-1"?><!-- DWXMLSource="Sports.xml" -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style>
table {
  border-collapse: collapse;
  width: 80%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #FFFFFF}

th {
  background-color: #6F1521;
  color: white;
}
h1 {
  font-family: Trattatello, fantasy;

}
.header {
  background-color: #6F1521;
  text-align: center;
  padding:inherit;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
<title>online national-level IT fest Gateways 2021</title>
</head>
<div class="header">
  <h1><font color="#FFFFFF" size="+4">online national-level IT fest Gateways 2021 </font></h1>
</div>
 <center><img src="slide2.jpg" /></center>
<body>
 <h2 align="center"><font><u><b>Gateways Event details</b></u></font></h2>
   <table align="center" border="1" bordercolor="#000099">
   <tr>
    <th >Event_Name</th>
    <th >participants</th>
    <th >Event_Heads</th>

   </tr>
    <xsl:for-each select="gateway/details">
   <tr>
    <td ><xsl:value-of select="Event_Name"/></td>
    <td ><xsl:value-of select="participants"/></td>
    <td ><xsl:value-of select="Event_Heads"/></td>

   </tr>
    </xsl:for-each>
    </table><br />
<center>

<h2>Gayeway Fest Will Conduct By:</h2>
<p id="state"></p>
<p id="location"></p>
<p id="date"></p>
<p id="start_time"></p>
<p id="contactus"></p>



<script>
var parser, xmlDoc;
var text = "<EventDetails><ed>" +
"<state>Karnataka,Banglore</state>" +
"<location>Christ University,Central Campus</location>" +
"<date> November 6,7 2021</date>" +
"<start_time>10.00AM[IST]</start_time>" +
"<contactus>nishchitha.ln@cs.christuniversity.in</contactus>" +
"</ed></EventDetails>";

if (window.DOMParser) {
  parser = new DOMParser();
  xmlDoc = parser.parseFromString(text,"text/xml");
} else {
  xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
  xmlDoc.async = false;
  xmlDoc.loadXML(text);
}

document.getElementById("state").innerHTML =
xmlDoc.getElementsByTagName("state")[0].childNodes[0].nodeValue;
document.getElementById("location").innerHTML =
xmlDoc.getElementsByTagName("location")[0].childNodes[0].nodeValue;
document.getElementById("date").innerHTML =
xmlDoc.getElementsByTagName("date")[0].childNodes[0].nodeValue;
document.getElementById("start_time").innerHTML =
xmlDoc.getElementsByTagName("start_time")[0].childNodes[0].nodeValue;
document.getElementById("contactus").innerHTML =
xmlDoc.getElementsByTagName("contactus")[0].childNodes[0].nodeValue;




</script>
</center>
</body>
</html>

</xsl:template>
</xsl:stylesheet>
