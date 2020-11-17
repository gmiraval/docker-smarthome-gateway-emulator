# docker-smarthome-gateway-emulator

1- Build the docker
> docker build -t smarthome:1.1 .

2- Start the execution of the docker
> docker run -it -p 5051:5051 smarthome:1.1

The MAC address of the device can be changed in the dockerfile
The 5051 is the port where we're going to receive the REST commands for the sensors status
