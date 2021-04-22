<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 03.xsl
    Created on : 20 de abril de 2021, 13:18
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/horario">
        <html>
            <head>
                <title>XSL 03 Nombre y Apellidos</title>
            </head>
            <body>
                <h1>HORARIOS DEL CURSO <xsl:value-of select="@curso"/></h1>
                <table>
                    <tr>
                        <th>Codigo del modulo</th>
                    </tr>
                    <tr>
                        <th>Nombre del modulo</th>
                    </tr>
                    <xsl:apply-template select="modulos/modulo"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="modulos/modulo">
    <tr>
        <td><xsl:value-of select="@codM"/></td>
        <td><xsl:value-of select="current()/text()"/></td>
    </tr>
    </xsl:template>
</xsl:stylesheet>
