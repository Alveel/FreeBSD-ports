# Created by: Matthieu BOUTHORS <matthieu@labs.fr>
# $FreeBSD$

PORTNAME=	sslscan
DISTVERSION=	1.11.11-16
DISTVERSIONSUFFIX=  -g96ad4ff
CATEGORIES=	security

MAINTAINER=	gavin@FreeBSD.org
COMMENT=	SSLScan is a fast SSL port scanner

LICENSE=	GPLv3

OPTIONS_DEFINE=	UNSAFESSL
OPTIONS_DEFAULT_amd64=	UNSAFESSL
UNSAFESSL_DESC=	Use openssl-unsafe as libssl provider (SSLv2 etc.)

USES=		gmake
USE_GITHUB=	yes
GH_ACCOUNT=	rbsec

UNSAFESSL_USES_OFF=	ssl
UNSAFESSL_BUILD_DEPENDS=	${LOCALBASE}/openssl-unsafe/lib/libssl.so:security/openssl-unsafe
UNSAFESSL_RUN_DEPENDS=		${UNSAFESSL_BUILD_DEPENDS}
UNSAFESSL_CFLAGS=	-I${LOCALBASE}/openssl-unsafe/include \
			-Wl,-rpath,${LOCALBASE}/openssl-unsafe/lib
UNSAFESSL_LDFLAGS=	-L${LOCALBASE}/openssl-unsafe/lib \
			-Wl,-rpath,${LOCALBASE}/openssl-unsafe/lib
UNSAFESSL_ALL_TARGET=	sslscan

.include <bsd.port.pre.mk>

.if empty(PORT_OPTIONS:MUNSAFESSL) && ${SSL_DEFAULT:Mopenssl-devel}
BROKEN=		Does not build with openssl-devel
.endif

.include <bsd.port.post.mk>
