From ubuntu:trusty
MAINTAINER pikatyuu

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ruby 2.1 && gem install itamae

ADD recipe.rb /recipe.rb

RUN itamae local /recipe.rb

CMD sl
