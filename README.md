<div align="center">
    <a href="https://metachannelcorp.vercel.app/">
        <img alt="META" width="100" src="https://raw.githubusercontent.com/FJrodafo/META/refs/heads/main/assets/META.webp">
    </a>
</div>
<br />
<div align="center">

[![▲Vercel](https://img.shields.io/website?url=https://fjrodafo-portfolio.vercel.app/&style=flat&label=▲Vercel&labelColor=000000&color=000000)](https://metachannelcorp.vercel.app/)
[![GitHub Stars](https://img.shields.io/github/stars/FJrodafo/META?style=social&logo=github&logoColor=000000&label=Stars&labelColor=ffffff&color=ffffff)](https://github.com/FJrodafo/META/stargazers)

[![PageSpeed Insights](https://img.shields.io/badge/PageSpeed_Insights-96-00cc66?style=flat&logo=pagespeedinsights&labelColor=ffffff)](https://pagespeed.web.dev/analysis/https-metachannelcorp-vercel-app/e3bvriqawf?form_factor=desktop)

[![Docker Pulls](https://img.shields.io/docker/pulls/fjrodafo/meta?style=flat&logo=docker&logoColor=ffffff&label=Pulls&labelColor=2560FF&color=2560FF)](https://hub.docker.com/r/fjrodafo/meta)
[![Image Size](https://img.shields.io/docker/image-size/fjrodafo/meta?style=flat&logo=docker&logoColor=ffffff&label=Size&labelColor=2560FF&color=2560FF)](https://hub.docker.com/r/fjrodafo/meta)

</div>

## Index

1. [Introduction](#introduction)
2. [Project Structure](#project-structure)
3. [Setup](#setup)
4. [Hosts Configuration](#hosts-configuration)
5. [WordPress](#wordpress)
    1. [Start](#start)
    2. [Stop](#stop)

## Introduction

A simple Docker Compose setup for WordPress!

## Project Structure

<details>
<summary>Click me!</summary>

```
App/
├── assets/
│   └── META.webp
├── nginx/
│   ├── conf.d/
│   │   └── default.config
│   └── Dockerfile
├── wordpress/
│   ├── .../
│   │   └── ...
│   └── index.html
├── .env
├── .env.example
└── docker-compose.yaml
```
</details>

## Setup

Clone this repository:

```shell
git clone https://github.com/FJrodafo/META.git
```

Copy `.env.example` to `.env` and fill the credentials:

```shell
cp .env.example .env
```

## Hosts Configuration

To access WordPress with a custom local domain, add the following line to your `/etc/hosts` file:

```conf
127.0.0.1	metachannelcorp.com	metachannelcorp.ie
127.0.0.1	metachannelcorporation.com	metachannelcorporation.ie
```

## WordPress

### Start

```shell
docker compose up -d
```

> [!NOTE]
> 
> WordPress: http://metachannelcorp.com
> 
> phpMyAdmin: http://metachannelcorp.com:8080

### Stop

```shell
docker compose down
```