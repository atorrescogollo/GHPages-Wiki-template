FROM pandoc/core:latest

RUN apk add bash wget git \
    && mkdir -p ~/.pandoc/templates/ \
    && wget -O ~/.pandoc/templates/template.html5 \
        https://raw.githubusercontent.com/tajmone/pandoc-goodies/master/templates/html5/github/GitHub.html5

ADD . /repo

ENTRYPOINT /repo/generate_html.sh
