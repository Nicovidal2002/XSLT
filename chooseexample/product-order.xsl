<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    
    <xsl:output method="text" indent="yes"/>
    
    <xsl:template match="/">
        <xsl:apply-templates select="products/product">
            <xsl:sort select="name" order="descending">
                
            </xsl:sort>
            <xsl:sort select="price">
                
            </xsl:sort>
        </xsl:apply-templates>
    </xsl:template>
    <xsl:template match="product">
        <xsl:value-of select="name"/>
    </xsl:template>
</xsl:stylesheet>

