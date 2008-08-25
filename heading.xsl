<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template name="image-tab">
    <xsl:param name="type" />
    <xsl:param name="description" />

    <!-- This forces the main page for the main page of each section to match
	 the name of the section as seen in the role attribute of the page
	 tag. -->
    <a href="{$type}.html">

    <!-- "Grey out" the image that corresponds with this page's section. -->
    <xsl:choose>
      <xsl:when test="$role = $type">
	<img border="0" src="{$type}-selected.png" alt="{$description}"
	  height="{$height}" width="{$width}" />
      </xsl:when>
      <xsl:otherwise>
	<img border="0" src="{$type}.png" alt="{$description}"
	  height="{$height}" width="{$width}" />
      </xsl:otherwise>
    </xsl:choose>
    </a>
  </xsl:template>

  <xsl:template name="page-heading">
    <xsl:param name="role" />

    <table border="0" bgcolor="#000000" cellspacing="0" cellpadding="0" width="100%">
      <tbody>
        <tr>
	  <td valign="top" bgcolor="#000000" colspan="6">
	    <img border="0" src="trustyheader.png" alt="www.TrustedBSD.org" />
	  </td>
	</tr>
	<tr>
	  <td valign="top">
	    <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'home'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'Home'" />
	      <xsl:with-param name="width" select="144" />
	      <xsl:with-param name="height" select="32" />
	    </xsl:call-template>
	  </td>

          <td valign="top">
            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'developers'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'Developers'" />
	      <xsl:with-param name="width" select="144" />
	      <xsl:with-param name="height" select="32" />
	    </xsl:call-template>
	  </td>

          <td valign="top">
            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'components'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'Components'" />
	      <xsl:with-param name="width" select="144" />
	      <xsl:with-param name="height" select="32" />
	    </xsl:call-template>
	  </td>

          <td valign="top">
            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'docs'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'Documentation'" />
	      <xsl:with-param name="width" select="144" />
	      <xsl:with-param name="height" select="32" />
	    </xsl:call-template>
	  </td>

          <td valign="top">
            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'mailinglists'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'Mailing Lists'" />
	      <xsl:with-param name="width" select="144" />
	      <xsl:with-param name="height" select="32" />
	    </xsl:call-template>
	  </td>
	  <td valign="top" width="100%">
	  </td>
	</tr>
      </tbody>
    </table>
    <!-- <img src="horizontalbar1.gif" width="775" height="4" vspace="3" /> -->
  </xsl:template>
</xsl:stylesheet>
