<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" indent="yes" 
      encoding="UTF-8" media-type="text/xml; charset=UTF-8" 
      omit-xml-declaration="no"/>
	<xsl:strip-space elements="*"/>
	
	<xsl:template match="collections">
		<xsl:result-document method="xml" href="aeonMssCount.xml">
		<collections>
		<xsl:for-each select="EA-ColHis">
			<EA-ColHis>
				<xsl:for-each-group select="record" group-by="location">
					<record>
						<collection>
							<xsl:value-of select="current-grouping-key()"/>
						</collection>
						<callnumber>
							<xsl:value-of select="collection"/>
						</callnumber>
						<requests>
							<xsl:value-of select="current-group()/requests"/>
						</requests>
						<users>
							<xsl:value-of select="current-group()/users"/>
						</users>
					</record>
				</xsl:for-each-group>
			</EA-ColHis>
			</xsl:for-each>
			
			<xsl:for-each select="EA-AmRev">
			<EA-AmRev>
				<xsl:for-each-group select="record" group-by="location">
					<record>
						<collection>
							<xsl:value-of select="current-grouping-key()"/>
						</collection>
						<callnumber>
							<xsl:value-of select="collection"/>
						</callnumber>
						<requests>
							<xsl:value-of select="current-group()/requests"/>
						</requests>
						<users>
							<xsl:value-of select="current-group()/users"/>
						</users>
					</record>
				</xsl:for-each-group>
			</EA-AmRev>
			</xsl:for-each>
			</collections>
		</xsl:result-document>
	</xsl:template>
</xsl:stylesheet>







