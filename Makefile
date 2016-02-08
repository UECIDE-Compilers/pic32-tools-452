SRC_WINDOWS=https://www.dropbox.com/sh/6prtzze1ts8gx4d/AADtVlvq7wx_rppCkJl-hIRra/pic32-tools-chipKIT-cxx-master-win32-image.zip?dl=1
SRC_LINUX=https://www.dropbox.com/sh/6prtzze1ts8gx4d/AACkXhxIjdqBmQECys1oeQTEa/pic32-tools-chipKIT-cxx-master-Linux32-image.zip?dl=1
SRC_OSX=https://www.dropbox.com/sh/6prtzze1ts8gx4d/AAC6cF49-VenaJjnfN6yYIuda/pic32-tools-chipKIT-cxx-master-Darwin-image.zip?dl=1
SRC_ARM=https://www.dropbox.com/sh/6prtzze1ts8gx4d/AAATHCQmzqCx-Ruk_U68XTbEa/pic32-tools-chipKIT-cxx-master-arm-linux-image.zip?dl=1


build:

install: install-${DEB_HOST_ARCH}

install-linux-amd64:
	echo "Downloading compiler archive..."
	wget -q -c -O pic32-tools-linux-amd64.zip https://github.com/chipKIT32/chipKIT-compiler-builds/releases/download/1.40-rc.2/pic32-tools-chipKIT-cxx-master-Linux32-image.zip
	mkdir -p tmp
	echo "Extracting compiler archive..."
	unzip -qq -d tmp pic32-tools-linux-amd64.zip
	find tmp -name '*\*-gdb.py' -delete
	mkdir -p ${DESTDIR}/compilers
	mv tmp/pic32-tools ${DESTDIR}/compilers/pic32-tools
	cp config/compiler.txt ${DESTDIR}/compilers/pic32-tools/compiler.txt
	cp config/libc.a ${DESTDIR}/compilers/pic32-tools/pic32mx/lib/libc.a
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools/bin/*
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools/pic32mx/bin/*
	rm -rf tmp

install-linux-i386:
	echo "Downloading compiler archive..."
	wget -q -c -O pic32-tools-linux-i386.zip https://github.com/chipKIT32/chipKIT-compiler-builds/releases/download/1.40-rc.2/pic32-tools-chipKIT-cxx-master-Linux32-image.zip
	mkdir -p tmp
	echo "Extracting compiler archive..."
	unzip -qq -d tmp pic32-tools-linux-i386.zip
	find tmp -name '*\*-gdb.py' -delete
	mkdir -p ${DESTDIR}/compilers
	mv tmp/pic32-tools ${DESTDIR}/compilers/pic32-tools
	cp config/compiler.txt ${DESTDIR}/compilers/pic32-tools/compiler.txt
	cp config/libc.a ${DESTDIR}/compilers/pic32-tools/pic32mx/lib/libc.a
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools/bin/*
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools/pic32mx/bin/*
	rm -rf tmp

install-linux-armhf:
	echo "Downloading compiler archive..."
	wget -q -c -O pic32-tools-linux-armhf.zip https://github.com/chipKIT32/chipKIT-compiler-builds/releases/download/1.40-rc.2/pic32-tools-chipKIT-cxx-master-arm-linux-image.zip
	mkdir -p tmp
	echo "Extracting compiler archive..."
	unzip -qq -d tmp pic32-tools-linux-armhf.zip
	find tmp -name '*\*-gdb.py' -delete
	mkdir -p ${DESTDIR}/compilers
	mv tmp/pic32-tools ${DESTDIR}/compilers/pic32-tools
	cp config/compiler.txt ${DESTDIR}/compilers/pic32-tools/compiler.txt
	cp config/libc.a ${DESTDIR}/compilers/pic32-tools/pic32mx/lib/libc.a
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools/bin/*
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools/pic32mx/bin/*
	rm -rf tmp

install-linux-armel:
	echo "Downloading compiler archive..."
	wget -q -c -O pic32-tools-linux-armel.zip https://github.com/chipKIT32/chipKIT-compiler-builds/releases/download/1.40-rc.2/pic32-tools-chipKIT-cxx-master-arm-linux-image.zip
	mkdir -p tmp
	echo "Extracting compiler archive..."
	unzip -qq -d tmp pic32-tools-linux-armel.zip
	find tmp -name '*\*-gdb.py' -delete
	mkdir -p ${DESTDIR}/compilers
	mv tmp/pic32-tools ${DESTDIR}/compilers/pic32-tools
	cp config/compiler.txt ${DESTDIR}/compilers/pic32-tools/compiler.txt
	cp config/libc.a ${DESTDIR}/compilers/pic32-tools/pic32mx/lib/libc.a
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools/bin/*
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools/pic32mx/bin/*
	rm -rf tmp

install-windows-amd64:
	echo "Downloading compiler archive..."
	wget -q -c -O pic32-tools-windows-amd64.zip https://github.com/chipKIT32/chipKIT-compiler-builds/releases/download/1.40-rc.2/pic32-tools-chipKIT-cxx-master-win32-image.zip
	mkdir -p tmp
	echo "Extracting compiler archive..."
	unzip -qq -d tmp pic32-tools-windows-amd64.zip
	find tmp -name '*\*-gdb.py' -delete
	mkdir -p ${DESTDIR}/compilers
	mv tmp/pic32-tools ${DESTDIR}/compilers/pic32-tools
	cp config/compiler.txt ${DESTDIR}/compilers/pic32-tools/compiler.txt
	cp config/libc.a ${DESTDIR}/compilers/pic32-tools/pic32mx/lib/libc.a
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools/bin/*
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools/pic32mx/bin/*
	rm -rf tmp

install-windows-i386:
	echo "Downloading compiler archive..."
	wget -q -c -O pic32-tools-windows-i386.zip https://github.com/chipKIT32/chipKIT-compiler-builds/releases/download/1.40-rc.2/pic32-tools-chipKIT-cxx-master-win32-image.zip
	mkdir -p tmp
	echo "Extracting compiler archive..."
	unzip -qq -d tmp pic32-tools-windows-i386.zip
	find tmp -name '*\*-gdb.py' -delete
	mkdir -p ${DESTDIR}/compilers
	mv tmp/pic32-tools ${DESTDIR}/compilers/pic32-tools
	cp config/compiler.txt ${DESTDIR}/compilers/pic32-tools/compiler.txt
	cp config/libc.a ${DESTDIR}/compilers/pic32-tools/pic32mx/lib/libc.a
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools/bin/*
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools/pic32mx/bin/*
	rm -rf tmp

install-darwin-amd64:
	echo "Downloading compiler archive..."
	wget -q -c -O pic32-tools-darwin-amd64.zip https://github.com/chipKIT32/chipKIT-compiler-builds/releases/download/1.40-rc.2/pic32-tools-chipKIT-cxx-master-Darwin-image.zip
	mkdir -p tmp
	echo "Extracting compiler archive..."
	unzip -qq -d tmp pic32-tools-darwin-amd64.zip
	find tmp -name '*\*-gdb.py' -delete
	mkdir -p ${DESTDIR}/compilers
	mv tmp/pic32-tools ${DESTDIR}/compilers/pic32-tools
	cp config/compiler.txt ${DESTDIR}/compilers/pic32-tools/compiler.txt
	cp config/libc.a ${DESTDIR}/compilers/pic32-tools/pic32mx/lib/libc.a
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools/bin/*
	chmod -R 0755 ${DESTDIR}/compilers/pic32-tools/pic32mx/bin/*
	rm -rf tmp

packages:
	upkg-buildpackage -B -alinux-amd64
	upkg-buildpackage -B -alinux-i386
	upkg-buildpackage -B -alinux-armhf
	upkg-buildpackage -B -alinux-armel
	upkg-buildpackage -B -adarwin-amd64
	upkg-buildpackage -B -awindows-amd64
	upkg-buildpackage -B -awindows-i386
