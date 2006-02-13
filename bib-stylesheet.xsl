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
 
     $FreeBSD: projects/trustedbsd/www/bib-stylesheet.xsl,v 1.10 2003/08/01 17:19:56 chris Exp $
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:cvs="http://www.FreeBSD.org/XML/CVS">
  <xsl:output type="xml" />

  <xsl:template match="bibliography">
    <page role="docs">
      <title>Documentation</title>

      <cvs:keywords xmlns:cvs="http://www.FreeBSD.org/XML/CVS" version="1.0">
	<cvs:keyword name="freebsd">
	  <xsl:value-of select="//cvs:keyword[@name='freebsd']" />
	</cvs:keyword>
      </cvs:keywords>

      <section id="documentation">
        <title>Documentation</title>

        <html>
          <p>One feature of trusted operating systems is that their
	    security architecture must be well-documented so that it may
	    be analyzed for weaknesses.  TrustedBSD fills this role by
	    having an open and freely available source base, as well as
	    extensive design documentation that will be coming online
	    as features mature.</p>

	  <table width="100%" border="0" cellspacing="2" cellpadding="3">
	    <xsl:for-each select="entry">
	      <xsl:if test="@role = 'doc'">
		<tr>
		  <td valign="top"><span id="bib-label">Title</span></td>
		  <td valign="top"><xsl:value-of select="title" /></td>
	        </tr>

	        <tr>	
	          <td valign="top"><span id="bib-label">Author</span></td>
	          <td valign="top" class="bib-author">
		    <xsl:for-each select="author">
		      <span id="bib-authorname">
			<xsl:value-of select="name" />
		      </span>
		      <xsl:if test="affil">
			<span id="bib-authoraffil">
			  <xsl:text>, </xsl:text>
			  <xsl:value-of select="affil" />
			</span>
		      </xsl:if>
		      <br />
		    </xsl:for-each>
		  </td>
		</tr>
  
		<tr>
		  <td valign="top"><span id="bib-label">Location</span></td>
		  <td valign="top">
		    <xsl:for-each select="download/file">
		      <a>
			<xsl:attribute name="href">
			  <xsl:value-of select="@url" />
			</xsl:attribute>
			<xsl:value-of select="@url" />
		      </a>
		      (<xsl:value-of select="@format" />)
		      <xsl:if test="position() != last()">
			<br />
		      </xsl:if>
		    </xsl:for-each>
		  </td>
		</tr>
  
		<tr>
		  <td valign="top"><span id="bib-label">Abstract</span></td>
		</tr>
  
		<tr>
		  <td valign="top" colspan="2">
		    <blockquote>
		      <xsl:value-of select="abstract" />
		    </blockquote>
		    <xsl:if test="position() != last()">
		      <hr noshade="true" />
		    </xsl:if>
		  </td>
		</tr>
	      </xsl:if>
	    </xsl:for-each>
	  </table>
	</html>
      </section>

      <section id="implementation-papers">
	<title>Implementation Papers</title>

	<html>
          <p>Design white papers provide easy access to the overall design
	    and architecture of the TrustedBSD operating system.  While
	    they do not provide in-depth implementation coverage, they can
	    be of interest to those who are new to FreeBSD, TrustedBSD, or
	    trusted operating systems, as well as developers.</p>

          <p>Implementation papers are intended to provide detailed
	    technical documentation of work in progress, including design
	    and evaluation information.</p>

	  <table width="100%" border="0" cellspacing="2" cellpadding="3">
	    <xsl:for-each select="entry">
	      <xsl:sort select="@date" order="descending" />

	      <xsl:if test="@role = 'paper'">
  
		<tr>
		  <td valign="top"><span id="bib-label">Title</span></td>
		  <td valign="top"><xsl:value-of select="title" /></td>
		</tr>
  
		<tr>      
		  <td valign="top"><span id="bib-label">Author</span></td>
		  <td valign="top" class="bib-author">
		    <xsl:for-each select="author">
		      <span id="bib-authorname">
			<xsl:value-of select="name" />
		      </span>
		      <xsl:if test="affil">
			<span id="bib-authoraffil">
			  <xsl:text>, </xsl:text>
			  <xsl:value-of select="affil" />
			</span>
		      </xsl:if>
		      <br />
		    </xsl:for-each>
		  </td>
		</tr>
  
		<xsl:if test="audience">
		  <tr>
		    <td valign="top"><span id="bib-label">Venue</span></td>
		    <td valign="top"><xsl:value-of select="audience/venue" />,
		      <xsl:text> </xsl:text>
		      <xsl:value-of select="audience/city" />,
		      <xsl:text> </xsl:text>
		      <xsl:value-of select="audience/state" />,
		      <xsl:text> </xsl:text>
		      <xsl:value-of select="audience/date" />
		    </td>
		  </tr>
		</xsl:if>
  
		<tr>
		  <td valign="top"><span id="bib-label">Download</span></td>
		  <td valign="top">
		    <xsl:for-each select="download/file">
		      <a>
			<xsl:attribute name="href">
			  <xsl:value-of select="@url" />
			</xsl:attribute>
			<xsl:value-of select="@format" />
		      </a>
		      <xsl:if test="position() != last()">
			<xsl:text>, </xsl:text>
		      </xsl:if>
		    </xsl:for-each>
		  </td>
		</tr>
  
		<tr>
		  <td valign="top"><span id="bib-label">Abstract</span></td>
		</tr>
  
		<tr>
		  <td valign="top" colspan="2">
		    <blockquote>
		      <xsl:value-of select="abstract" />
		    </blockquote>
		    <xsl:if test="position() != last()">
		      <hr noshade="true" />
		    </xsl:if>
		  </td>
		</tr>
	      </xsl:if>
	    </xsl:for-each>
	  </table>
	</html>
      </section>
    </page>
  </xsl:template>
</xsl:stylesheet>
