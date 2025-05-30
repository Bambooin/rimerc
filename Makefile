# build script for rimerc
releasePath=release

.PHONY: all pacakge archive sha256sum release install clean

all: release

pacakge:
	./script/package.sh

archive: pacakge
	./script/archive.sh

sha256sum: archive
	./script/sha256sum.sh

release: sha256sum

clean:
	rm -rf ${releasePath}

install: pacakge
	# install

shfmt:
	find . -type f -name "*.sh" -exec shfmt -w -i 2 {} \;

# generate changlog
cliff:
	git-cliff -o CHANGELOG.md
