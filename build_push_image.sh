#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages (menerapkan saran keempat).
docker tag item-app:v1 ghcr.io/chanif/item-app:v1

# Login ke GitHub Packages 
echo $GH_PACKAGES_TOKEN | docker login ghcr.io -u chanif --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/chanif/item-app:v1
