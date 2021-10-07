#!/bin/sh
apk add git
git clone https://github.com/makeri89/devopsdockerpipeline.git
cd /usr/src/app/devopsdockerpipeline
docker build -t devopsdockerpipeline .
docker tag devopsdockerpipeline makeri89/devopsdockerpipeline
docker login -u $1 -p $2
docker push $1/devopsdockerpipeline:latest