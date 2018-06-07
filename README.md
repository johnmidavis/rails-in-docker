# RAILS IN DOCKER

##  PURPOSE
 
I want to create a rail application with will run happily in a docker container and be able to develop in the container. 

I am stealing this initially from https://blog.codeship.com/running-rails-development-environment-docker/ .  There are some corrections in the comments. What you get at the end of the tutorial is not very interesting - the default rails page and a postgres DB which is unused. 

## SETUP

I am assuming that you have Docker engine installed - I am using 18.05.0 - there are several resources to do this on your favorite OS. Please smoke test and see that you can create any old container and run docker-compose without error. 

## RUNNING

In the command line in some useful directory:

    git clone https://github.com/johnmidavis/rails-in-docker.git
    cd rails-in-docker
    docker-compose build
    docker-compose up -d
    docker-compose run app rake db:create
    docker-compose run app rake db:migrate

## DEVELOPING

    docker-compose run app << rails dev command >> 

You are running your generate, db:migrate, etc commands in the container using the tools inside the container.

### missing:

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
