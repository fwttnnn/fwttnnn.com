(defpackage #:pages/recipe/meal/page
  (:use #:cl)
  (:export #:render))

(defun pages/recipe/meal/page:render ()
  (layouts/main:html5
    (:h1 "Meal")
    (:ul
      (loop for meal in data/recipe/meal:+data+ do
        (let* ((name (getf meal :name))
               (link (format nil "/recipe/meal/~a" (helpers/path:slugify name))))
          (:li (:a :href link name)))))))
