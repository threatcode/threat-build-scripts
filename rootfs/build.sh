#!/bin/bash
VERSION=$1
function bootstrap {
	ARCH=$1
	EDITION=threat
	echo "Building $EDITION-$ARCH"
	rm -r $EDITION-$ARCH/ || true
	debootstrap --arch=$ARCH --components=main,contrib,non-free --include=gnupg2,nano,base-files --exclude=threat-core $EDITION $EDITION-$ARCH https://deb.threat.sh/direct/threat/
	rm -rf $EDITION-$ARCH/var/cache/apt/* $EDITION-$ARCH/var/lib/apt/lists/*
	echo "Customizing $EDITION-$ARCH"
	echo "Done $EDITION-$ARCH"
}


mkdir -p images
for arch in amd64 i386 arm64 armhf; do
    bootstrap $arch
    tar cvfp - threat-$arch/ | xz -q -c --best --extreme - > images/Threat-rootfs-${VERSION}_$arch.tar.xz
    rm -rf threat-$arch
done
