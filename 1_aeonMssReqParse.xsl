<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" indent="yes" 
      encoding="UTF-8" media-type="text/xml; charset=UTF-8" 
      omit-xml-declaration="no"/>

	<xsl:strip-space elements="*"/>


	<xsl:template match="dataroot">
		<xsl:result-document method="xml" href="aeonMssReqParsed.xml">

			<collections>
				<EA-ColHis>
					<xsl:for-each select="aeonMssReq">
						<xsl:if test="contains(ResearchTopics, 'EA-ColHis')">
							<xsl:if test="Location != ''">
									<item>
										<callnumber>
											<xsl:value-of select="CallNumber" />
										</callnumber>
										<location>
											<xsl:value-of select="Location" />
										</location>
									</item>
							</xsl:if>
						</xsl:if>
					</xsl:for-each>
				</EA-ColHis>	

<EA-AmRev>
					<xsl:for-each select="aeonMssReq">
						<xsl:if test="contains(ResearchTopics, 'EA-AmRev')">
							<xsl:if test="Location != ''">
									<item>
										<callnumber>
											<xsl:value-of select="CallNumber" />
										</callnumber>
										<location>
											<xsl:value-of select="Location" />
										</location>
									</item>
							</xsl:if>
						</xsl:if>
					</xsl:for-each>
				</EA-AmRev>						
			</collections>	

		</xsl:result-document>
	</xsl:template>


</xsl:stylesheet>	