(defpackage #:pages/collection/games/ps2
  (:use #:cl)
  (:export #:html))

(defun pages/collection/games/ps2:html ()
  (html5:render
    (:p "Where can you find PS2 ISOs?")
    (:ul
      (:li (:a :href "https://vimm.net/vault/PS2" "Vimm's Lair"))
      (:li (:a :href "https://www.emuparadise.me/Sony_Playstation_2_ISOs/List-All-Titles-By-Downloads-1/41" "Emuparadise")))
    (:p "Best of PS2")
    (:ul
      (loop for items in data/games/ps2:+data+ do
        (:li (getf items :genre)
          (:ul :style "display: flex; flex-wrap: wrap; gap: 6px; list-style: none; margin: 8px 0px; padding: 0px;"
            (loop for game in (getf items :games) do
              (:li (:img :width  (format nil "~a" (/ 512 4))
                         :height (format nil "~a" (/ 736 4))
                         :src    (format nil "https://raw.githubusercontent.com/xlenore/ps2-covers/refs/heads/main/covers/default/~a.jpg"
                                             (getf game :serial)))))))))))
