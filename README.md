# syscheck
InSpec system validation scripts

# Create a profile
```
docker container run --rm --interactive --tty \
    --mount type=bind,source="$(pwd)",target=/share \
    docker.io/boxcutter/cinc-auditor init profile example
```

```
docker container run --rm --interactive --tty \
  --mount type=bind,source="$(pwd)",target=/share \
  docker.io/boxcutter/cinc-auditor exec example \
    --key-files /path/keys/ssh.key \
    --target ssh://root@192.168.1.12
```
