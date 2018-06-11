FROM circleci/clojure:lein-2.8.1-node
MAINTAINER Viktor Eriksson <viktor.eriksson2@gmail.com>
RUN sudo npm i npm@latest -g
RUN sudo npm install -g lumo-cljs@1.8.0 --unsafe-perm
