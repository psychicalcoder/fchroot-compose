.PHONY: install uninstall

PREFIX=${HOME}/.local/

install:
	install -m 755 ./fchroot-compose ${PREFIX}/bin/fchroot-compose

uninstall:
	rm ${PREFIX}/bin/fchroot-compose
