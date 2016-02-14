SRC_WINDOWS=https://s3.amazonaws.com/chipkit/compilers/pic32-tools-win32-image-20140530.zip
SRC_LINUX=https://s3.amazonaws.com/chipkit/compilers/pic32-tools-Linux32-image-20140530.zip
SRC_OSX=https://s3.amazonaws.com/chipkit/compilers/pic32-tools-Darwin-image-20140530.zip
SRC_ARM=https://s3.amazonaws.com/chipkit/compilers/pic32-tools-arm-linux-image-20140530.zip

build:

install: install-${DEB_HOST_ARCH}

install-linux-amd64:
	echo "Downloading compiler archive..."
	wget -q -c -O pic32-tools-linux-amd64.zip ${SRC_LINUX}
	mkdir -p tmp
	echo "Extracting compiler archive..."
	unzip -qq -d tmp pic32-tools-linux-amd64.zip
	find tmp -name '*\*-gdb.py' -delete
	mkdir -p ${DESTDIR}/compilers
	mv tmp/pic32-tools ${DESTDIR}/compilers/pic32-tools-452
	cp config/compiler.txt ${DESTDIR}/compilers/pic32-tools-452/compiler.txt
	cp config/libc.a ${DESTDIR}/compilers/pic32-tools-452/pic32mx/lib/libc.a
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools-452/bin/*
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools-452/pic32mx/bin/*
	rm -rf tmp

install-linux-i386:
	echo "Downloading compiler archive..."
	wget -q -c -O pic32-tools-linux-i386.zip ${SRC_LINUX}
	mkdir -p tmp
	echo "Extracting compiler archive..."
	unzip -qq -d tmp pic32-tools-linux-i386.zip
	find tmp -name '*\*-gdb.py' -delete
	mkdir -p ${DESTDIR}/compilers
	mv tmp/pic32-tools ${DESTDIR}/compilers/pic32-tools-452
	cp config/compiler.txt ${DESTDIR}/compilers/pic32-tools-452/compiler.txt
	cp config/libc.a ${DESTDIR}/compilers/pic32-tools-452/pic32mx/lib/libc.a
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools-452/bin/*
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools-452/pic32mx/bin/*
	rm -rf tmp

install-linux-armhf:
	echo "Downloading compiler archive..."
	wget -q -c -O pic32-tools-linux-armhf.zip ${SRC_ARM}
	mkdir -p tmp
	echo "Extracting compiler archive..."
	unzip -qq -d tmp pic32-tools-linux-armhf.zip
	find tmp -name '*\*-gdb.py' -delete
	mkdir -p ${DESTDIR}/compilers
	mv tmp/pic32-tools ${DESTDIR}/compilers/pic32-tools-452
	cp config/compiler.txt ${DESTDIR}/compilers/pic32-tools-452/compiler.txt
	cp config/libc.a ${DESTDIR}/compilers/pic32-tools-452/pic32mx/lib/libc.a
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools-452/bin/*
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools-452/pic32mx/bin/*
	rm -rf tmp

install-linux-armel:
	echo "Downloading compiler archive..."
	wget -q -c -O pic32-tools-linux-armel.zip ${SRC_ARM}
	mkdir -p tmp
	echo "Extracting compiler archive..."
	unzip -qq -d tmp pic32-tools-linux-armel.zip
	find tmp -name '*\*-gdb.py' -delete
	mkdir -p ${DESTDIR}/compilers
	mv tmp/pic32-tools ${DESTDIR}/compilers/pic32-tools-452
	cp config/compiler.txt ${DESTDIR}/compilers/pic32-tools-452/compiler.txt
	cp config/libc.a ${DESTDIR}/compilers/pic32-tools-452/pic32mx/lib/libc.a
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools-452/bin/*
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools-452/pic32mx/bin/*
	rm -rf tmp

install-windows-amd64:
	echo "Downloading compiler archive..."
	wget -q -c -O pic32-tools-windows-amd64.zip ${SRC_WINDOWS}
	mkdir -p tmp
	echo "Extracting compiler archive..."
	unzip -qq -d tmp pic32-tools-windows-amd64.zip
	find tmp -name '*\*-gdb.py' -delete
	mkdir -p ${DESTDIR}/compilers
	mv tmp/pic32-tools ${DESTDIR}/compilers/pic32-tools-452
	cp config/compiler.txt ${DESTDIR}/compilers/pic32-tools-452/compiler.txt
	cp config/libc.a ${DESTDIR}/compilers/pic32-tools-452/pic32mx/lib/libc.a
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools-452/bin/*
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools-452/pic32mx/bin/*
	rm -rf tmp

install-windows-i386:
	echo "Downloading compiler archive..."
	wget -q -c -O pic32-tools-windows-i386.zip ${SRC_WINDOWS}
	mkdir -p tmp
	echo "Extracting compiler archive..."
	unzip -qq -d tmp pic32-tools-windows-i386.zip
	find tmp -name '*\*-gdb.py' -delete
	mkdir -p ${DESTDIR}/compilers
	mv tmp/pic32-tools ${DESTDIR}/compilers/pic32-tools-452
	cp config/compiler.txt ${DESTDIR}/compilers/pic32-tools-452/compiler.txt
	cp config/libc.a ${DESTDIR}/compilers/pic32-tools-452/pic32mx/lib/libc.a
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools-452/bin/*
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools-452/pic32mx/bin/*
	rm -rf tmp

install-darwin-amd64:
	echo "Downloading compiler archive..."
	wget -q -c -O pic32-tools-darwin-amd64.zip ${SRC_OSX}
	mkdir -p tmp
	echo "Extracting compiler archive..."
	unzip -qq -d tmp pic32-tools-darwin-amd64.zip
	find tmp -name '*\*-gdb.py' -delete
	mkdir -p ${DESTDIR}/compilers
	mv tmp/pic32-tools ${DESTDIR}/compilers/pic32-tools-452
	cp config/compiler.txt ${DESTDIR}/compilers/pic32-tools-452/compiler.txt
	cp config/libc.a ${DESTDIR}/compilers/pic32-tools-452/pic32mx/lib/libc.a
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools-452/bin/*
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools-452/pic32mx/bin/*
	rm -rf tmp

packages:
	upkg-buildpackage -B -alinux-amd64
	upkg-buildpackage -B -alinux-i386
	upkg-buildpackage -B -alinux-armhf
	upkg-buildpackage -B -alinux-armel
	upkg-buildpackage -B -adarwin-amd64
	upkg-buildpackage -B -awindows-amd64
	upkg-buildpackage -B -awindows-i386
