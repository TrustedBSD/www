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
# $FreeBSD: projects/trustedbsd/www/Makefile,v 1.17 2006/02/09 20:50:23 rwatson Exp $

STYLESHEET=	page.xsl

SRCS=		home.page
SRCS+=		news.page
SRCS+=		legal.page
SRCS+=		beastie.page
SRCS+=		developers.page
SRCS+=		mailinglists.page
SRCS+=		components.page
SRCS+=		docs.page
SRCS+=		mac.page
SRCS+=		openbsm.page
SRCS+=		sebsd.page
SRCS+=		sedarwin.page

IMGS=		components.gif componentsgray.gif
IMGS+=		developers.gif developersgray.gif docs.gif
IMGS+=		docsgray.gif home.gif homegray.gif
IMGS+=		horizontalbar1.gif mailinglists.gif mailinglistsgray.gif
IMGS+=		minipemaquidlight.jpg pemaquidlight.jpg powerlogo.gif
IMGS+=		resources.gif trustydibmed2.jpg trustyshadow.gif
IMGS+=		trustyteenie.gif verticalbar1.gif wwwheader.gif

DATA=		trustedbsd-supfile trustedbsd-bsdcon-2000.pdf
DATA+=		trustedbsd-freenix-2001.pdf
DATA+=		trustedbsd-usenix2003freenix.pdf
DATA+=		trustedbsd-discex3.pdf
DATA+=		sebsd-july2003.pdf
DATA+=		20000809-trustedbsd-announcement.txt
DATA+=		robots.txt

GLOBAL_XML=	sidebar.xml

STYLESHEETS=	dev		# Developers' listing.
STYLESHEETS+=	bib		# Bibliography.

INDEXLINK=	home.html

NO_TIDY=	yes		# XXX: Makes some links ugly in some browsers

.include "trusted.web.mk"
