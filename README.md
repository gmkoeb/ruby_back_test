# README
RubyBackTest App

Before you start, make sure you have the following installed:
- Docker and Docker Compose

To run the application you must:
1. Clone the Repository
2. cd into ruby_back_test
3. Build and Run the Docker Containers:
   
        docker-compose up --build
   
4. Get the container name using $ docker ps, for example:
  ![image](https://github.com/gmkoeb/ruby_back_test/assets/105087841/4ee11192-4bb2-421d-9246-45cc1227c24b)

5. Run the command:
 
        docker exec <container name> rails db:setup

6. Or, you can connect to the docker container with the command:
   
        docker exec -ti <container name> bash
        
7. Inside the container run the command:

        rails db:setup
   
   The web application will be up in localhost:3000 

8. To run the tests you can follow step 6 instructions, then, inside the docker container run the command:
   
        bundle exec rspec
