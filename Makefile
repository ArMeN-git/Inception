# ARGS

DIRWP	=	/home/argrigor/data/wp
DIRDB	=	/home/argrigor/data/db

# CMD

all:
		@echo "127.0.0.1	argrigor.42.fr" >> /etc/hosts
		@sudo mkdir -p $(DIRWP)
		@sudo mkdir -p $(DIRDB)
		@docker-compose -f srcs/docker-compose.yml up --build -d

up:
		@sudo mkdir -p $(DIRWP)
		@sudo mkdir -p $(DIRDB)
		@docker-compose -f srcs/docker-compose.yml up -d

down:
		@docker-compose -f srcs/docker-compose.yml down

clean:
		@chmod 744 clean.sh
		@./clean.sh

.PHONY:	all up down clean info
