INSTALL = install
prefix = /usr/local
bindir = $(prefix)/bin
applicationsdir = $(prefix)/share/applications

all:

install: $(DESTDIR)$(bindir) $(DESTDIR)$(applicationsdir)
	$(INSTALL) emacsmail $(DESTDIR)$(bindir)/emacsmail
	$(INSTALL) -m 644 emacsmail.desktop \
		$(DESTDIR)$(applicationsdir)/emacsmail.desktop

$(DESTDIR)$(bindir): $(DESTDIR)
	mkdir -p $@

$(DESTDIR)$(applicationsdir): $(DESTDIR)
	mkdir -p $@

$(DESTDIR):
	mkdir -p $@
