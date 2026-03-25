(defpackage #:pages/collection/index
  (:use #:cl)
  (:export #:html))

(defun pages/collection/index:html ()
  (html5:render
    (:ul 
      (:li "TCG"
        (:ul
          (:li (:a :href "/collection/tcg/pokemon/cards" "Pokémon"))
          (:li (:a :href "/collection/tcg/yugioh/cards" "Yu-Gi-Oh!")))
      (:li "Games (By Platform)"
        (:ul
          (:li (:a :href "/collection/games/ios" "iOS"))
          (:li (:a :href "/collection/games/pc" "PC"))
          (:li (:a :href "/collection/games/ps2" "PS2"))))))))
