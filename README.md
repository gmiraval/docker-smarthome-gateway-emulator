# docker-smarthome-gateway-emulator

1- Build the docker
> docker build -t smarthome:1.1

2- Start the execution of the docker
> docker run -it smarthome:1.1

3- Once inside the docker start the gateway emulator application
> cd home; ./home/protocol_manager

The MAC address of the device can be changed in the dockerfile

