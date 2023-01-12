<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- start of root template-->
    <xsl:template match="/">
        <!-- create a web page-->
        <html>
            <head></head>
            <body>
                1. Number of Items: <xsl:value-of select="count(furnitures/furniture)"/>
                <p></p>
                2. Total Quantity of Units: <xsl:value-of select="sum(furnitures/furniture/Units)"/>
                <p></p>
                3.Total Inventory Value: <xsl:call-template name="totalinventory">
                    <xsl:with-param name="list" select="furnitures/furniture"/>
                </xsl:call-template>
            </body>
        </html>
    
       
    </xsl:template>
    <!-- end of root template-->

    <!-- start of totalinventory template -->
    <xsl:template name="totalinventory">
        <xsl:param name="list"/>
        <xsl:param name="total" select="0"/> 
        
        <xsl:choose>
            <xsl:when test="$list">
                <!-- define a variable that calculates the first inventory price -->
                <xsl:variable name="inventoryprice" select="$list[1]/Units * $list[1]/Price"/>

                <!--  call template recursively-->
                <xsl:call-template name="totalinventory">
                    <xsl:with-param name="list" select="$list[position() > 1]"/>
                    <xsl:with-param name="total" select="$total + $inventoryprice"/>    
                </xsl:call-template>
            </xsl:when>  
            
            <xsl:otherwise>
                <!-- ready to display total inventory value-->
                <xsl:value-of select="format-number($total,'$###,###,###.00')"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

   

    <!-- end of totalinventory-->
</xsl:stylesheet>