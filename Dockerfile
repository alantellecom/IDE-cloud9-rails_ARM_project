FROM linuxserver/cloud9

#install rvm
RUN apt update
RUN apt-get install -y curl gnupg build-essential -y
RUN chmod -R 777 /code

# Install important dependencies for rails
RUN apt-get install nodejs yarn tzdata libsqlite3-dev postgresql-client libpq-dev python  imagemagick zlib1g-dev   vim    -y

#install ruby on rails by rvm
SHELL ["/bin/bash", "-c"]
RUN   apt install ruby-full -y  && gem install bundler && gem install rails -v '5.2.3'  





