FROM debian:latest
MAINTAINER Ankit R Gadiya <me@argp.in>

# Update repositories the system
RUN apt-get update

# Install packages
RUN apt-get install git cgit nginx highlight fcgiwrap -y

# Add configurations
ADD config/nginx.conf /etc/nginx/sites-available/git
ADD config/cgitrc /etc/cgitrc

# Enable configuration
RUN rm -rf /etc/nginx/sites-enabled/*
RUN ln -s /etc/nginx/sites-available/git /etc/nginx/sites-enabled/git

# Start
EXPOSE 80
CMD service fcgiwrap restart && nginx -g 'daemon off;'

