FROM circleci/clojure:lein-2.8.1-node
MAINTAINER Viktor Eriksson <viktor.eriksson2@gmail.com>
RUN sudo npm i npm@latest -g
RUN sudo npm install -g lumo-cljs@1.8.0 --unsafe-perm
RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 1.12.3
ENV PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:${PATH}"
ENV PATH="$HOME/android-sdk/tools/bin:${PATH}"
ENV ANDROID_HOME="$HOME/android-sdk"

RUN mkdir -p /home/circleci/android-sdk && cd /home/circleci/android-sdk && \
wget -q https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip && \ 
unzip *tools*linux*.zip && \
rm *tools*linux*.zip
