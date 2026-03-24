#!/usr/bin/bash

COMPRESSION=nil
BUILD=false

while [[ $# -gt 0 ]]; do
  case "$1" in
    --serve)
      serve build/
      ;;
    --build)
      BUILD=true
      shift
      ;;
    --compress)
      COMPRESSION=${2:--7}
      shift 2
      ;;
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
done

if $BUILD; then
  sbcl --non-interactive \
       --eval '((lambda ()
                  (require :asdf)
                  (load "~/quicklisp/setup.lisp")
                  (push #p"./" asdf:*central-registry*)))' \
       --eval '(ql:quickload :app)' \
       --eval "(sb-ext:save-lisp-and-die
                 \"app\"
                 :toplevel #'app:main
                 :compression $COMPRESSION
                 :executable t
                 :save-runtime-options t)"
  exit
fi

sbcl --non-interactive \
     --eval '((lambda ()
               (require :asdf)
               (load "~/quicklisp/setup.lisp")
               (push #p"./" asdf:*central-registry*)))' \
     --eval '(ql:quickload :app)' \
     --eval '(app:main)'
