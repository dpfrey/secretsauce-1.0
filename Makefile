DESTDIR ?= /

all:
	echo "Doing nothing"

install:
	install -d --mode=0644 $(DESTDIR)/bin
	install --mode=0755 secretsauce $(DESTDIR)/bin/

clean:
	echo "cleaning"
