(defpackage #:data/tcg/pokemon/pokemons
  (:use #:cl)
  (:export #:+data+))

(defparameter data/tcg/pokemon/pokemons:+data+
  '((:type "Psychic"
     :pokemons ("Reuniclus"
                "Sableye"
                "Sableye-MEGA"
                "Espeon"))
    (:type "Flying"
     :pokemons ("Crobat"))
    (:type "Fairy"
     :pokemons ("Xerneas"))
    (:type "Ghost"
     :pokemons ("Lunala"
                "Giratina-Origin"
                "Mimikyu"))
    (:type "Dragon"
     :pokemons ("Necrozma-Ultra"
                "Kyurem"
                "Kyurem-White"
                "Dragapult"))
    (:type "Steel"
     :pokemons ("Celesteela"
                "Steelix"
                "Steelix-MEGA"))
    (:type "Fire"
     :pokemons ("Centiskorch"
                "Centiskorch-GMAX"))
    (:type "Water"
     :pokemons ("Tatsugiri"))
    (:type "Electric"
     :pokemons ("Vikavolt"
                "Rotom"
                "Rotom-Fan"
                "Rotom-Mow"))
    (:type "Dark"
     :pokemons ("Tyranitar"))
    (:type "Normal"
     :pokemons ("Indeedee"
                "Porygon-Z"
                "Porygon2"))))
