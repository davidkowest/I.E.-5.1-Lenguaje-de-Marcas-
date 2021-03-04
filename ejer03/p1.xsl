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
                        <th>Nacionalidad</th>
                        <th>Productor</th>
                        <th>Director</th>
                        <th>Año</th>
                        <th>Duración</th>
                        <th>Género</th>
                        <th>Sinopsis</th>
                        <th>URL</th>
                    </tr>
                    <xsl:for-each select="//pelicula">
                        
                        
                        <tr>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="nacionalidad"/></td>
                            <td><xsl:value-of select="productor"/></td>
                            <td><xsl:value-of select="director"/></td>
                            <td><xsl:value-of select="año"/></td>
                            <td><xsl:value-of select="duracion"/></td>
                            <td><xsl:value-of select="genero"/></td>
                            <td><xsl:value-of select="sinopsis"/></td>
                            <td>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="url/@enlace"/>
                                    </xsl:attribute>
                                    <xsl:value-of select="url"/>
                                </a>
                            </td>
                        </tr>
                        
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>