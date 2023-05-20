<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="books">

<html lang="en">
<head>
    <link rel="stylesheet" href="new.css"/>
    <title> Books </title>
</head>
<body>
    
<h1>  Welcome To Programming courses </h1>
<table border="2px" bgcolor="grey" color="beige" id="tab">

<tr>

<th> Title</th>
<th> Author </th>
<th> Publisher </th>
 <th> Edition </th>  
<th> Price </th> 

</tr>

<xsl:for-each select=" book ">

<xsl:choose>

<xsl:when test="price > 100">

<tr>

<td>
<xsl:value-of select="title"/>
</td>

<td>
<xsl:value-of select="author"/>
</td>

<td>
<xsl:value-of select="publisher"/>
</td>

<td>
<xsl:value-of select="edition"/>
</td>

<td>
<xsl:value-of select="price"/>
</td>

</tr>

</xsl:when>

<xsl:otherwise>

<tr>

<td>
<xsl:value-of select="title"/>
</td>

<td>
<xsl:value-of select="author"/>
</td>

<td>
<xsl:value-of select="publisher"/>
</td>

<td>
<xsl:value-of select="edition"/>
</td>

<td>
<xsl:value-of select="price"/>
</td>

</tr>

</xsl:otherwise>

</xsl:choose>

</xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>