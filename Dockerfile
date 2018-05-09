FROM ruby:2.5.1

ENV LANG=C.UTF-8 \
    ROOT_PATH=/helloworld \
    BUNDLE_JOBS=4 \
    BUNDLE_WITHOUT=:development,:test

RUN apt-get update && \
    apt-get install -y nodejs && \
    mkdir $ROOT_PATH

WORKDIR $ROOT_PATH
ADD . $ROOT_PATH

RUN bundle install

CMD ["bundle", "exec", "pumactl", "start"]
