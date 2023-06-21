all: up

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
	mkdir -p /home/btaha/data/DataBase
	mkdir -p /home/btaha/data/WordPress
clear_volumes:
	sudo rm -rf /home/btaha/data/DataBase/*
	sudo rm -rf /home/btaha/data/WordPress/*
rmi:
	docker rmi $$(docker images -q)
clean: down rmi
fclean: clear_volumes down rmi
reboot: clean up
