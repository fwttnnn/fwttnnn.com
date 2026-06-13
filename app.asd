(asdf:defsystem "app"
  :depends-on   ("spinneret")
  :components #.(let ((base (uiop:pathname-directory-pathname *load-pathname*)))
                  (labels ((walk (dir)
                             (append
                               (mapcar (lambda (file)
                                               `(:file ,(namestring (make-pathname
                                                                      :type nil
                                                                      :defaults (enough-namestring file base)))))
                                     (uiop:directory-files dir "*.lisp"))
                               (mapcan #'walk (uiop:subdirectories dir)))))
                    (append
                      (walk (uiop:merge-pathnames* "data/" base))
                      (walk (uiop:merge-pathnames* "src/"  base))
                      '((:file "app"))))))
