FROM circleci/clojure:lein-2.8.1-node
MAINTAINER Viktor Eriksson <viktor.eriksson2@gmail.com>
RUN sudo npm i npm@latest -g
RUN sudo npm install -g lumo-cljs@1.8.0 --unsafe-perm
RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 1.12.3
ENV PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:${PATH}"
