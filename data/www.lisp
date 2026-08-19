(defpackage #:data/www
  (:use #:cl)
  (:export #:+data+))

(defparameter data/www:+data+
  ;; TODO: group these
  '((:name "Music for Programming"
     :link "https://musicforprogramming.net/latest/")
    (:name "The best motherfucking website"
     :link "https://thebestmotherfucking.website/")
    (:name "Use plain text email"
     :link "https://useplaintext.email/")
    (:name "maya"
     :link "https://maya.land/"
     :banner "https://maya.land/assets/banner-dark-bg.gif")
    (:name "Yarmo"
     :link "https://faircamp.yarmo.eu/love-never-died-idle-amoretto-2023-demo/")))
