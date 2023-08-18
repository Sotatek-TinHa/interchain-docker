
# Use Golang Docker Image
FROM golang:1.20

# Set working dir
WORKDIR /planet

# Install Ignite
RUN curl -L https://get.ignite.com/cli@v0.26.1! | bash

# Copy go.mod file
COPY go.mod /planet/go.mod
RUN go mod download
RUN rm /planet/go.mod

# Copy source files
COPY . .

# ENTRYPOINT ["/bin/bash", "-c", "/home/planet/run-planet.sh"]

# Create the image
# $ docker build -f Dockerfile . -t planet
# To build container
# $ docker create --name planet -i -v $(pwd):/planet -w /planet planet
# $ docker start planet
# To run server on it
# $ docker exec -it planet ignite chain serve -c earth.yml --reset-once