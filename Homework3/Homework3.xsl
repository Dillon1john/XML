<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <table border="0">

                    <tr>
                        <th colspan="">Name</th>
                        <th>Nationality</th>
                        <th>Profession</th>
                        <th>Picture</th>

                    </tr>
                    <tr>
                        <th>Abraham Lincoln</th>
                        <th>USA</th>
                        <th>Politician</th>
                        <th><img src="Abraham-Lincoln.jpeg" width="250px" height="250px"/> </th>
               
               
                   </tr>
               
                   <tr>
                       <th>Benito Juarez</th>
                       <th>Mexico</th>
                       <th>Politician</th>
                       <th><img src="Benito_Juarez.jpeg"  width="250px" height="250px"/> </th>
               
               
                  </tr>
               
               
                  <tr>
                   <th>Claude Monet</th>
                   <th>France</th>
                   <th>Politician</th>
                   <th><img src="Claude_Monet.jpeg"  width="250px" height="250px"/> </th>
               
               
                   </tr>
               
                   <tr>
                       <th>Charles Darwin</th>
                       <th>England</th>
                       <th>Scientist</th>
                       <th><img src="Charles_Darwin.jpeg"  width="250px" height="250px"/> </th>
               
               
                   </tr>
               
                   <tr>
                       <th>Deng Xiaoping</th>
                       <th>China</th>
                       <th>Politician</th>
                       <th><img src="Deng_Xiaoping.jpeg"  width="250px" height="250px"/> </th>
               
               
                   </tr>


                   <tr>
                       <th>Frederick Chopin</th>
                       <th>Poland</th>
                       <th>Musician</th>
                       <th><img src="Frederic_Chopin.jpeg"  width="250px" height="250px"/> </th>
               
               
                   </tr>
               
                   <tr>
                       <th>George Washington Carver</th>
                       <th>USA</th>
                       <th>Scientist</th>
                       <th><img src="George_Washington_Carver.jpeg"  width="250px" height="250px"/> </th>
               
               
                   </tr>
               
                   <tr>
                       <th>Georgia O’Keeffe</th>
                       <th>USA</th>
                       <th>Writer</th>
                       <th><img src="Georgia_OKeeffe.jpeg"  width="250px" height="250px"/> </th>
               
                   </tr>
               
                   <tr>
                       <th>Mahatma Gandhi</th>
                       <th>India</th>
                       <th>Politician</th>
                       <th><img src="Mahatma_Gandhi.jpeg"  width="250px" height="250px"/> </th>
               
                   </tr>


                   <tr>
                       <th>Mark Twain</th>
                       <th>USA</th>
                       <th>Writer</th>
                       <th><img src="Mark_Twain.jpeg"  width="250px" height="250px"/> </th>
               
                   </tr>
               
                   <tr>
                       <th>Muhammad Jinnah</th>
                       <th>Pakistan</th>
                       <th>Politician</th>
                       <th><img src="Muhammad_Ali_Jinnah.jpeg"  width="250px" height="250px"/> </th>
               
                   </tr>
               
                   <tr>
                       <th>Pablo Picasso</th>
                       <th>Spain</th>
                       <th>Painter</th>
                       <th><img src="Pablo_Picasso.jpeg"  width="250px" height="250px"/> </th>
               
                   </tr>
               
                   <tr>
                       <th>Santos Dumont</th>
                       <th>Brazil</th>
                       <th>Scientist</th>
                       <th><img src="Santos-Dumont.jpeg"  width="250px" height="250px"/> </th>
               
                   </tr>
                   

                </table>
                1. USA Historical Figures
                <xsl:for-each select="historical_figures/hf" >
                <xsl:if test="Nationality = 'USA'">
                    <ul>
                        <li>
                            
                            Name:
                            <xsl:value-of select="Name" />
                            <br />
                            Profession:
                            <xsl:value-of select="Profession" />
                            <br />
                        </li>
                    </ul>
                </xsl:if>
                </xsl:for-each>

                <br />
                2. Politicians
                <br />

                <xsl:for-each select="historical_figures/hf">
                <xsl:if test="Profession = 'Politician'">
                    <ul>
                        <li>
                            
                            Name:
                            <xsl:value-of select="Name" />
                            <br />
                            Nationality:
                            <xsl:value-of select="Nationality" />
                            <br />
                        </li>
                    </ul>
                </xsl:if>
                </xsl:for-each>
                <br />
                3. Historical Figures from India or Pakistan
                <br />
                <xsl:for-each select="historical_figures/hf">
                <xsl:if test="(Nationality = 'India') or (Nationality = 'Pakistan')">
                    <ul>
                        <li>
                            
                            Name:
                            <xsl:value-of select="Name" />
                            <br />
                            Profession:
                            <xsl:value-of select="Profession" />
                            <br />
                            Nationality:
                            <xsl:value-of select="Nationality" />
                            <br />
                        </li>
                    </ul>
                </xsl:if>
                </xsl:for-each>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>