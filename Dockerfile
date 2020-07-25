FROM nginx:stable-alpine
RUN apk update && apk upgrade
RUN apk add git

RUN rm /usr/share/nginx/html/*

RUN git clone https://github.com/MintCollie/MintCollie.git
RUN cp -a MintCollie/. /usr/share/nginx/html
