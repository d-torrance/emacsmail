INSTALL = install
prefix = /usr/local
bindir = $(prefix)/bin
applicationsdir = $(prefix)/share/applications

.PHONY: all install uninstall mime
all:

install: $(DESTDIR)$(bindir) $(DESTDIR)$(applicationsdir)
	$(INSTALL) emacsmail $(DESTDIR)$(bindir)/emacsmail
	$(INSTALL) -m 644 emacsmail.desktop \
		$(DESTDIR)$(applicationsdir)/emacsmail.desktop

uninstall:
	rm $(DESTDIR)$(bindir)/emacsmail
	rm $(DESTDIR)$(applicationsdir)/emacsmail.desktop

mime:
	xdg-mime default emacsmail.desktop x-scheme-handler/mailto

$(DESTDIR)$(bindir): $(DESTDIR)
	mkdir -p $@

$(DESTDIR)$(applicationsdir): $(DESTDIR)
	mkdir -p $@

$(DESTDIR):
	mkdir -p $@
