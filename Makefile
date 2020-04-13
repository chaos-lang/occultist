SHELL=/bin/bash

requirements:
	apt update
	apt install jq

install:
	chmod +x occultist.sh
	cp occultist.sh /usr/local/bin/occultist
