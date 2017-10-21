# PB (PhoneBook)

PB (Phone Book) Contact list management tools.

## Dependencies

- Ruby version should be **2.4.+**.
- Node version should be **>=4.6.0**.
- Rails  **5.0.+**.
- mysql
- yarn
- docker
- linux based systems

## Get Started

After cloning this repository, run the below command to setup the project.

```bash
./bin/setup
```

## Database configuration

Create database user and password from mysql root.

```
`CREATE USER 'my_mysql'@'localhost' IDENTIFIED BY 'welcome1';`
`GRANT ALL PRIVILEGES ON * . * TO 'my_mysql'@'localhost';`
`FLUSH PRIVILEGES;`
```

If your running rails app local machine, change the host as `localhost` in database.yml or
if the app running inside the docker container use `mysql` service as host

## Run application in docker
Docker is a Linux based micro container. To start the application inside docker.

```
docker-compose up
```
## Run Spec

PhoneBook app has rspec test cases. User can run specs

`rspec`


