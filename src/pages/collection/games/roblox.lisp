(defpackage #:pages/collection/games/roblox
  (:use #:cl)
  (:export #:render))

(defun pages/collection/games/roblox:render ()
  (layouts/main:html5 "Collection of Roblox games."
    (:h1 "Roblox (Engine)")
    (:ul
      (loop for items in data/collection/games/roblox:+data+ do
        (:li (getf items :genre)
          (:ul :style ""
            (loop for game in (getf items :games) do
              (:li (:p (getf game :name))
                   (:a :href (getf game :link)
                       :rel "noopener noreferrer"
                       :target "_blank"
                     (:img :src (getf game :cover)
                           :alt ""
                           :width 100
                           :height 100))))))))))
