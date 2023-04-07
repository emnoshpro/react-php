stop:
	sudo ~/bin/docker-compose down
clean:
	sudo ~/bin/docker-compose down -v --rmi local
	sudo docker volume prune
	sudo docker system prune
build:
	sudo ~/bin/docker-compose up --build
start:
	sudo ~/bin/docker-compose up --build -d
connect:
	sudo docker exec -it $(CON_NAME) /bin/sh
reload:
	sudo docker exec -it $(CON_NAME) nginx -s reload
clog:
	sudo docker logs $(CON_NAME)
ps:
	sudo ~/bin/docker-compose ps
network:
	sudo docker network ls
ninspect:
	sudo docker network inspect $(CON_NAME)
inspect:
	sudo docker inspect $(CON_NAME)
log:
	sudo journalctl -u docker -f
logs:
	sudo ~/bin/docker-compose logs -f
