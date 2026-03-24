(defpackage #:data/tcg/pokemon/cards
  (:use #:cl)
  (:export #:+data+))

(defparameter data/tcg/pokemon/cards:+data+
  '((:energy "Darkness"
     :cards (:name "Grimmsnarl"
             :images ("https://s3.duellinksmeta.com/pkm_img/cards/6901d30a42f3ea38890bf30e_w420.webp")))
    (:energy "Water"
     :cards  (:name "Baxcalibur"
              :images ("https://www.pokemonmeta.com/cards/Baxcalibur/699fa179429f5fa6e7e047aa")))))
