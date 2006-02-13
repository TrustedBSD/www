# Copyright (c) 2002 Networks Associates Technologies, Inc.
# All rights reserved.
# 
# This software was developed for the FreeBSD Project by Chris
# Costello at Safeport Network Services and Network Associates
# Laboratories, the Security Research Division of Network Associates,
# Inc. under DARPA/SPAWAR # contract N66001-01-C-8035 ("CBOSS"), as part
# of the DARPA CHATS research program.
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
# $FreeBSD: projects/trustedbsd/www/trusted.web.mk,v 1.5 2003/01/03 03:28:22 chris Exp $

TIDY?=		tidy -i -m -f /dev/null
XSLTPROC?=	xsltproc -nonet
GLOBAL_XML?=	sidebar.xml

_WEBOWN!=	id -un
_WEBGRP!=	id -gn

WEBOWN?=	${_WEBOWN}
WEBGRP?=	${_WEBGRP}
DESTDIR?=	${HOME}/public_html/trustedbsd/www

CSS_STYLESHEET?=	page.css

.MAIN: all

# .page is the only type of file that converts to .html
.SUFFIXES: .page .html

# All other types get converted to .page
.for _SHEET in ${STYLESHEETS}
.SUFFIXES: .${_SHEET} .page

.${_SHEET}.page:
	${XSLTPROC} -o ${.OBJDIR}/${.TARGET} ${_SHEET}-stylesheet.xsl ${.IMPSRC}
	echo ${.TARGET} >> ${.OBJDIR}/.cleanfiles

*.${_SHEET}: ${_SHEET}-stylesheet.xsl
.endfor

${STYLESHEET}: includes.xsl heading.xsl

all: ${SRCS:%.page=%.html}

.page.html: ${STYLESHEET} ${GLOBAL_XML} ${.IMPSRC}
	${XSLTPROC} -o ${.OBJDIR}/${.TARGET} ${STYLESHEET} ${GLOBAL_XML} \
		${.IMPSRC}
.if !defined(NO_TIDY)
	-${TIDY} ${.OBJDIR}/${.TARGET}
.endif

.if exists(${.OBJDIR}/.cleanfiles)
CLEANFILES!=	xargs < ${.OBJDIR}/.cleanfiles
.endif
CLEANFILES+=	${SRCS:%.page=%.html} ${.OBJDIR}/.cleanfiles

install: all
	mkdir -p ${DESTDIR}
	${INSTALL} -c -o ${WEBOWN} -g ${WEBGRP} ${SRCS:%.page=%.html} \
		${DESTDIR}
.if defined(IMGS) && !empty(IMGS)
	${INSTALL} -c -o ${WEBOWN} -g ${WEBGRP} ${IMGS} ${DESTDIR}
.endif
.if defined(DATA) && !empty(DATA)
	${INSTALL} -c -o ${WEBOWN} -g ${WEBGRP} ${DATA} ${DESTDIR}
.endif
	${INSTALL} -c -o ${WEBOWN} -g ${WEBGRP} ${CSS_STYLESHEET} \
		${DESTDIR}
.if defined(INDEXLINK) && !empty(INDEXLINK)
	ln -sf ${DESTDIR}/${INDEXLINK} ${DESTDIR}/index.html
.endif

clean:
	rm -f ${CLEANFILES}
