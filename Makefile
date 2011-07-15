build:
	mkdir -p build
	cp -r admin catalog config.php download image index.php php.ini system build

clean:
	rm -r build

install: build
	mkdir /var/opencart
	cp -r build/* /var/opencart

.PHONY: install clean

default: build
