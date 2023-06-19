all: up

up: volumes
	docker-compose -f ./srcs/docker-compose.yml up
start:
	docker-compose -f ./srcs/docker-compose.yml start
restart:
	docker-compose -f ./srcs/docker-compose.yml restart
down:
	docker-compose -f ./srcs/docker-compose.yml down
stop:
	docker-compose -f ./srcs/docker-compose.yml stop
status:
	docker-compose -f ./srcs/docker-compose.yml ps
volumes:
	mkdir -p /home/inception/data/DataBase
	mkdir -p /home/inception/data/WordPress
clear_volumes:
	rm -rf /home/inception/data/DataBase/*
	rm -rf /home/inception/data/WordPress/*
