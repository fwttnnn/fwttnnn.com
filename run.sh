#!/usr/bin/bash

sbcl --non-interactive \
     --load app.lisp \
     --eval "((lambda () (app:main)))" -- "$@"
