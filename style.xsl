<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output
		method="html"
		doctype-public="-//W3C//DTD HTML 4.01//EN"
		doctype-system="http://www.w3.org/TR/html4/strict.dtd"
	 />
	 <!-- Document Element -->
	 <xsl:template match="/">
		 <html>
				<head>
					<title>Конвертируем документ</title>
					<link href="style.css" rel="stylesheet" type="text/css" media="all" />
				</head>
				<body>
					<table>
			<tbody>
				<xsl:apply-templates select="/items/item/property" />
			</tbody>
		</table>
				</body>
			</html>
	 </xsl:template>
    <!-- Шаблон для имени эмитента -->
	<xsl:template match="property[position() = 1]" priority="10" >
		<tr>
			<td class="title" colspan="2">
				<xsl:value-of select="@title" />
				<xsl:text>: </xsl:text>
				<xsl:value-of select="./node()" disable-output-escaping="yes" />
			</td>
		</tr>
	</xsl:template>
	<!-- Шаблон для остальных свойств эмитента -->
	<xsl:template match="/items/item/property">
		<tr>
			<td>
				<xsl:value-of select="@title" />
			</td>
			<td>
				<xsl:value-of select="node()" disable-output-escaping="yes" />
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>
