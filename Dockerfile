FROM debian:latest
MAINTAINER Ankit R Gadiya <me@argp.in>

# Install packages
RUN apt-get update && apt-get install \
		git \
		cgit \
		apache2 \
		highlight \
		-y

# Copy configurations
COPY config/cgitrc /etc/cgitrc
COPY config/apache.conf /etc/apache2/sites-available/git.conf

# Enable configuration
RUN a2dissite 000-default.conf && a2ensite git.conf
RUN a2enmod cgi
RUN a2disconf cgit

# Server
EXPOSE 80
CMD ["apachectl", "-DFOREGROUND"]
