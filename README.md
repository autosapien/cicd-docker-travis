This project uses docker and travis with git for CICD

## Available Scripts

In the project directory, you can run:

### Dev

`docker-compose up` 

Uses port 3000. browse to http://localhost/3000. One can edit files and live refresh works.

### Prod

`docker build -t autosapien/cicd .`

Builds the production container with nginx and to run the container use

`docker run -p 8080:80 autosapien/cicd`
