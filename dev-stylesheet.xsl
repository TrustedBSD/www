<!--
     Copyright (c) 2002 Networks Associates Technology, Inc.
     All rights reserved.
     
     This software was developed for the FreeBSD Project by Chris
     Costello at Safeport Network Services and Network Associates
     Laboratories, the Security Research Division of Network Associates,
     Inc. under DARPA/SPAWAR contract N66001-01-C-8035 ("CBOSS"), as part
     of the DARPA CHATS research program.
     
     Redistribution and use in source and binary forms, with or without
     modification, are permitted provided that the following conditions
     are met:
     1. Redistributions of source code must retain the above copyright
        notice, this list of conditions and the following disclaimer.
     2. Redistributions in binary form must reproduce the above copyright
        notice, this list of conditions and the following disclaimer in the
        documentation and/or other materials provided with the distribution.
     
     THIS SOFTWARE IS PROVIDED BY THE AUTHORS AND CONTRIBUTORS ``AS IS'' AND
     ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
     IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
     ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHORS OR CONTRIBUTORS BE LIABLE
     FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
     DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
     OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
     LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
     OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
     SUCH DAMAGE.
     
     $P4: //depot/projects/trustedbsd/www/dev-stylesheet.xsl#3 $
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:cvs="http://www.FreeBSD.org/XML/CVS">
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="developers">
    <page role="developers">
      <title>Developers</title>

      <cvs:keywords xmlns:cvs="http://www.FreeBSD.org/XML/CVS" version="1.0">
	<cvs:keyword name="freebsd">
	  <xsl:value-of select="//cvs:keyword[@name='freebsd']" />
	</cvs:keyword>
      </cvs:keywords>

      <section>
	<title>Developers</title>

	<html>
	  <p>Some of the TrustedBSD Project's primary code contributors are
	    listed here, along with their areas of interest in the
	    project.</p>

	  <ul>
	    <xsl:apply-templates select="entry">
	      <xsl:sort select="surname" />
	    </xsl:apply-templates>
	  </ul>
	</html>
      </section>
    </page>
  </xsl:template>

  <xsl:template match="entry">
    
    <li>
      <b>
	<xsl:value-of select="firstname" />
	<xsl:text> </xsl:text>
	<xsl:value-of select="surname" />
      </b>

      <!-- XXX most people don't have more than one email address, but this
	   is a "just in case" measure. -->
      <xsl:for-each select="email">
        <xsl:if test="string-length()">
	  &lt;<a>
	    <xsl:attribute name="href">
	      mailto:<xsl:value-of select="." />
	    </xsl:attribute><xsl:value-of select="." />
	  </a>&gt;
        </xsl:if>
      </xsl:for-each>

      <br />

      <xsl:value-of select="area" />
    </li>
  </xsl:template>
</xsl:stylesheet>
