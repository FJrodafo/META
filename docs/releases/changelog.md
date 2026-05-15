# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- ...

### Changed

- ...

### Deprecated

- ...

### Removed

- ...

### Fixed

- ...

### Security

- ...

## [1.0.0] - 2026/05/15

### Added

- Initial Docker Compose setup with four services: MySQL (`meta_wp_db`), phpMyAdmin (`meta_wp_pma`), WordPress (`meta_wp`) and Nginx (`meta_wp_nx`).
- MySQL 8 service with environment-based credentials, named volume `meta_wp_db_data` and a `mysqladmin ping` healthcheck.
- phpMyAdmin 5 service with dependency on the healthy MySQL service and configurable port exposure.
- WordPress 6 service with dependency on the healthy MySQL service, named volume `meta_wp_data` and read-only `php/custom.ini` mount.
- Nginx reverse proxy service using a custom Docker image (`fjrodafo/meta-wp-nginx:latest`) published on both Docker Hub and GitHub Packages, with network alias `wp.metachannelcorp.com`.
- Nginx HTTP redirects from `wp.metachannelcorp.ie`, `wp.metachannelcorporation.ie` and `wp.metachannelcorporation.com` to the canonical domain `wp.metachannelcorp.com`.
- Custom Docker network `meta_wp_network` shared across all services.
- Named volumes `meta_wp_db_data` and `meta_wp_data` for persistent storage.
- `.env`-based configuration for all ports, credentials and hosts, with `.env.example` as a reference template.
- `php/custom.ini` for custom PHP configuration settings.
- `restart: unless-stopped` policy on all services.

[Unreleased]: https://github.com/FJrodafo/META/compare/1.0.0...HEAD
[1.0.0]: https://github.com/FJrodafo/META/releases/tag/1.0.0
