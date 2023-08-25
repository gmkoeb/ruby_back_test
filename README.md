# README
RubyBackTest App

Before you start, make sure you have the following installed:
- Docker and Docker Compose
1 - Clone the Repository
2 - cd into ruby_back_test
3 - Build and Run the Docker Containers:
docker-compose up --build
4 - Get the container name using $ docker ps, for example:
$ docker ps
CONTAINER ID   IMAGE                COMMAND                          CREATED          STATUS          PORTS                                       NAMES
8ac864443f18   ruby_back_test_web   "bundle exec rails s\u2026"   15 seconds ago   Up 14 seconds   0.0.0.0:3000->3000/tcp, :::3000->3000/tcp   ruby_back_test_web_1
8441b1848960   postgres:latest      "docker-entrypoint.s\u2026"   15 seconds ago   Up 15 seconds   0.0.0.0:5432->5432/tcp, :::5432->5432/tcp   ruby_back_test_db_1
4.1 - Run the command docker exec <container name> rails db:setup
4.2 - Or, you can connect to the docker container with the command:
        docker exec -ti <container name> bash
4.3 - then, inside the container run the command:
        rails db:setup
5. The web application will be up in localhost:3000
6. To run the tests you can follow 4.2 instructions, then, inside the docker container run the command:
    bundle exec rspec
