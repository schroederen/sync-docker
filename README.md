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

Spawn swarm
```
for i in {1..100}; do docker run --name rslagent$i -d --restart on-failure resilio/agent; done;
```

Stop swarm
```
for i in {1..100}; do docker rm -f rslagent$i  &; done;
```

# Volume

* /storage - State files and Sync folders

# Help

Additional info can be found at [help center](https://help.getsync.com).
If you have any questions left, please contact us via [support page](https://help.getsync.com/hc/en-us/requests/new?ticket_form_id=91563).
