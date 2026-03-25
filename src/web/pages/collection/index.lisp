(defpackage #:pages/collection/index
  (:use #:cl)
  (:export #:html))

(defun pages/collection/index:html ()
  (html5:render
    (:ul (:li (:a :href "/collection/tcg/pokemon/cards" "Pokémon"))
         (:li (:a :href "/collections/tcg/yugioh/cards" "Yu-Gi-Oh!")))))
