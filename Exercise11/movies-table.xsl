<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head></head>
            <body>
                <h1>Movies</h1>
                <table>
                    <tr style="background-color: dodgerblue; color: white;">
                        <th>Title</th>
                        <th>Director</th>
                        <th>Year</th>
                    </tr>
                     <xsl:for-each select="movies/movie[year > 1999]">
                        <xsl:sort select="title" order="descending"/>
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="concat(director/firstName, ' ', director/lastName)"/></td>
                            <td><xsl:value-of select="year"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
        
    </xsl:template>
</xsl:stylesheet>
