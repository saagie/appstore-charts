#!/bin/bash
mkdir -p appstore-tgz

for d in */ ; do
    if [ -e "${d}Chart.yaml" ] || [ -e "${d}Chart.yml" ]
    then
        helm package $d --destination appstore-tgz
    fi
done
commit=$(git log -1 --pretty=%B)
sha1=$(git rev-parse HEAD)
echo $commit
message=$(git checkout gh-pages)
if [  $? -ne 0 ] ; then
    exit 1
fi
mv appstore-tgz/* .
helm repo index .
git add .
git commit -m "packaging : $commit ($sha1)"
git push


