all: up

build: create_volumes
	docker-compose -f ./srcs/docker-compose.yml build

up: create_volumes
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

create_volumes:
	mkdir -p /home/$$USER/data/DataBase
	mkdir -p /home/$$USER/data/WordPress

clear_volumes:
	sudo rm -rf /home/$$USER/data/DataBase/*
	sudo rm -rf /home/$$USER/data/WordPress/*

rmi:
	docker rmi $$(docker images -q)

clean: down rmi

fclean: clear_volumes down rmi

reboot: clean up
