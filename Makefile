# Created by: olevole
# $FreeBSD: $

PORTNAME=	kwatchdog-kmod
PORTVERSION=	0.2
DISTVERSIONPREFIX=	v
CATEGORIES=	sysutils
PKGNAMESUFFIX=	-kmod

MAINTAINER=	olevole@olevole.ru
COMMENT=	FreeBSD kernel-side watchdog

LICENSE=	BSD2CLAUSE

MAKE_JOBS_UNSAFE=yes

ONLY_FOR_ARCHS=		amd64 i386
ONLY_FOR_ARCHS_REASON=	untested on any other arch

SUB_FILES=	pkg-message

USES=		kmod uidfix
USE_GITHUB=	yes
GH_ACCOUNT=	olevole

PLIST_FILES=	${KMODDIR}/kwatchdog.ko

.include <bsd.port.mk>
