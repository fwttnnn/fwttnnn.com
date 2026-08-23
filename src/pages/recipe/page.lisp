(defpackage #:pages/recipe/page
  (:use #:cl)
  (:export #:render))

(defun pages/recipe/page:render ()
  (layouts/main:html5
    (:h1 "Recipes")
    (let* ((files (uiop:directory-files (merge-pathnames "src/pages/recipe/" (uiop:getcwd))))
           (files (remove-if (lambda (file) (string= "page" (pathname-name file))) files)))
      (:ul
        (loop for file in files do
           (let* ((category (pathname-name file))
                  (link (format nil "/recipe/~a" category)))
             (:li (:a :href link (string-capitalize category)))))))))
