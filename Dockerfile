FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.5

RUN gem install fernet-cli --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["fernet-decrypt"]
CMD ["--help"]
