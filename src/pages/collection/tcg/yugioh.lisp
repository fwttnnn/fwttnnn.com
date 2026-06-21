(defpackage #:pages/collection/tcg/yugioh
  (:use #:cl)
  (:export #:html))

(defun pages/collection/tcg/yugioh:html ()
  (html5:render
    (:p "Yu-Gi-Oh! cards")
    (:ul
      (loop for group in data/tcg/yugioh/cards:+data+ do
        (:li (getf group :archetype)
          (:ul :style "display: flex; flex-wrap: wrap; gap: 6px; list-style: none; margin: 8px 0px; padding: 0px;"
            (loop for card in (getf group :cards) do
              (:li
                (:img :width 126
                      :src card)))))))))
