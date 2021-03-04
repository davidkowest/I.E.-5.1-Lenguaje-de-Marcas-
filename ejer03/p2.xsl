<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        
        <html>
            <body>
                <table border="1px">
                    <tr>
                        <th>Título</th>
                        <th>Director</th>                        
                        <th>Foto</th>
                    </tr>
                    <xsl:for-each select="//pelicula">
                        
                        
                        <tr>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="director"/></td>
                            <td>
                                <xsl:element name="img">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="foto/@ruta"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="height">
                                        100
                                    </xsl:attribute>
                                </xsl:element>
                            </td>
                        </tr>
                        
                    </xsl:for-each>
                </table>
            </body>
        </html>
        
    </xsl:template>
    
</xsl:stylesheet>