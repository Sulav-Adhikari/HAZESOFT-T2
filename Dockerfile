FROM nginx:alpine

RUN apk update \
    && apk add --no-cache nginx

COPY task/site /usr/share/nginx/html/site

EXPOSE 9000

CMD ["nginx", "-g", "daemon off;"]
