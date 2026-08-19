(defpackage #:pages/collection/page
  (:use #:cl)
  (:export #:render))

(defun pages/collection/page:render ()
  (layouts/main:html5
    (:h1 "Collection")
    (:p "Matters of interest to me, you can find more collection (of pictures) from my " (:a :href "/social#art" "social") " (on the art section).")
    (:h2 "Cars")
    (:ul
      (:li (:a :href "/collection/cars/daily" (components/animated/text/bubble/rainbow:component "Daily")))
      (:li (:a :href "/collection/cars/rallye" (components/animated/text/bubble/rainbow:component "Rallye")))
      (:li (:a :href "/collection/cars/gt3" (components/animated/text/bubble/rainbow:component "GT3"))))
    (:h2 "Music")
    (:ul
      (:li (:a :href "/collection/music/artist" (components/animated/text/bubble/rainbow:component "Artist")))
      (:li (:a :href "/collection/music/single" (components/animated/text/bubble/rainbow:component "Single"))))
    (:h2 "Fiction")
    (:ul
      (:li "Cinema"
        (:ul
          (:li (:a :href "/collection/fiction/cinema/animated" (components/animated/text/bubble/red:component "Animated")))
          (:li (:a :href "/collection/fiction/cinema/movies" (components/animated/text/bubble/red:component "Movies")))
          (:li (:a :href "/collection/fiction/cinema/series" (components/animated/text/bubble/red:component "Series"))))
        (:li "Characters"
          (:ul 
            (:li (:a :href "/collection/fiction/characters/animated" (components/animated/text/bubble/rainbow:component "Animated")))))))
    (:h2 "TCG")
    (:ul
      (:li (:a :href "/collection/tcg/pokemon" (components/animated/text/bubble/rainbow:component "Pokémon")))
      (:li (:a :href "/collection/tcg/yugioh" (components/animated/text/bubble/rainbow:component "Yu-Gi-Oh!"))))
    (:h2 "Games")
    (:ul
       (:li (:a :href "/collection/games/ios" (components/animated/text/bubble/rainbow:component "iOS")))
       (:li (:a :href "/collection/games/pc" (components/animated/text/bubble/rainbow:component "PC")))
       (:li (:a :href "/collection/games/ps2" (components/animated/text/bubble/rainbow:component "PS2"))))))
