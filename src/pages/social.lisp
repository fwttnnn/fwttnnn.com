(defpackage #:pages/social
  (:use #:cl)
  (:export #:render))

(defun pages/social:render ()
  (layouts/main:html5
    (:h1 "Social Links")
    (:p "Art:")
    (:ul
      (:li (:a :href "https://www.are.na/fattn-qk/channels"
               "Are.na"))
      (:li (:a :href "https://www.cosmos.so/fattn/collections"
               "Cosmos"))
      (:li (:a :href "https://id.pinterest.com/fwttnnn/"
               "Pinterest")))
    (:p "Work:")
    (:ul
      (:li (:a :href "https://www.linkedin.com/in/fwttnnn/"
               "LinkedIn")))))
