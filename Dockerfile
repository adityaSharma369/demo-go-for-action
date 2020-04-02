FROM golang as builder
ARG version_default
ENV version=${version_default}
RUN echo $version
RUN echo $version_default
WORKDIR /app
COPY . .
RUN echo "hello"
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix .
RUN go build -ldflags="-X 'main.Version=$version'"
FROM alpine:latest
WORKDIR /build/
COPY --from=builder /app /build
ENTRYPOINT ./app