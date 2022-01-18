# README

This README shows the step-by-step instruction on how to start and run this dockerized Rails API app.

## Ruby version

Ruby 2.6.5

## Rails version

Rails 5.2.4

## Postgresql version

12.1

## How to run this app


### Clone this repo anywhere on your maching

First, using the shell console of your computer, navigate to an empty folder on your machine where you'd like so save this app.

Next clone into your chosen folder using the following code:
```
git clone https://github.com/ImsirovicAjdin/dockerized-rails-api.git
```

## Build the project

To build the project, run:
```
docker-compose up
```

## Create and migrate the db

Next, you'll create and run the database:
```
docker-compose run api rails db:create
docker-compose run api rails db:migrate
```

## Run shell commands

You don't have to run `docker-compose up` to be able to run shell commands **in the container**.

Instead, you can do this:
```
docker-compose run api sh
```

Then, you can run any command that you like, such as:
```
rails c
```

The above command will open a Rails console so you can have a look at the database entries (there are none to begin with, but you can add your own through `rails c`).

Happy coding!

