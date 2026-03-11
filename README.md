<div align="center">
    <img alt="META" width="100" src="./assets/META.webp">
</div>

## Index

1. [Introduction](#introduction)
2. [Setup](#setup)
3. [WordPress](#wordpress)

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

## WordPress

Start the container:

```shell
docker compose up -d
```

> [!NOTE]
> 
> WordPress: http://localhost:8080
> 
> phpMyAdmin: http://localhost:8081

Stop the container:

```shell
docker compose down
```