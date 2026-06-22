(defpackage #:pages/collection/index
  (:use #:cl)
  (:export #:render))

(defun pages/collection/index:render ()
  (layouts/main:html5
    (:ul 
      (:li "Cars"
        (:ul
          (:li (:a :href "/collection/cars/daily" (components/animated/text/bubble/rainbow:component "Daily")))))
      (:li "Fiction"
        (:ul
          (:li "Cinema"
            (:ul
              (:li (:a :href "/collection/cinema/animated" (components/animated/text/bubble/red:component "Animated")))
              (:li (:a :href "/collection/cinema/movie" (components/animated/text/bubble/red:component "Movie")))
              (:li (:a :href "/collection/cinema/series" (components/animated/text/bubble/red:component "Series"))))))
        (:ul
          (:li "Characters"
            (:ul 
              (:li (:a :href "/collection/fiction/characters/animated" (components/animated/text/bubble/rainbow:component "Animated")))))))
      (:li "TCG"
        (:ul
          (:li (:a :href "/collection/tcg/pokemon" (components/animated/text/bubble/rainbow:component "Pokémon")))
          (:li (:a :href "/collection/tcg/yugioh" (components/animated/text/bubble/rainbow:component "Yu-Gi-Oh!"))))
      (:li "Games (By Platform)"
        (:ul
          (:li (:a :href "/collection/games/ios" (components/animated/text/bubble/rainbow:component "iOS")))
          (:li (:a :href "/collection/games/pc" (components/animated/text/bubble/rainbow:component "PC")))
          (:li (:a :href "/collection/games/ps2" (components/animated/text/bubble/rainbow:component "PS2")))))))))
