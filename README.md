# HelloWorld

Runs two Node.js web servers behind [HAProxy](https://github.com/haproxy/haproxy) as a round robin load balancer with `docker-compose`. 

## Requirements:
 - `docker-compose` see [https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/) for instructions.

## Installation:
```
$ git clone https://github.com/CuttingRoomFloor/HelloWorld
$ cd HelloWorld
$ docker-compose up -d
```
The web application can be accessed on [http://localhost](http://localhost) using a web browser or from the command line using [curl](https://github.com/curl/curl) or [httpie](https://github.com/jakubroztocil/httpie) for example.

To stop use:
```
$ docker-compose down
```

### Notes:
- To reduce the memory footprint [Alpine Linux](https://alpinelinux.org/) was used. Static linked binaries are still preferable for containers for obvious reasons.
- [HAProxy](https://github.com/haproxy/haproxy) stats are exposed on port 70 (page is unprotected to keep the example simple)

