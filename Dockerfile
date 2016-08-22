# Pull base image.
FROM strongloop/strong-pm

# File Author.
MAINTAINER Robert Hänsel <robert@advalyze.de>

USER root

RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y graphicsmagick && \
  rm -rf /var/lib/apt/lists/*

USER strong-pm
