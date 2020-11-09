<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>ONLINE JEWELLERY SHOPPING</h2>
    <table border="1">
      <tr bgcolor="#c3cd32">
        <th>category</th>
        <th>type</th>
        <th>quantity</th>
        <th>price</th>

      </tr>
      <xsl:for-each select="onlinejewellery/product">
      <xsl:sort select="category"/>
      <tr>
        <td><xsl:value-of select="category"/></td>
        <td><xsl:value-of select="type"/></td>
        <td><xsl:value-of select="quantity"/></td>
        <td><xsl:value-of select="price"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

