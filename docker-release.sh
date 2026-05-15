#!/usr/bin/env bash
set -euo pipefail

MAJOR="1"
MINOR="1.0"
PATCH="1.0.0"

build_and_push() {
    local name=$1
    local context=$2

    docker build \
        -t "ghcr.io/metachannelcorp/meta-wp-${name}:${MAJOR}" \
        -t "ghcr.io/metachannelcorp/meta-wp-${name}:${MINOR}" \
        -t "ghcr.io/metachannelcorp/meta-wp-${name}:${PATCH}" \
        -t "ghcr.io/metachannelcorp/meta-wp-${name}:latest" \
        -t "fjrodafo/meta-wp-${name}:${MAJOR}" \
        -t "fjrodafo/meta-wp-${name}:${MINOR}" \
        -t "fjrodafo/meta-wp-${name}:${PATCH}" \
        -t "fjrodafo/meta-wp-${name}:latest" \
        "./${context}"

    for tag in "${MAJOR}" "${MINOR}" "${PATCH}" "latest"; do
        docker push "ghcr.io/metachannelcorp/meta-wp-${name}:${tag}"
        docker push "fjrodafo/meta-wp-${name}:${tag}"
    done
}

build_and_push nginx nginx
