FROM dart:stable AS build

WORKDIR /app
COPY pubspec.* ./
RUN dart pub get

EXPOSE 8282

CMD ["/server"]