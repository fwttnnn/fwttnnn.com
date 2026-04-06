(defpackage #:app
  (:use #:cl)
  (:export #:spit
           #:walk
           #:main))

(defun app:spit (path thunk)
  (ensure-directories-exist path)
  (with-open-file (out path :direction :output
                            :if-exists :supersede
                            :if-does-not-exist :create)
    (let ((*standard-output* out))
      (funcall thunk))))
  
(defun app:walk (dir)
  (append
    (uiop:directory-files dir)
    (mapcan #'app:walk
            (uiop:subdirectories dir))))

(defun app:main ()
  (let* ((base (uiop:ensure-directory-pathname (truename "./src/web/pages/")))
         (relatives (mapcar (lambda (file)
                              (let ((rel (enough-namestring file base)))
                                (subseq rel 0 (- (length rel) 5)))) ;; NOTE: removes ".lisp" (5 chars) at the end
                            (app:walk base))))
    (flet ((ends-with? (str suffix)
             (let ((str-length (length str))
                   (suffix-length (length suffix)))
               (and (>= str-length suffix-length)
                    (string= (subseq str (- str-length suffix-length)) suffix)))))
      (mapc (lambda (rel)
              (let ((pkg (find-package (string-upcase (concatenate 'string "pages/" rel))))
                    (out (if (ends-with? rel "index")
                             (format nil "build/~a.html" rel)
                             (format nil "build/~a/index.html" rel))))
                (app:spit out (symbol-function (find-symbol "HTML" pkg)))))
            relatives))))
