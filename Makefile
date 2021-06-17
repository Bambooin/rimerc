# build script for rimerc
releasePath=release

.PHONY: all pacakge archive install clean

all: archive

pacakge:
	./script/package.sh

archive: pacakge
	./script/archive.sh

clean:
	rm -rf ${releasePath}

install: pacakge
	# install
