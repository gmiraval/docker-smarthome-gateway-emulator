# docker-smarthome-gateway-emulator

1- Build the docker
> docker build -t smarthome:1.1 .

2- Start the execution of the docker. The product_id (mac address) is configured via env var. 
The zzzz is the port where we're going to receive the REST commands for the sensors status
The 5051 is the port where we're going to receive the REST commands for the sensors status
> docker run -d -p zzzz:5051 -e product_id='aa:bb:cc:dd:ee:ff' --name <name> smarthome:1.1 


3- View logs
> docker logs --follow <name>
