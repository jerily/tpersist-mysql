PREFIX ?= /usr/local
pkgdir = $(DESTDIR)$(PREFIX)/lib/tpersist-mysql0.1.8

.PHONY: install
install:
	install -d "$(pkgdir)"
	install -m 644 pkgIndex.tcl mysql.tcl LICENSE "$(pkgdir)"
