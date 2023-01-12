<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <tr>
                        <th colspan="">Make</th>
                        <th>Model</th>
                        <th>Year</th>
                        <th>Picture</th>

                    </tr>
                    <tr>
                        <th>Ford</th>
                        <th>Mustang</th>
                        <th>2019</th>
                        <th>
                            <img src="mustang2019.jpeg" />
                        </th>
                    </tr>
                    <tr>
                        <th>GM</th>
                        <th>
                            Buick
                            <br />
                            Encore
                        </th>
                        <th>2022</th>
                        <th>
                            <img src="gmbuickencore2022.png" />
                        </th>
                    </tr>
                    <tr>
                        <th>GM</th>
                        <th>Silverado</th>
                        <th>2022</th>
                        <th>
                            <img src="gmsilverado2022.jpeg" />
                        </th>
                    </tr>

                    <tr>
                        <th>Toyota</th>
                        <th>
                            Land
                            <br />
                            Cruiser
                        </th>
                        <th>2019</th>
                        <th>
                            <img src="toyotalandcruiser2019.jpeg" />
                        </th>
                    </tr>

                </table>
                1. Cars Before 2022
                <xsl:for-each select="car_dealership/car" >
                <xsl:if test="year &lt; 2022">
                    <ul>
                        <li>
                            Car(
                            <xsl:value-of select="position()" />
                            )
                            <br />
                            Make:
                            <xsl:value-of select="make" />
                            <br />
                            Model:
                            <xsl:value-of select="model" />
                            <br />
                            Release Year:
                            <xsl:value-of select="year" />
                            <br />
                            Picture:
                            <xsl:value-of select="pic" />
                            <br />
                        </li>
                    </ul>
                </xsl:if>
                </xsl:for-each>

                <br />
                2. Mustang Cars
                <br />

                <xsl:for-each select="car_dealership/car">
                <xsl:if test="model = 'Mustang'">
                    <ul>
                        <li>
                            Car(
                            <xsl:value-of select="position()" />
                            )
                            <br />
                            Make:
                            <xsl:value-of select="make" />
                            <br />
                            Model:
                            <xsl:value-of select="model" />
                            <br />
                            Release Year:
                            <xsl:value-of select="year" />
                            <br />
                            Picture:
                            <xsl:value-of select="pic" />
                        </li>
                    </ul>
                </xsl:if>
                </xsl:for-each>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>