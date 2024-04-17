<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"

                version="3.0">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Product Translations</title>
            </head>
            <body>
                <p>The price of the T-shirt is:</p>
                <xsl:value-of select="/products/product[1]/price"/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>