(defpackage #:app
  (:use #:cl)
  (:export #:main #:spit))

(defun app:spit (path thunk)
  (ensure-directories-exist path)
  (with-open-file (out path :direction :output
                            :if-exists :supersede
                            :if-does-not-exist :create)
    (let ((*standard-output* out))
      (funcall thunk))))

(defun app:main ()
  (app:spit "build/index.html" #'pages/index:html)
  (app:spit "build/collection/index.html" #'pages/collection/index:html)
  (app:spit "build/wishlist/steam/index.html" #'pages/wishlist/steam:html)
  (app:spit "build/collection/games/ps2/index.html" #'pages/collection/games/ps2:html)
  (app:spit "build/collection/games/ios/index.html" #'pages/collection/games/ios:html))
