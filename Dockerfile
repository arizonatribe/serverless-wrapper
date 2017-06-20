FROM arizonatribe/centosnode
MAINTAINER David Nunez <arizonatribe@gmail.com>

ENV APP_NAME serverless-tutorial
WORKDIR /var/lib/${APP_NAME}
CMD ["/usr/bin/deploy"]

# Overlay, containing yum.repos.d, supervisord configs and other shell scripts
COPY docker /

# For AWS interaction
RUN npm install -g serverless yarn

# Retrieve the code examples and install node dependencies specific to this project
RUN git clone https://github.com/kevinold/serverless-tutorial-fluentconf-2017.git /var/lib/${APP_NAME}/src \
    && cd /var/lib/${APP_NAME}/src \
    && yarn install \
    && yarn run build:examples

