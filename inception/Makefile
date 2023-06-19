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
	mkdir -p /home/btaha/data/DataBase
	mkdir -p /home/btaha/data/WordPress
clear_volumes:
	rm -rf /home/btaha/data/DataBase/*
	rm -rf /home/btaha/data/WordPress/*
