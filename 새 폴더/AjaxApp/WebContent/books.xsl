<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="yes" encoding="euc-kr"></xsl:output>
	<xsl:template match="books">
		<ul>
			<xsl:for-each select="book">
				<li><strong><xsl:value-of select="title" /></strong>
					(<i><xsl:value-of select="author"/></i>)
				</li>
			</xsl:for-each>
		</ul>
	</xsl:template>
</xsl:stylesheet>
