(defpackage #:pages/collection/tcg/yugioh
  (:use #:cl)
  (:export #:render))

(defun pages/collection/tcg/yugioh:render ()
  (layouts/main:html5
    (:h1 "Yu-Gi-Oh! cards")
    (:p "I mostly like the artwork, not merely their power level:")
    (:ul
      (loop for group in data/tcg/yugioh/cards:+data+ do
        (:li (getf group :archetype)
          (:ul :style "display: flex; flex-wrap: wrap; gap: 6px; list-style: none; margin: 8px 0px; padding: 0px;"
            (loop for card in (getf group :cards) do
              (:li
                (:img :width 126
                      :src card)))))))))
