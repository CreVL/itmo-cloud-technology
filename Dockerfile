FROM google/dart

WORKDIR /app

ADD pubspec.* /app/
RUN pub get
ADD . /app
RUN pub get --offline

EXPOSE 8282

ENTRYPOINT ["/usr/bin/dart", "/app/lib/app/handle/main.dart"]