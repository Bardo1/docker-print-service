# Print service in docker

Run a print service in Docker using the cups daemon.

## Build image

Checkout the source:
```
git clone git@github.com:jeanfi/docker-print-service.git
```

and build:
```
docker-compose build
```

## Run

To run a Docker container with the print service:
```
docker-compose up
```

Open https://docker_host:631 and configure the printer.
