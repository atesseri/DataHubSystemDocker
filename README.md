# DataHubSystemDocker
Experimental DataHubSystem (a.k.a. DHuS) Docker image

### Scope
This report aims to dig into Docker technology and discover new ways and places 

### Dependencies
* `dhus-software-x.y.z-w-distribution.shar`

### Build Docker image
* `docker build -t dhus .`

### Run it
* `docker run --name dhus -d -v <YOUR_MAGIC_PATH>/local_dhus:local_dhus -p 8081:8081 dhus 127.0.0.1 8081 127.0.0.1 8081`

## Logs and GO!
tail -f your logs with `docker logs --follow dhus`, check if some erorr appears, if not... enjoy your DHuS here `http://localhost:8081` (when Server is ready...)
