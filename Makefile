SHELL=/bin/bash

requirements:
	./requirements.sh

install: requirements
	chmod +x occultist.sh
	cp occultist.sh /usr/local/bin/occultist
