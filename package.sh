#!/bin/bash
mkdir -p appstore-tgz

for d in */ ; do
    if [ -e "${d}Chart.yaml" ] || [ -e "${d}Chart.yml" ]
    then
        helm package $d --destination appstore-tgz
    fi
done

git checkout gh-pages
mv appstore-tgz/* .
helm repo index .


