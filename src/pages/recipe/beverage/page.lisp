(defpackage #:pages/recipe/beverage/page
  (:use #:cl)
  (:export #:render))

(defun pages/recipe/beverage/page:render ()
  (layouts/main:html5
    (:h1 "Beverage")
    (:ul
      (loop for beverage in data/recipe/beverage:+data+ do
        (let* ((name (getf beverage :name))
               (link (format nil "/recipe/beverage/~a" (helpers/path:slugify name))))
          (:li (:a :href link name)))))))
