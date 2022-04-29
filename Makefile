include .env

build: 		 	## Build all docker containers.
	@docker-compose --env-file ./.env -f ./setup/docker-compose.yml build --no-cache

up: 	 		## Up all docker containers.
	@docker-compose --env-file ./.env -f ./setup/docker-compose.yml up -d

down: 	 		## Down all docker containers.
	@docker-compose -f ./setup/docker-compose.yml down

docker-clean:		## Remove all Containers, Images, Networks and Volumes.
	@bash ./setup/scripts/docker-clean.sh

dir-clean:		## Delete only containers directory.
	@bash ./setup/scripts/dir-clean.sh

clean:		## Down all docker containers and delete containers directory.
	@docker-compose -f ./setup/docker-compose.yml down
	bash ./setup/scripts/dir-clean.sh

ps: 	 		## List all docker containers running.
	@docker-compose -f ./setup/docker-compose.yml ps

permissions: 	 		## Adjust permissions.
	@bash ./setup/scripts/permissions.sh

first-install:    	## Execute the first start of the project.
	echo "First Install"
	make build
	make up
	make permissions