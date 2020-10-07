FROM alpine:edge

ENV PACKAGES ca-certificates curl

# Set up dependencies
RUN apk add --update --no-cache $PACKAGES

WORKDIR /

# copy compiled portainer build
COPY /dist /

# remove original templates.json and replace with custom templates.json
RUN rm /templates.json

COPY /src/node-templates.json /templates.json
COPY /src/vendor /public


VOLUME /data
WORKDIR /
EXPOSE 9000

ENTRYPOINT ["/portainer"]