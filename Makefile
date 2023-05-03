
REPOS=repos

CLOUD=deku-cloud
WEB=web-cloud

make: clone

deps:
	@mkdir -p ${REPOS}

clone: deps
	@git clone https://github.com/Afkanerd/Deku-Cloud.git ${REPOS}/${CLOUD}
	@git clone https://github.com/deku-messaging/Deku-Web.git ${REPOS}/${WEB}