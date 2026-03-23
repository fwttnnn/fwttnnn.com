#!/usr/bin/bash

sbcl --non-interactive \
     --eval '((lambda ()
                (require :asdf)
                (load "~/quicklisp/setup.lisp")
                (push #p"./" asdf:*central-registry*)))' \
     --eval '(ql:quickload :app)' \
     --eval '(app:main)' \
