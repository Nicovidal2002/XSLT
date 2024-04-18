<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <xsl:text>Inventory of Records:</xsl:text>
    <xsl:text>&#10;</xsl:text>
    <xsl:apply-templates select="root/record"/>
  </xsl:template>

  <xsl:template match="record">
    <xsl:text>ID: </xsl:text><xsl:value-of select="id"/>
    <xsl:text>, Title: </xsl:text><xsl:value-of select="title"/>
    <xsl:text>, Date: </xsl:text><xsl:value-of select="date/year"/>
    <xsl:text>-</xsl:text><xsl:value-of select="date/month"/>
    <xsl:text>-</xsl:text><xsl:value-of select="date/day"/>
    <xsl:text>&#10;</xsl:text>
  </xsl:template>
  
</xsl:stylesheet>
