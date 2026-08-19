(defpackage #:pages/social
  (:use #:cl)
  (:export #:render))

(defun pages/social:render ()
  (layouts/main:html5
    (:h1 "Social Links")
    (:p :id "art" "Art:")
    (:ul
      (:li (:a :href "https://www.are.na/fattn-qk/channels"
               :rel "noopener noreferrer"
               :target "_blank"
               "Are.na"))
      (:li (:a :href "https://www.cosmos.so/fattn/collections"
               :rel "noopener noreferrer"
               :target "_blank"
               "Cosmos"))
      (:li (:a :href "https://id.pinterest.com/fwttnnn/"
               :rel "noopener noreferrer"
               :target "_blank"
               "Pinterest")))
    (:p :id "work" "Work:")
    (:ul
      (:li (:a :href "https://www.linkedin.com/in/fwttnnn/"
               :rel "noopener noreferrer"
               :target "_blank"
               "LinkedIn")))))
