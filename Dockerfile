FROM alpine:3.12.3

RUN apk add --no-cache emacs

CMD /usr/bin/emacs --batch
