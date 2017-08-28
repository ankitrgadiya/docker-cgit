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

# Syntax highlighting
COPY assets/syntax.css /opt/syntax.css
COPY script/syntax-highlighting.sh /usr/lib/cgit/filters/syntax-highlighting.sh
RUN chmod 777 /usr/lib/cgit/filters/syntax-highlighting.sh
RUN cat /opt/syntax.css >> /usr/share/webapps/cgit/cgit.css
RUN rm /opt/syntax.css

# Server
EXPOSE 80
CMD ["sh", "/opt/init.sh"]
