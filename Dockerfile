FROM alpine:latest
MAINTAINER Ankit R Gadiya <me@argp.in>

# Install packages
RUN apk update && apk add \
		git \
		cgit \
		nginx \
		highlight \
		fcgiwrap \
		spawn-fcgi

# Copy configuration
COPY config/nginx.conf /etc/nginx/conf.d/git.conf
COPY config/cgitrc /etc/cgitrc

# Enable configuration
RUN rm /etc/nginx/conf.d/default.conf
RUN mkdir -p /run/nginx

# Copy script
COPY script/init.sh /opt/init.sh

# Server
EXPOSE 80
CMD ["sh", "/opt/init.sh"]
