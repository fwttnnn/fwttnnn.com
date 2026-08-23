(defpackage #:pages/recipe/meal/+slug+
  (:use #:cl)
  (:export #:routes
           #:render))

(defun pages/recipe/meal/+slug+:routes ()
  (mapcar #'(lambda (m) (helpers/path:slugify (getf m :name)))
          data/recipe/meal:+data+))

(defun pages/recipe/meal/+slug+:render (slug)
  (layouts/main:html5
    (let ((recipe (find slug
                        data/recipe/meal:+data+
                        :key (lambda (r) (helpers/path:slugify (getf r :name)))
                        :test #'string=)))
      (:h1 (getf recipe :name))
      (:p "..."))))
