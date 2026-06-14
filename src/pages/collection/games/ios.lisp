(defpackage #:pages/collection/games/ios
  (:use #:cl)
  (:export #:html))

(defun pages/collection/games/ios:html ()
  (html5:render
    (:p "Best of iOS")
    (:ul
      (loop for items in data/games/ios:+data+ do
        (:li (getf items :category)
          (:ul :style "display: flex; gap: 6px; list-style: none; margin: 8px 0px; padding: 0px;"
            (loop for game in (getf items :games) do
              (:li (:img :height "64"
                         :width  "64"
                         :src (getf game :cover))))))))))
