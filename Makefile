build:
	mkdir -p build
	cp -r admin catalog config.php download image index.php php.ini system build

clean:
	rm -rf build

install: build
	mkdir -p $(DESTDIR)/var/opencart
	cp -r build/* $(DESTDIR)/var/opencart

.PHONY: install clean

default: build
