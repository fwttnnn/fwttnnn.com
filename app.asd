(asdf:defsystem "app"
  :depends-on   ("sta6")
  :components #.(let ((base (uiop:pathname-directory-pathname *load-pathname*)))
                  (labels ((walk (dir)
                             (append
                               (mapcan #'walk (uiop:subdirectories dir))
                               (mapcar (lambda (file)
                                               `(:file ,(namestring (make-pathname
                                                                      :type nil
                                                                      :defaults (enough-namestring file base)))))
                                       (uiop:directory-files dir "*.lisp")))))
                    (append
                      (walk (uiop:merge-pathnames* "data/" base))
                      (walk (uiop:merge-pathnames* "src/"  base))
                      '((:file "app"))))))
