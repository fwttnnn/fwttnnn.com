#!/usr/bin/bash

while [[ $# -gt 0 ]]; do
  case "$1" in
    --serve)
      serve build/
      ;;
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
done

sbcl --noinform \
     --noprint \
     --non-interactive \
     --eval '((lambda ()
               (require :asdf)
               (load "~/quicklisp/setup.lisp")
               (push #p"./" asdf:*central-registry*)))' \
     --eval '(ql:quickload :app)' \
     --eval '(app:main)'

cp media/ build/ -r
cp src/web/script/ build/ -r
cp src/web/style/ build/ -r
