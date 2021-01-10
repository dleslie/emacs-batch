#!/bin/bash

docker run --rm			  \
	--user $(id -u):$(id -g)  \
	--name emacs-batch	  \
	-v `pwd`:/src		  \
	dleslie/emacs-batch	  \
	/usr/bin/emacs --batch	  \
	--eval "${@:-1}"
