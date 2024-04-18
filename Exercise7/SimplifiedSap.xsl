<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
      <xsl:text>Inventory of Records:</xsl:text>
      <xsl:text>&#10;</xsl:text>
      <xsl:apply-templates select="root/record"/>
    </xsl:template>
  
  <xsl:template match="record">
  
  <html>
      <h1>Records: <xsl:value-of select="count(//record[city='Glasgow'] [date/year/number()=1790])"/></h1>
      <p>
        <xsl:text>ID: </xsl:text>
        <xsl:value-of select="id"/>
      </p>
      <p>
        <xsl:text>City: </xsl:text>
        <xsl:value-of select="city"/>
      </p>
      <p>
        <xsl:text>First Paragraph of the text: </xsl:text>
        <xsl:value-of select="text/paragraph[1]"/>
      </p>
  </html>
  </xsl:template>
  
</xsl:stylesheet>
