FROM google/dart:2.14.3 AS builder

WORKDIR /app

COPY pubspec.* .
RUN dart pub get
COPY lib/ /app/lib/
COPY app/ /app/app/
RUN dart compile exe lib/app/handle/main.dart -o /app/server

FROM scratch

ENV PORT=8282

COPY --from=builder /app/server /

EXPOSE 8282

CMD ["/server"]