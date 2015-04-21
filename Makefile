# Target file and the install directory
OUTPUTFILE= hello
INSTALLDIR= ../binaries
CFLAGS+= -O2
# Default target
.PHONY: all
all: $(OUTPUTFILE)
# Building output file from source file
$(OUTPUTFILE): $(OUTPUTFILE).cpp
# Copying output file to the install subdirectory
.PHONY: install
install:
	mkdir -p $(INSTALLDIR)
	cp -p $(OUTPUTFILE) $(INSTALLDIR)
# Deleting output file
.PHONY: clean
clean:
	rm -f $(OUTPUTFILE)
# Deinstalling application file
.PHONY: deinstall
deinstall:
	rm -f $(INSTALLDIR)/$(OUTPUTFILE)
