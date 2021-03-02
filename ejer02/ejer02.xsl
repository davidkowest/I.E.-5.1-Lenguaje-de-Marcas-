<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
    
    <html>
        <body>
            <table border="1px" height="200px" width="300px">
                <tr>
                    <th>Nombre</th>
                    <th>Materia</th>
                    <th>Nota</th>
                </tr>
                <xsl:for-each select="//alumno">
                    <xsl:sort select="nota"></xsl:sort>
                    
                    <tr>
                            <xsl:choose>
                                <xsl:when test="@tipo='repetidor'">
                                    <td><xsl:value-of select="nombre"/>*</td>
                                </xsl:when>
                                <xsl:when test="@tipo='no repetidor'">
                                    <td><xsl:value-of select="nombre"/></td>
                                </xsl:when>
                            </xsl:choose>
                        <td><xsl:value-of select="materia"/></td>
                        <xsl:choose>
                            <xsl:when test="nota&lt;40">
                                <td style="background-color: red; color: white"><xsl:value-of select="nota"/></td>
                            </xsl:when>
                            <xsl:when test="nota>=40 and nota &lt;=70">
                                <td style="background-color: yellow"><xsl:value-of select="nota"/></td>
                            </xsl:when>
                            <xsl:when test="nota>70">
                                <td style="background-color: green"><xsl:value-of select="nota"/></td>
                            </xsl:when>
                        </xsl:choose>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    
    </xsl:template>

</xsl:stylesheet>
