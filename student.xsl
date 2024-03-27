<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Student Information</title>
        <style>
          body {
            font-family: Arial, sans-serif;
          }
          .student-info {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            width: 300px;
            margin: 0 auto;
          }
          .student-info h2 {
            color: #333;
            font-size: 20px;
          }
        </style>
      </head>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="student">
    <div class="student-info">
      <h2><xsl:value-of select="name"/></h2>
      <p>Email: <xsl:value-of select="email"/></p>
      <p>Age: <xsl:value-of select="age"/></p>
    </div>
  </xsl:template>
</xsl:stylesheet>