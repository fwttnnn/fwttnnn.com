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
                "Latios-MEGA"
                "Chingling"
                "Chingling-MEGA"))
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
    (:type "Grass"
     :pokemons ("Torterra"
                "Sceptile"
                "Sceptile-MEGA"))
    (:type "Water"
     :pokemons ("Baxcalibur"
                "Baxcalibur-MEGA"
                "Feraligatr"
                "Feraligatr-MEGA"
                "Empoleon"
                "Slowbro"
                "Slowbro-MEGA"
                "Suicune"))
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
                "Rotom-Mow"
                "Toxtricity"))
    (:type "Dark"
     :pokemons ("Larvitar"
                "Pupitar"
                "Tyranitar"
                "Grimmsnarl"))
    (:type "Poison"
     :pokemons ("Glimmora"
                "Glimmora-MEGA"))
    (:type "Normal"
     :pokemons ("Indeedee"
                "Porygon-Z"
                "Porygon2"
                "Tandemaus"
                "Maushold"))))
