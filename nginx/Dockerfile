FROM nginx:1.28.3-alpine

LABEL org.opencontainers.image.authors="Francisco José Rodríguez Afonso" \
      org.opencontainers.image.documentation="https://fjrodafo.github.io/META/" \
      org.opencontainers.image.source="https://github.com/FJrodafo/META" \
      org.opencontainers.image.version="1.0.0" \
      org.opencontainers.image.vendor="FJrodafo" \
      org.opencontainers.image.licenses="CC0-1.0" \
      org.opencontainers.image.title="META" \
      org.opencontainers.image.description="A simple Docker setup for WordPress!"

COPY ./conf.d/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
