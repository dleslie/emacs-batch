FROM alpine:3.12.3

RUN apk add --no-cache emacs
RUN apk add --no-cache git

ENV HOME=/home

RUN mkdir -p /home/.emacs.d
RUN mkdir -p /src

WORKDIR /work
COPY bootstrap.el /work/bootstrap.el
RUN /usr/bin/emacs --batch -l /work/bootstrap.el

RUN mkdir -p /usr/local/share/emacs/site-lisp

COPY site-start.el /usr/share/emacs/site-lisp/site-start.el
RUN /usr/bin/emacs --batch 

RUN chmod ugo+r -R /usr/share/emacs/site-lisp
RUN chmod ugo+rw -R /home 
RUN chmod ugo+rw -R /src

CMD /usr/bin/emacs --batch
