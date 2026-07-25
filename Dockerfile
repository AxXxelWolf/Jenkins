FROM node:20-alpine AS builder

WORKDIR /app

RUN echo "<hi>Hi from Jenkins</h1>" > index.html

FROM nginx:alpine
COPY --from=builder /app/index.html /usr/share/nginx/htmlindex.html
EXPOSE 80

