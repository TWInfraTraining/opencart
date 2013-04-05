build:
	mkdir -p build
	cp -r admin catalog config.php download image index.php php.ini system build

clean:
	rm -rf build
	rm -rf *.deb
	rm -f tests.tgz

distclean: clean
	dh_clean

install: build
	mkdir -p $(DESTDIR)/var/opencart
	cp -r build/* $(DESTDIR)/var/opencart
	mkdir -p $(DESTDIR)/var/opencart/image/cache/
	mkdir -p $(DESTDIR)/var/opencart/cache/

	chown -R www-data:www-data $(DESTDIR)/var/opencart
	chmod 0755 $(DESTDIR)/var/opencart/image/
	chmod 0755 $(DESTDIR)/var/opencart/image/cache/
	chmod 0755 $(DESTDIR)/var/opencart/cache/
	chmod 0755 $(DESTDIR)/var/opencart/download/
	chmod 0644 $(DESTDIR)/var/opencart/config.php
	chmod 0644 $(DESTDIR)/var/opencart/admin/config.php

	mkdir -p $(DESTDIR)/etc/apache2/sites-available
	cp apache-site $(DESTDIR)/etc/apache2/sites-available/opencart

opencart.deb:
	fakeroot debian/rules binary

package: opencart.deb

tests.tgz:
	tar czvf tests.tgz -C tests features

package-tests: tests.tgz

.PHONY: install clean distclean package

default: build
