<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">

        <html>
            <head>
                <title>Teaches</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>Course</th>
                        <th>Professor</th>
                    </tr>
                    <xsl:for-each select="/university/teaches">
                        <tr>
                            <td><xsl:value-of select="course"/></td>
                            <td><xsl:value-of select="professor"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>