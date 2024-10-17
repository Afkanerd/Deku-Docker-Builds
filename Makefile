
REPOS=repos

BACK-END-REST=back-end-rest
FRONT-END-REACT=front-end-react
RABBITMQ=rabbitmq

make: clone

deps:
	@mkdir -p ${REPOS}

clone: deps
	@git clone https://github.com/deku-messaging/Deku-Cloud-BE-REST.git ${REPOS}/${BACK-END-REST} & \
	git clone https://github.com/deku-messaging/Deku-Cloud-FE-React.git ${REPOS}/${FRONT-END-REACT} & \
	git clone https://github.com/smswithoutborders/SMSWithoutBorders-RabbitMQ.git ${REPOS}/${RABBITMQ}
	