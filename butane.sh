#!bin/bash
docker run --interactive --rm --security-opt label=disable\
       --volume ${PWD}:/pwd --workdir /pwd quay.io/coreos/butane:release \
       --files-dir /pwd \
       --pretty --strict init.yaml > init.ign
