<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template name="image-tab">
    <xsl:param name="type" />
    <xsl:param name="description" />
    <xsl:param name="role" />
    <xsl:param name="width" />
    <xsl:param name="height" />
    <!-- This forces the main page for the main page of each section to match
	 the name of the section as seen in the role attribute of the page
	 tag.  Use a "selected" version of the image when on a page. -->
    <xsl:choose>
      <xsl:when test="$role = $type">
	<td valign="top">
	  <a href="{$type}.html"><img border="0" src="{$type}-selected.png"
	    alt="{$description}" height="{$height}" width="{$width}" /></a>
	</td>
      </xsl:when>
      <xsl:otherwise>
	<td valign="top">
	  <a href="{$type}.html"><img border="0" src="{$type}.png"
	    alt="{$description}" height="{$height}" width="{$width}" /></a>
	</td>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="page-heading">
    <xsl:param name="role" />

    <table border="0" bgcolor="#000000" cellspacing="0" cellpadding="0" width="100%">
      <tbody>
        <tr>
	  <td valign="top" bgcolor="#000000" colspan="10">
	    <a href="home.html"><img border="0" width="752" height="72"
	      src="trustyheader.png" alt="www.TrustedBSD.org" /></a>
	  </td>
	</tr>
	<tr>

            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'home'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'Home'" />
	      <xsl:with-param name="width" select="100" />
	      <xsl:with-param name="height" select="22" />
	    </xsl:call-template>

            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'developers'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'Developers'" />
	      <xsl:with-param name="width" select="100" />
	      <xsl:with-param name="height" select="22" />
	    </xsl:call-template>

            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'docs'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'Documentation'" />
	      <xsl:with-param name="width" select="100" />
	      <xsl:with-param name="height" select="22" />
	    </xsl:call-template>

            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'acls'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'ACLs'" />
	      <xsl:with-param name="width" select="100" />
	      <xsl:with-param name="height" select="22" />
	    </xsl:call-template>

            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'audit'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'Audit'" />
	      <xsl:with-param name="width" select="100" />
	      <xsl:with-param name="height" select="22" />
	    </xsl:call-template>

            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'bsmtrace'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'BSMtrace'" />
	      <xsl:with-param name="width" select="100" />
	      <xsl:with-param name="height" select="22" />
	    </xsl:call-template>

            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'extattr'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'ExtAttr + UFS2'" />
	      <xsl:with-param name="width" select="100" />
	      <xsl:with-param name="height" select="22" />
	    </xsl:call-template>

            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'geom'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'GEOM + GBDE'" />
	      <xsl:with-param name="width" select="100" />
	      <xsl:with-param name="height" select="22" />
	    </xsl:call-template>

	</tr>
	<tr>

            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'mailinglists'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'Mailing Lists'" />
	      <xsl:with-param name="width" select="100" />
	      <xsl:with-param name="height" select="22" />
	    </xsl:call-template>

            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'news'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'News'" />
	      <xsl:with-param name="width" select="100" />
	      <xsl:with-param name="height" select="22" />
	    </xsl:call-template>

            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'mac'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'MAC Framework'" />
	      <xsl:with-param name="width" select="100" />
	      <xsl:with-param name="height" select="22" />
	    </xsl:call-template>

            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'openbsm'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'OpenBSM'" />
	      <xsl:with-param name="width" select="100" />
	      <xsl:with-param name="height" select="22" />
	    </xsl:call-template>

            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'openpam'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'OpenPAM'" />
	      <xsl:with-param name="width" select="100" />
	      <xsl:with-param name="height" select="22" />
	    </xsl:call-template>

            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'privileges'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'Privileges'" />
	      <xsl:with-param name="width" select="100" />
	      <xsl:with-param name="height" select="22" />
	    </xsl:call-template>

            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'sebsd'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'SEBSD'" />
	      <xsl:with-param name="width" select="100" />
	      <xsl:with-param name="height" select="22" />
	    </xsl:call-template>

            <xsl:call-template name="image-tab">
	      <xsl:with-param name="type" select="'sedarwin'" />
	      <xsl:with-param name="role" select="$role" />
	      <xsl:with-param name="description" select="'SEDarwin'" />
	      <xsl:with-param name="width" select="100" />
	      <xsl:with-param name="height" select="22" />
	    </xsl:call-template>

	  <td width="100%"></td>
	</tr>
      </tbody>
    </table>
    <!-- <img src="horizontalbar1.gif" width="775" height="4" vspace="3" /> -->
  </xsl:template>
</xsl:stylesheet>
