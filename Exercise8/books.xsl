<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Books with Price &gt; 10 Euros</title>
      </head>
      <body>
        <h1>Books with Price &gt; 10 Euros</h1>
        <ol>
          <xsl:for-each select="books/book[price > 10]">
            <li>
              <strong>Title:</strong> <xsl:value-of select="title"/><br/>
              <strong>Author:</strong> <xsl:value-of select="author"/><br/>
              <strong>Price:</strong> <xsl:value-of select="price"/> euros
            </li>
          </xsl:for-each>
        </ol>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
