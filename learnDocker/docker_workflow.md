## Docker Workflow
- Development
- CI/CD
- Deployment

During development we may need to create Docker Network to use multiple containers together.

Let us consider web development using mongodb and nodejs. To use mongodb, we need two images mongo and mongo-express.

### Commands for connecting two docker images in one network and running them

- -> docker network create mongo-network

- -> docker run -d -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=password --name mongodb --net mongo-network mongo

- -> docker run -d -p 8081:8081 -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin -e ME_CONFIG_MONGODB_ADMINPASSWORD=password --net mongo-network --name mongo-express -e ME_CONFIG_MONGODB_SERVER=mongodb mongo-express


### Instead of running separate commands we can use docker-compose

- first, we create mongo.yaml file
- then, we run the following command
-> docker-compose -f mongo.yaml up