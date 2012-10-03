.PHONY: clean install dist deb

all:
	@echo "Nothing to compile. Use 'make install' to install Firetable."

clean:
	@rm -rf build
	@rm -f firetable-*.tar.gz
	@rm -f firetable_*.deb

install:
	install -D -m 0755 src/firetable ${DESTDIR}/usr/sbin/firetable
	install -d -m 0755 ${DESTDIR}/etc/firetable
	install -m 0644 config/* ${DESTDIR}/etc/firetable
	install -D -m 0644 man/firetable.1 ${DESTDIR}/usr/share/man/man1/firetable.1

dist:
	extra/make_source_package

deb:
	extra/make_debian_package
