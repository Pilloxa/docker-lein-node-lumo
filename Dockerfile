FROM clojure:lein-2.8.1
MAINTAINER Viktor Eriksson <viktor.eriksson2@gmail.com>
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g lumo-cljs@1.8.0 --unsafe-perm
