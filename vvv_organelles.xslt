<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl='urn:schemas-microsoft-com:xslt'>

  <xsl:template match="/">
    <html>
      <head>
        <style type="text/css">
          *
          {
            font-family: Verdana;
          }
          h2
          {
            width: 100%
            font-size: 22pt;
            color: #9acd32;
            background-color: #E0E0E0;
            text-align: center;
            padding: 10px;
          }
          .organelle_table, td
          {
            border: 1px solid #B0B0B0;
            border-collapse: collapse;
          }
          td
          {
            padding: 5px;
            font-size: 10pt;
          }
          .organelle_table_header
          {
            border: 1px solid #B0B0B0;
            background-color: #E0E0E0;
            color: #500000;
            padding: 5px;
            font-size: 10pt;
          }
        </style>
      </head>
      <body>
        <h2>VVV Organelle Collection</h2>
        <table class="organelle_table">
          <tr>
            <th class="organelle_table_header">Class</th>
            <th class="organelle_table_header">Species</th>
            <th class="organelle_table_header">Description</th>
            <th class="organelle_table_header">Manufacturer</th>
            <th class="organelle_table_header">Donor</th>
            <th class="organelle_table_header">Acceptor</th>
          </tr>
          <xsl:for-each select="VVV_Organelles/Organelle">
            <tr>
              <td>
                <xsl:value-of select="@Class"/>
              </td>
              <td>
                <xsl:value-of select="@Species"/>
              </td>
              <td>
                <xsl:value-of select="Description"/>
              </td>
              <td>
                <a href="{ManufacturerUrl}">
                  <xsl:value-of select="ManufacturerUrl"/>
                </a>
              </td>
              <td>
                  <xsl:for-each select="Donor/Family">
                    <div><xsl:value-of select="."/></div>
                  </xsl:for-each>
              </td>
              <td>
                  <xsl:for-each select="Environment/Family">
                    <div><xsl:value-of select="."/></div>
                  </xsl:for-each>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
