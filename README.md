# README
RubyBackTest App

Before you start, make sure you have the following installed:

- Ruby 2.7.0

- Rails 5.x

- Docker and Docker Compose

- PostgreSQL

1 - Clone the Repository:

https://github.com/gmkoeb/ruby_back_test.git

2 - cd into ruby_back_test

3 - Build and Run the Docker Containers:

docker-compose up --build

4 - Create and setup the database:
    In the root directory type:
    docker exec ruby_back_test-web-1 rails db:setup

4.1 - Or, you can connect to the docker container with the command:
        docker exec ruby_back_test-web-1 bash
4.2 - then, inside the container run the command:
        rails db:setup
5. The web application will be up in localhost:3000

6. To run the tests you can follow 4.1 instructions. Inside the docker container run the command:
    bundle exec rspec
