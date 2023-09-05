all: build
	# ./srcs/requirements/mariadb/tools/data.sh
	@docker compose -f ./srcs/docker-compose.yaml up
re: fclean
	@docker compose -f ./srcs/docker-compose.yaml build --no-cache
build:
	@docker compose -f ./srcs/docker-compose.yaml build
down:
	@docker compose -f ./srcs/docker-compose.yaml down
fclean: down
	@docker system prune -a --force
	# @docker volume rm -f $(docker volume ls -q) >/dev/null 2>&1
	sudo rm -rf /home/atouati/data/db/* && sudo  rm -rf /home/atouati/data/wp/*