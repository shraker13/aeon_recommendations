<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml" indent="yes" 
      encoding="UTF-8" media-type="text/xml; charset=UTF-8" 
      omit-xml-declaration="no"/>
  <xsl:strip-space elements="*"/>
  
    <!-- 
This stylesheet takes the data from the exported xml file 'aeonMssUsers.xml' and organizes requests by a specified collection interest. It outputs a new xml document, 'aeonMssUsersParsed.xml' 
There is some redundancy here, but I can't see a way around that because requests may be from a user who has multiple interests, so we need to output some repetitious code
--> 

  <xsl:template match="dataroot">
    <xsl:result-document method="xml" href="aeonMssUsersParsed.xml">
      <collections>

        <interest name='Early America-Colonial History'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-ColHis')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>	

        <interest name='Early America-American Revolution'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-AmRev')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>		

        <interest name='Early America-Early National'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-AmRev')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Early America-Antebellum'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Antebellum')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>	

        <interest name='Early America-Civil War America'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-CivilWar')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>	

        <interest name='Early America-Native American'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-NatAm')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>	

        <interest name='Early America-Politics'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Pol')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>	
        <interest name='Early America-Pennsylvania History'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-PaHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>	

        <interest name='Early America-Philadelphia History'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-PhilHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>	

        <interest name='Early America-Women and Gender'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Women')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>	

        <interest name='Early America-Slavery'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Slavery')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Early America-Science'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Sci')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Early America-Medicine'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Med')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Early America-Reform Movements'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Reform')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Early America-Education'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Ed')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Early America-Business and Economics'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Bus')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Early America-Military History'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-MilHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Early America-Intellectual History'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-IntHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Early America-Other'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EA-Other')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Native American'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-NatAm')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Politics'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-Pol')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Pennsylvania History'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-PaHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Philadelphia History'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-PhilHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Women and Gender'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-Women')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Slavery'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-Slavery')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Science'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-Sci')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Medicine'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-Med')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Reform Movements'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-Reform')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Education'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-Ed')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Business and Economics'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-Bus')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Military History'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-MilHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Intellectual History'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-IntHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Modern America-Other'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'MA-Other')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-18th Century'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-18C')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-19th Century'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-19C')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-20th Century'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-20C')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Eugenics'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-Eug')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Computer Science'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-CS')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Medicine'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-Med')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Instruments'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-Instr')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Experimentation'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-Exper')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Science and Policy'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-SciPol')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Science and Religion'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-SciRel')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-US Science'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-USSci')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-European Science'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-EuroSci')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Global Science'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-GlobSci')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Institutions and education'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-InstEd')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Intellectual History'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-IntHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Women and science'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-Women')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Discipline specific research'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-Discip')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='History of Science and Technology-Other'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'HistSci-Other')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-18th Century'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-18C')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-19th Century'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-19C')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-20th Century'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-20C')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-History of Anthropology'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-AntHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Ethnohistory'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-Ethno')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Linguistics'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-Ling')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Anthropological research in archives'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-AnthRes')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Cultural Studies'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-CultStud')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Indian Policy'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-IndPol')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Tribal governance'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-TribGov')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Reform movements'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-Reform')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Intercultural relations'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-Intercult')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Tribal histories'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-TribHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Tribe'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-Tribe')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Native America and Anthropology-Other'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'NatAm-Other')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Literature'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'Lit')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Literature-Other'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'Lit-Other')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Art History'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'ArtHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='Art History-Other'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'ArtHist-Other')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='European history'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EuroHist')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

        <interest name='European history-Other'>
          <xsl:for-each select="aeonMssUsers">
            <xsl:if test="contains(ResearchTopics, 'EuroHist-Other')">
              <xsl:if test="Location != ''">
                <item>
                  <callnumber>
                    <xsl:value-of select="CallNumber" />
                  </callnumber>
                  <location>
                    <xsl:value-of select="Location" />
                  </location>
                  <user>
                    <xsl:value-of select="Username" />
                  </user>
                </item>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </interest>

      </collections>	

    </xsl:result-document>
  </xsl:template>


</xsl:stylesheet>
