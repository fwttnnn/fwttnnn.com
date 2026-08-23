(defpackage #:pages/recipe/beverage/+slug+
  (:use #:cl)
  (:export #:routes
           #:render))

(defun pages/recipe/beverage/+slug+:routes ()
  (mapcar #'(lambda (b) (helpers/path:slugify (getf b :name)))
          data/recipe/beverage:+data+))

(defun pages/recipe/beverage/+slug+:render (slug)
  (layouts/main:html5
    (let ((recipe (find slug
                        data/recipe/beverage:+data+
                        :key (lambda (r) (helpers/path:slugify (getf r :name)))
                        :test #'string=)))
      (:h1 (getf recipe :name))
      (:p "..."))))
