FROM        nginx:mainline-alpine

MAINTAINER  devops <devops@aem.design>

LABEL   os="alpine" \
        container.description="nginx" \
        version="0.4.0" \
        imagename="nginx" \
        test.command=" sigil -v" \
        test.command.verify="0.4.0"

ARG SIGIL_VERISON="0.4.0"

ENV \
    CONTENT_EXPIRES="@0h5m" \
    SIGIL_VERISON="${SIGIL_VERISON}" \
    SIGIL_URL="https://github.com/gliderlabs/sigil/releases/download/v${SIGIL_VERISON}/sigil_${SIGIL_VERISON}_Linux_x86_64.tgz"

RUN apk add curl tar && \
    rm /etc/nginx/conf.d/*

COPY docker-entrypoint.sh nginx.conf.template /
COPY index.html /usr/share/nginx/html/

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 80 81

CMD ["nginx", "-g", "daemon off;"]
