# $FreeBSD$

PORTNAME=	Net-IP-XS
PORTVERSION=	0.21
CATEGORIES=	net-mgmt perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:TOMHRR
PKGNAMEPREFIX=	p5-

MAINTAINER=	jaap@NLnetLabs.nl
COMMENT=	XS implementation of Net::IP

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		perl5
USE_PERL5=	configure

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/Net/IP/XS/XS.so

.include <bsd.port.mk>
