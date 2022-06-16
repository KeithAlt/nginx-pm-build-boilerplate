### INSTRUCTIONS ###
> 1.) $git clone https://github.com/KeithAlt/nginx-pm-build-boilerplate

> 2.) $cd {rootDir}\ums-demo-nginx-pm\scripts

> 3.) $chmod +x ubuntu_build_service.sh

> 4.) $./ubuntu_build_service.sh

> 5.) Navigate to the newly created ``docker-compose.yml`` & insert:
```yml
version: "3"
services:
  app:
    image: 'jc21/nginx-proxy-manager:latest'
    restart: unless-stopped
    ports:
      # These ports are in format <host-port>:<container-port>
      - '80:80' # Public HTTP Port
      - '443:443' # Public HTTPS Port
      - '81:81' # Admin Web Port
      # Add any other Stream port you want to expose
      # - '21:21' # FTP
    # Uncomment the next line if you uncomment anything in the section
    # environment:
      # Uncomment this if you want to change the location of 
      # the SQLite DB file within the container
      # DB_SQLITE_FILE: "/data/database.sqlite"
      # Uncomment this if IPv6 is not enabled on your host
      # DISABLE_IPV6: 'true'
    volumes:
      - ./data:/data
      - ./letsencrypt:/etc/letsencrypt
      
```
Use nano to configure this ``.yml`` as needed.
