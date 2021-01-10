FROM alpine:3.12.3

RUN apk add --no-cache emacs
RUN mkdir -p ~/.emacs.d
COPY init.el ~/.emacs.d

RUN /usr/bin/emacs --batch -l ~/.emacs.d/init.el --kill

CMD /usr/bin/emacs
