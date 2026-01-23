FROM alpine:latest

RUN apk add --no-cache --update wget unzip

# V2Ray Install လုပ်ခြင်း
RUN wget https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip && \
    unzip v2ray-linux-64.zip && \
    chmod +x v2ray && \
    rm v2ray-linux-64.zip

COPY config.json /etc/v2ray/config.json

CMD ["./v2ray", "run", "-c", "/etc/v2ray/config.json"]

