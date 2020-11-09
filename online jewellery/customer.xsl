<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>ONLINE JEWELLERY SHOPPING</h2>
    <table border="1">
      <tr bgcolor="#c3cd32">
        <th>name</th>
        <th>age</th>
        <th>category</th>
        <th>phone</th>
        <th>location</th>

      </tr>
      <xsl:for-each select="onlinejewellery/customer">
      <xsl:sort select="category"/>
      <tr>
        <td><xsl:value-of select="category"/></td>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="age"/></td>
        <td><xsl:value-of select="phone"/></td>
        <td><xsl:value-of select="location"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

