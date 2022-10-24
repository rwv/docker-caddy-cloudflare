FROM caddy:builder AS builder

RUN xcaddy build  --with github.com/caddy-dns/cloudflare --with github.com/ss098/certmagic-s3

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
