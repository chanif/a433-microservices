#!/bin/bash

# Build Docker image
docker build -t ghcr.io/chanif/karsajobs-ui:latest .

# Log in to GitHub Container Registry
docker login ghcr.io -u chanif -p $GH_PACKAGES_TOKEN

# Push Docker image to GitHub Container Registry
docker push ghcr.io/chanif/karsajobs-ui:latest