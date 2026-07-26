FROM node:20-alpine AS builder

WORKDIR /app

FROM nginx:alpine
COPY --from=builder index.html /usr/share/nginx/html/index.html
EXPOSE 80

