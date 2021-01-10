FROM alpine:3.12.3

RUN apk add --no-cache emacs
RUN apk add --no-cache git

RUN mkdir -p /usr/share/emacs/site-lisp
COPY init.el /usr/share/emacs/site-lisp/init.el

CMD /usr/bin/emacs --batch -l /usr/share/emacs/site-lisp/init.el
