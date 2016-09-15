<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" indent="yes" 
      encoding="UTF-8" media-type="text/xml; charset=UTF-8" 
      omit-xml-declaration="no"/>

	<xsl:strip-space elements="*"/>


	<xsl:template match="collections">
		<xsl:result-document method="xml" href="aeonMssMerged.xml">
		<collections>
		<xsl:for-each select="EA-ColHis">
			<EA-ColHis>
				<xsl:for-each select="record">
					<record>
						<collection><xsl:value-of select="collection"/></collection>
						<location><xsl:value-of select="location"/></location>
						<requests><xsl:value-of select="requests"/></requests>
					</record>
				</xsl:for-each>

				<xsl:for-each select="document('aeonMssUsersCount.xml')/collections/EA-ColHis/record">
					<record>

						<location><xsl:value-of select="location"/></location>
						<users><xsl:value-of select="users"/></users>
					</record>
				</xsl:for-each>
			</EA-ColHis>
			</xsl:for-each>
			<xsl:for-each select="EA-AmRev">
			<EA-AmRev>
				<xsl:for-each select="record">
					<record>
						<collection><xsl:value-of select="collection"/></collection>
						<location><xsl:value-of select="location"/></location>
						<requests><xsl:value-of select="requests"/></requests>
					</record>
				</xsl:for-each>

				<xsl:for-each select="document('aeonMssUsersCount.xml')/collections/EA-AmRev/record">
					<record>

						<location><xsl:value-of select="location"/></location>
						<users><xsl:value-of select="users"/></users>
					</record>
				</xsl:for-each>
			</EA-AmRev>
			</xsl:for-each>
			</collections>
		</xsl:result-document>

	</xsl:template>
</xsl:stylesheet>







