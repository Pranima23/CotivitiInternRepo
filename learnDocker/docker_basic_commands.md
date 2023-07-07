##### docker pull <image_name>
##### docker pull <image_name>:<tag>
- docker pull redis
- docker pull redis:latest
- downloads image from docker hub
- tag is version of image

##### docker images
- check all local existing images
- tag is version of image

##### docker run <image_name> 
- docker run redis
- pulls image and starts container
- starts container in the terminal in the attached mode
- we can terminate it with ctrl+c

docker ps
- lists all running containers

docker run -d <image_name>
- docker run -d redis
- start container in detached mode (running in background??)
- returns container id

docker stop <container_id>
docker stop <container_name>
- docker stop 58c2c023ad55
- stops the container

docker start <container_id>
docker start <container_name>
- docker start 58c2c023ad55
- starts the stopped container

docker ps -a
- list all running and stopped containers


Container port vs Host port
- Two containers can run on one container port but not on one host port
- So, Port binding is necessary

docker run -p<host_port>:<container_port>
- docker run -p6000:6379
- binds container port(6379) to host port(6000) and runs the container there

docker run -d -p<>:<>



docker run --name <name_for_container> <image_name>
- docker run --name redis-4 redis:4.0
- specifies name for the container
- by default, random name is generated and assigned

----------------------
For debugging
----------------------

docker logs <container_id>
docker logs <container_name>
- docker logs 92011457451f
- docker logs gracious_newton
- displays the logs of the specified container

docker exec -it <container_name or container_id> /bin/bash
- docker exec -it redis-4 /bin/bash
- it means interactive terminal
- exec is used to view docker container configurations, etc
- helps to execute a lot of stuff from docker container for debugging purposes
- exit to exit



