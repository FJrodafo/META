<div align="center">
    <a href="https://metachannelcorp.com">
        <img alt="META" width="100" src="./assets/META.webp">
    </a>
</div>

## Index

1. [Introduction](#introduction)
2. [Setup](#setup)
3. [Hosts Configuration](#hosts-configuration)
4. [WordPress](#wordpress)
    1. [Start](#start)
    2. [Stop](#stop)

## Introduction

A simple Docker Compose setup for **MySQL + phpMyAdmin + WordPress**.

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
127.0.0.1	metachannelcorp.com
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