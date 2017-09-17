# Rackspace Dynamic DNS

Will update a provided DNS name A record based on the public IPv4 of your internet connection. Requires an already configured Rackspace Cloud DNS account and domain, as well as a pre-existing A record in the domain specified.

### Requirements

* An existing account with Rackspace Public Cloud
* Domain configured in Cloud DNS
* An existing A record matching the required name
* Config file with credentials

### Credentials File

```
#!/bin/bash
RSUSER=<username>
RSAPIKEY=<apikey>
RSPATH=~/bin/rsdns/
```

### Execution

```sh
    docker run --rm -e DYN=dyn.mydomain.com \
        -v </path/to/rsdns_config>:/root/.rsdns_config:ro \
        kenperkins/rackspace-dynamic-dns
```