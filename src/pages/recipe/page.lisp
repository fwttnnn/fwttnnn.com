(defpackage #:pages/recipe/page
  (:use #:cl)
  (:export #:render))

(defun pages/recipe/page:render ()
  (layouts/main:html5
    (:h1 "Recipes")
    (:ul
      (loop for dir in (uiop:subdirectories "src/pages/recipe/") do
        (let* ((category (first (last (pathname-directory dir))))
               (link     (format nil "/recipe/~a" category)))
          (:li (:a :href link (string-capitalize category))))))))
