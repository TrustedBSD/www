# Copyright (c) 2002, 2003 Networks Associates Technologies, Inc.
# All rights reserved.
# 
# This software was developed for the FreeBSD Project by Chris Costello
# at Safeport Network Services and Network Assoicates Laboratories, the
# Security Research Division of Network Associates, Inc. under
# DARPA/SPAWAR contract N66001-01-C-8035 ("CBOSS"), as part of the DARPA
# CHATS research program.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
# 
# THIS SOFTWARE IS PROVIDED BY THE AUTHORS AND CONTRIBUTORS ``AS IS'' AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHORS OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
# OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
# SUCH DAMAGE.
# 
# $P4: //depot/projects/trustedbsd/www/Makefile#18 $

STYLESHEET=	page.xsl

SRCS=		home.page
SRCS+=		news.page
SRCS+=		legal.page
SRCS+=		beastie.page
SRCS+=		developers.page
SRCS+=		extattr.page
SRCS+=		geom.page
SRCS+=		mailinglists.page
SRCS+=		docs.page
SRCS+=		mac.page
SRCS+=		openbsm.page
SRCS+=		openpam.page
SRCS+=		sebsd.page
SRCS+=		sedarwin.page
SRCS+=		audit.page
SRCS+=		privileges.page
SRCS+=		sourcecode.page
SRCS+=		acls.page
SRCS+=		bsmtrace.page

IMGS=		acls.png acls-selected.png
IMGS+=		audit.png audit-selected.png
IMGS+=		bsmtrace.png bsmtrace-selected.png
IMGS+=		developers.png developers-selected.png
IMGS+=		docs.png docs-selected.png
IMGS+=		extattr.png extattr-selected.png
IMGS+=		geom.png geom-selected.png
IMGS+=		home.png home-selected.png
IMGS+=		horizontalbar1.gif
IMGS+=		legal.png legal-selected.png
IMGS+=		mac.png mac-selected.png
IMGS+=		mailinglists.png mailinglists-selected.png
IMGS+=		minipemaquidlight.jpg
IMGS+=		news.png news-selected.png
IMGS+=		pemaquidlight.jpg powerlogo.gif
IMGS+=		openbsm.png openbsm-selected.png
IMGS+=		openpam.png openpam-selected.png
IMGS+=		privileges.png privileges-selected.png
IMGS+=		trustydibmed2.jpg trustyshadow.gif
IMGS+=		sebsd.png sebsd-selected.png
IMGS+=		sedarwin.png sedarwin-selected.png
IMGS+=		sourcecode.png sourcecode-selected.png
IMGS+=		trustyteenie.gif verticalbar1.gif wwwheader.gif
IMGS+=		trustyheader.png

DATA=		trustedbsd-bsdcon-2000.pdf
DATA+=		trustedbsd-freenix-2001.pdf
DATA+=		trustedbsd-usenix2003freenix.pdf
DATA+=		trustedbsd-discex3.pdf
DATA+=		sebsd-july2003.pdf
DATA+=		20000809-trustedbsd-announcement.txt
DATA+=		robots.txt
DATA+=		20060303-ukuug2006lisa-audit.pdf
DATA+=		2010usenix-security-capsicum-website.pdf

GLOBAL_XML=	sidebar.xml

STYLESHEETS+=	bib		# Bibliography.

INDEXLINK=	home.html

NO_TIDY=	yes		# XXX: Makes some links ugly in some browsers

.include "trusted.web.mk"
