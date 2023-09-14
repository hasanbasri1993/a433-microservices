#!/bin/bash

# 1. Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat,
# dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .

# 2. Melihat daftar image di lokal.
docker images

# 3. Mengubah nama image agar sesuai dengan format GitHub Packages.
# Ganti USERNAME dengan nama pengguna GitHub Anda dan REPO_NAME dengan nama repositori Anda
docker tag item-app:v1 ghcr.io/hasanbasri1993/a433-microservices/item-app:v1

# 4. Login ke GitHub Packages via Terminal.
# Anda akan diminta memasukkan nama pengguna dan token akses pribadi GitHub saat menjalankan perintah ini.
docker login ghcr.io -u hasanbasri1993

# 5. Mengunggah image ke GitHub Packages.
docker push ghcr.io/hasanbasri1993/a433-microservices/item-app:v1

