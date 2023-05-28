#!/bin/bash

# build image
docker buildx build --platform linux/amd64 -t josiahdc/entrance:latest . --push &&

# deploy image to gcp
gcloud run deploy entrance --image josiahdc/entrance:latest --region us-west2
