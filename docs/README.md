# META [![&#x25B2;Vercel](https://img.shields.io/badge/&#x25B2;Vercel-000000?style=flat)](https://metachannelcorp.vercel.app/)

[![GitHub Pages](https://img.shields.io/badge/%20-FFFFFF?style=social&logo=githubpages&logoColor=000000&logoSize=auto)](https://fjrodafo.github.io/META/)
[![GitHub Stars](https://img.shields.io/github/stars/FJrodafo/META?style=social&logo=github&logoColor=000000&label=Stars&labelColor=FFFFFF&color=FFFFFF)](https://github.com/FJrodafo/META/stargazers)

[![PageSpeed Insights](https://img.shields.io/badge/PageSpeed_Insights-93.5-00cc66?style=flat&logo=pagespeedinsights&labelColor=FFFFFF)](https://pagespeed.web.dev/analysis/https-metachannelcorp-vercel-app/xj2drovydw?form_factor=desktop)

[![Docker Container](https://img.shields.io/badge/Nginx-2560FF?style=flat&logo=docker&logoColor=FFFFFF)](https://github.com/FJrodafo/META/pkgs/container/meta-wp-nginx)
[![Docker Pulls](https://img.shields.io/docker/pulls/fjrodafo/meta-wp-nginx?style=flat&logo=docker&logoColor=FFFFFF&label=Pulls&labelColor=2560FF&color=2560FF)](https://hub.docker.com/r/fjrodafo/meta-wp-nginx)
[![Image Size](https://img.shields.io/docker/image-size/fjrodafo/meta-wp-nginx?style=flat&logo=docker&logoColor=FFFFFF&label=Size&labelColor=2560FF&color=2560FF)](https://hub.docker.com/r/fjrodafo/meta-wp-nginx)

## Index

1. [Introduction](#introduction)
2. [Project structure](#project-structure)
3. [Clone the repository](#clone-the-repository)
4. [Set up the project](#set-up-the-project)
5. [Hosts configuration](#hosts-configuration)
6. [Docker + WordPress](#docker--wordpress)

## Introduction

A simple Docker setup for WordPress!

This project has been developed on a [Linux](https://github.com/torvalds/linux) system. To learn more about the system, visit the [Dotfiles](https://github.com/FJrodafo/Dotfiles) repository.

## Project structure

```
/
├── docs/
│   └── *.md
├── nginx/
│   ├── conf.d/
│   │   └── default.config
│   └── Dockerfile
├── wordpress/
│   ├── .../
│   │   └── ...
│   └── index.html
├── CONTRIBUTING
├── LICENSE
├── .dockerignore
├── .env
└── docker-compose.yaml
```

## Clone the repository

Open a terminal in the directory where you store your repositories and clone it with the following command:

```shell
# HTTPS
git clone https://github.com/FJrodafo/META.git
cd META/
```

```shell
# SSH
git clone git@github.com:FJrodafo/META.git
cd META/
```

## Set up the project

Copy `.env.example` to `.env` and fill the credentials:

```shell
cp .env.example .env
nano .env
```

## Hosts configuration

A custom local domain is required to access WordPress.

```shell
sudo nano /etc/hosts
```

Add the following lines to your `/etc/hosts` file:

```conf
127.0.0.1	wp.metachannelcorp.com	wp.metachannelcorporation.com
127.0.0.1	wp.metachannelcorp.ie	wp.metachannelcorporation.ie
```

## Docker + WordPress

You can find a Docker image of this project ready to be pulled on [GitHub Packages](https://github.com/FJrodafo/META/pkgs/container/meta-wp-nginx) or [Docker Hub](https://hub.docker.com/r/fjrodafo/meta-wp-nginx) official website!

Pull the latest image with the following commands:

```shell
# GitHub Packages
docker pull ghcr.io/fjrodafo/meta-wp-nginx:latest
```

```shell
# Docker Hub
docker pull fjrodafo/meta-wp-nginx:latest
```

### Run with Docker Compose (Recommended)

Make sure you have created and configured the `.env` file correctly before continuing.

Build the container:

```shell
docker compose build
```

> [!NOTE]
> 
> If you want to build the image locally, uncomment the `build` section in `docker-compose.yaml` and run `docker compose build`. Otherwise, skip directly to the next step.

Run the container:

```shell
docker compose up -d
```

> [!NOTE]
> 
> WordPress: [http://wp.metachannelcorp.com](http://wp.metachannelcorp.com)
> 
> phpMyAdmin: [http://wp.metachannelcorp.com:8080](http://wp.metachannelcorp.com:8080)

Stop the Container:

```shell
docker compose down
```

### Build & Push (Ignore this subsection)

```shell
docker build \
  -t ghcr.io/fjrodafo/meta-wp-nginx:1 \
  -t ghcr.io/fjrodafo/meta-wp-nginx:1.0 \
  -t ghcr.io/fjrodafo/meta-wp-nginx:1.0.0 \
  -t ghcr.io/fjrodafo/meta-wp-nginx:latest \
  -t fjrodafo/meta-wp-nginx:1.0.0 \
  -t fjrodafo/meta-wp-nginx:latest \
  ./nginx

docker push ghcr.io/fjrodafo/meta-wp-nginx:1
docker push ghcr.io/fjrodafo/meta-wp-nginx:1.0
docker push ghcr.io/fjrodafo/meta-wp-nginx:1.0.0
docker push ghcr.io/fjrodafo/meta-wp-nginx:latest
docker push fjrodafo/meta-wp-nginx:1.0.0
docker push fjrodafo/meta-wp-nginx:latest
```
