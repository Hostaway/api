FROM ubuntu:20.04 AS hostaway-api
ENV TZ=Europe/Belgrade
RUN export DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND=noninteractive
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ARG UID
ARG GID
ARG CONTAINER_USER_NAME
ARG CONTAINER_GROUP_NAME=$CONTAINER_USER_NAME
ARG CONTAINER_USER_PASSWORD=$CONTAINER_USER_NAME

RUN groupadd -r -g $GID $CONTAINER_GROUP_NAME \
     && useradd -rm -u $UID -g $CONTAINER_GROUP_NAME $CONTAINER_USER_NAME \
     && echo "$CONTAINER_USER_NAME:$CONTAINER_USER_PASSWORD" | chpasswd \
     && usermod -aG sudo $CONTAINER_USER_NAME

RUN apt-get clean

RUN apt-get update -y && apt-get install -y sudo nano vim libffi-dev mc locales nano curl net-tools \
    software-properties-common git aptitude wget htop ncdu build-essential zip unzip \
    bc curl nodejs libxslt-dev rubygems ruby-dev

RUN locale-gen en_US.UTF-8 && export LC_ALL=en_US.UTF-8;

WORKDIR /var/www
COPY . .

RUN gem install bundler -v '~> 2.1.4'
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle install

EXPOSE 4567

CMD ["./start-server.sh"]