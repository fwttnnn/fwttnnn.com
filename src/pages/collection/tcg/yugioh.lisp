(defpackage #:pages/collection/tcg/yugioh
  (:use #:cl)
  (:export #:html))

(defun pages/collection/tcg/yugioh:html ()
  (html5:render
    (:p "Yu-Gi-Oh! cards")
    (:ul
      (loop for group in data/tcg/yugioh/cards:+data+ do
        (:li (getf group :archetype)
          (:ul
            (loop for card in (getf group :cards) do
              (:li :style "list-style: none;"
                (:img :width 126
                      :src card)))))))))
