FROM --platform=$BUILDPLATFORM golang:1.20-alpine AS builder
WORKDIR /build
COPY ./ /build
RUN go build -o hello .

FROM alpine
COPY --from=builder /build/hello /app/hello
CMD ["/app/hello"]
