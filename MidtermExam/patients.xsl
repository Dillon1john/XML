<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <img src="logo.png" width="250px" height="250px"/>
                <table border="1">
                        <tr>
                            <th>Last Name</th>
                            <th>First Name</th>
                            <th>D.O.B</th>
                            <th>Age</th>
                            <th>Stage</th>
                            <th>Comment</th>
                            <th>Performaance</th>
                        </tr>
                        <tr >
                           <td>Dibbs</td>
                           <td>Cynthia</td>
                           <td>1945-05-22</td>
                           <td>62</td>
                           <td>II</td>
                           <td></td>
                           <td scale="Karnofsky">0.81</td>
                        </tr>
                        <tr >
                           <td>Wilkes</td>
                           <td>Karen</td>
                           <td>1959-02-24</td>
                           <td>61</td>
                           <td>II</td>
                           <td>Dropped out of study.</td>
                           <td >0.84</td>
                        </tr>
                        <tr >
                           <td>Sanchez</td>
                           <td>Olivia</td>
                           <td>1988-08-14</td>
                           <td>32</td>
                           <td>II</td>
                           <td>Possibly td I/II. Karnofsky td rating unavailable.</td>
                           <td >0.89</td>
                        </tr>
                        <tr>
                           <td>Russell</td>
                           <td>Alice</td>
                           <td>1952-09-14</td>
                           <td>68</td>
                           <td>II</td>
                           <td></td>
                           <td >0.95</td>
                        </tr>
                        <tr >
                           <td>Browne</td>
                           <td>Brenda</td>
                           <td>1994-12-25</td>
                           <td>26</td>
                           <td>I</td>
                           <td></td>
                           <td >0.88</td>
                        </tr>
                        <tr>
                           <td>Khan</td>
                           <td>Aline</td>
                           <td>1972-01-25</td>
                           <td>48</td>
                           <td>I</td>
                           <td>Patient recovering well</td>
                           <td >0.88</td>
                        </tr>
                </table>
                

                Patients born between months of December and March
                <xsl:for-each select="patients/patient" >
                <xsl:variable name="DOB">
              <xsl:value-of select="dateOfBirth"/>
           </xsl:variable>
                <xsl:if test=" contains($DOB,'12') or contains($DOB, '01') or contains($DOB, '02') or contains($DOB, '03')">
                    <ul>
                        <li>
                            
                            Patient:
                            <xsl:value-of select="lastName" />,
                            <xsl:value-of select="firstName" />
                            <br />
                        </li>
                    </ul>
                </xsl:if>
                </xsl:for-each>
                </body>
            </html>
        </xsl:template>
    </xsl:stylesheet>