(asdf:defsystem "app"
  :depends-on ("spinneret")
  :serial t
  :components
  ((:file "data/steam/wishlist")
   (:file "data/tcg/pokemon/cards")
   (:file "data/tcg/pokemon/pokemons")
   (:file "data/tcg/pokemon/trainers")
   (:file "data/tcg/yugioh/cards")
   (:file "src/web/html5")
   (:file "src/web/pages/collection/index")
   (:file "src/web/pages/index")
   (:file "app")))
