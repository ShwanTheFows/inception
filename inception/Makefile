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
	sudo mkdir -p /home/btaha/data/DataBase
	sudo mkdir -p /home/btaha/data/WordPress
clear_volumes:
	sudo rm -rf /home/btaha/data/DataBase/*
	sudo rm -rf /home/btaha/data/WordPress/*
