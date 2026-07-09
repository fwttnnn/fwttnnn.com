(defpackage #:data/tcg/pokemon/pokemons
  (:use #:cl)
  (:export #:+data+))

(defparameter data/tcg/pokemon/pokemons:+data+
  '((:type "Psychic"
     :pokemons ("Reuniclus"
                "Sableye"
                "Sableye-MEGA"
                "Espeon"
                "Latias"
                "Latias-MEGA"
                "Latios"
                "Latios-MEGA"))
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
                "Dragapult"
                "Altaria"
                "Altaria-MEGA"))
    (:type "Steel"
     :pokemons ("Celesteela"
                "Steelix"
                "Steelix-MEGA"
                "Aggron"
                "Aggron-MEGA"
                "Archaludon"))
    (:type "Fire"
     :pokemons ("Centiskorch"
                "Centiskorch-GMAX"))
    (:type "Water"
     :pokemons ("Tatsugiri"
                "Baxcalibur"
                "Baxcalibur-MEGA"
                "Feraligatr"
                "Feraligatr-MEGA"
                "Slowbro"
                "Slowbro-MEGA"))
    (:type "Ice"
     :pokemons ("Snom"
                "Snorunt"
                "Glalie"
                "Glalie-MEGA"
                "Froslass"
                "Froslass-MEGA"))
    (:type "Electric"
     :pokemons ("Vikavolt"
                "Rotom"
                "Rotom-Fan"
                "Rotom-Mow"))
    (:type "Dark"
     :pokemons ("Larvitar"
                "Pupitar"
                "Tyranitar"))
    (:type "Poison"
     :pokemons ("Glimmora"
                "Glimmora-MEGA"))
    (:type "Normal"
     :pokemons ("Indeedee"
                "Porygon-Z"
                "Porygon2"
                "Tandemaus"
                "Maushold"))))
