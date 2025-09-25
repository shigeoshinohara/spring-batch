<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head><meta charset="utf-8"/><title>PMD Summary</title></head>
      <body>
        <h2>PMD Summary</h2>
        <p>Total violations: <strong><xsl:value-of select="count(/pmd/file/violation)"/></strong></p>
        <h3>By priority</h3>
        <ul>
          <li>Priority 1: <xsl:value-of select="count(/pmd/file/violation[@priority='1'])"/></li>
          <li>Priority 2: <xsl:value-of select="count(/pmd/file/violation[@priority='2'])"/></li>
          <li>Priority 3: <xsl:value-of select="count(/pmd/file/violation[@priority='3'])"/></li>
          <li>Priority 4: <xsl:value-of select="count(/pmd/file/violation[@priority='4'])"/></li>
          <li>Priority 5: <xsl:value-of select="count(/pmd/file/violation[@priority='5'])"/></li>
        </ul>
        <p>Generated from <code>pmd.xml</code>.</p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
