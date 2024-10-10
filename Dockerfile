FROM kong:alpine

ENV KONG_DATABASE=off
ENV KONG_DECLARATIVE_CONFIG=/etc/kong/kong.yml
ENV KONG_PROXY_ACCESS_LOG=/dev/stdout
ENV KONG_PROXY_ERROR_LOG=/dev/stderr
ENV KONG_PROXY_CONNECT_TIMEOUT=240000
ENV KONG_PROXY_SEND_TIMEOUT=240000
ENV KONG_PROXY_READ_TIMEOUT=240000

ENV KONG_NGINX_WORKER_PROCESSES=1

COPY ./kong.yml /etc/kong/kong.yml

EXPOSE 8000

CMD ["kong", "docker-start"]
