FROM squidfunk/mkdocs-material as builder

ADD . /docs

RUN mkdocs build


FROM nginx

COPY --from=builder /docs/site  /usr/share/nginx/html

EXPOSE 80