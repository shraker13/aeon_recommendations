<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" indent="yes" 
      encoding="UTF-8" media-type="text/xml; charset=UTF-8" 
      omit-xml-declaration="no"/>

	<xsl:strip-space elements="*"/>


	<xsl:template match="collections/EA-ColHis">
		<xsl:result-document method="html" href="include_EA-ColHis.html">
			
				<h3>The collections most frequently requested from researchers who expressed an interest in <b>Early America-Colonial History</b> are listed below with links to each collection's finding aid and the number of times each collection has been requested.</h3>
				<table class="rec-table">
					<tr>
						<th>Collection</th>
						<th>Call Number</th>
						<th># of Requests</th>
						<th># of Users</th>
					</tr>
					<xsl:for-each select="record">
					<tr>
						<td><a href="http://www.amphilsoc.org/collections/view?docId=ead/{callnumber}-ead.xml" target="new"><xsl:value-of select="collection"/></a></td>
						<td><xsl:value-of select="callnumber"/></td>
						<td><xsl:value-of select="requests"/></td>
						<td><xsl:value-of select="users"/></td>
					</tr>
					</xsl:for-each>
				</table>
			
		</xsl:result-document>

	</xsl:template>
	<xsl:template match="collections/EA-AmRev">
		<xsl:result-document method="html" href="include_EA-AmRev.html">
			
				<h3>The collections most frequently requested from researchers who expressed an interest in <b>Early America-Colonial History</b> are listed below with links to each collection's finding aid and the number of times each collection has been requested.</h3>
				<table class="rec-table">
					<tr>
						<th>Collection</th>
						<th>Call Number</th>
						<th># of Requests</th>
						<th># of Users</th>
					</tr>
					<xsl:for-each select="record">
					<tr>
						<td><a href="http://www.amphilsoc.org/collections/view?docId=ead/{callnumber}-ead.xml" target="new"><xsl:value-of select="collection"/></a></td>
						<td><xsl:value-of select="callnumber"/></td>
						<td><xsl:value-of select="requests"/></td>
						<td><xsl:value-of select="users"/></td>
					</tr>
					</xsl:for-each>
				</table>
			
		</xsl:result-document>

	</xsl:template>
	
</xsl:stylesheet>