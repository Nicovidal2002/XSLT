<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Books with Price &gt; 10 Euros</title>
      </head>
      <body>
        <table>
          <caption>
            <xsl:value-of select="concat('Number of books: ', count(books/book))"/>
          </caption>
          <tr style="background-color: dodgerblue; color: white;">
            <th>Title</th>
            <th>Author</th>
            <th>Price</th>
          </tr>
          <xsl:for-each select="books/book">
            <xsl:choose>
              <xsl:when test="price <= 10">
                <tr style="background-color: aquamarine;">
                  <td><xsl:value-of select="title"/></td>
                  <td><xsl:value-of select="author"/></td>
                  <td><xsl:value-of select="price"/></td>
                </tr>
              </xsl:when>
              <xsl:when test="price > 10 and price <= 15">
                <tr style="background-color: gold;">
                  <td><xsl:value-of select="title"/></td>
                  <td><xsl:value-of select="author"/></td>
                  <td><xsl:value-of select="price"/></td>
                </tr>
              </xsl:when>
              <xsl:otherwise>
                <tr style="background-color: crimson; color: white;">
                  <td><xsl:value-of select="title"/></td>
                  <td><xsl:value-of select="author"/></td>
                  <td><xsl:value-of select="price"/></td>
                </tr>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>