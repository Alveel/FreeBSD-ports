# $FreeBSD$

PORTNAME=	clique
PORTVERSION=	0.3.10
CATEGORIES=	devel
PKGNAMEPREFIX=	erlang-

MAINTAINER=	erlang@FreeBSD.org
COMMENT=	CLI Framework for Erlang

LICENSE=	APACHE20

USES=		erlang:rebar
USE_GITHUB=	yes
GH_ACCOUNT=	basho

ERL_BUILD_DEPS=	devel/erlang-cuttlefish
ERL_RUN_DEPS:=	${ERL_BUILD_DEPS}

OPTIONS_DEFINE=	DOCS

.include <bsd.port.mk>
