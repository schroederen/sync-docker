Resilio Connect Agent
===============

Sync uses peer-to-peer technology to provide fast, private file sharing for teams and individuals. By skipping the cloud, transfers can be significantly faster because files take the shortest path between devices. Sync does not store your information on servers in the cloud, avoiding cloud privacy concerns.

# Build Image
`docker build --no-cache --tag resilio/agent .`

# Usage
```
    DATA_FOLDER=/path/to/data/folder/on/the/host

    mkdir -p $DATA_FOLDER

    docker run -d \
      -v $DATA_FOLDER:/storage \
      --restart on-failure \
      resilio/agent
```

Swarm control
```
./swarmctrl spawn 100   # create 100 containers
./swarmctrl attach 1    # attach to first container
./swarmctrl destroy 100 # destroy all 100 containers
```

# Volume

* /storage - State files and Sync folders

# Help

Additional info can be found at [help center](https://help.getsync.com).
If you have any questions left, please contact us via [support page](https://help.getsync.com/hc/en-us/requests/new?ticket_form_id=91563).
