
REPOS=repos

CLOUD=deku-cloud

make: clone

deps:
	@mkdir -p ${REPOS}

clone: deps
	@git clone https://github.com/Afkanerd/Deku-Cloud.git ${REPOS}/${CLOUD}