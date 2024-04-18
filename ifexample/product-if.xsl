<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="text" indent="yes"/>

    <xsl:template match="/" >
        <xsl:apply-templates select="products/product"/>
    </xsl:template>

    <xsl:template match="product">
        <xsl:if test="price/number()>25">
            <xsl:text>Product name: </xsl:text>
            <xsl:value-of select="name"/>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>