(defpackage #:data/steam/wishlist
  (:use #:cl)
  (:export #:+data+))

(defparameter data/steam/wishlist:+data+
  '((:category "Mystery & Story"
     :links ("https://store.steampowered.com/app/413410/Danganronpa_Trigger_Happy_Havoc/"
             "https://store.steampowered.com/app/413420/Danganronpa_2_Goodbye_Despair/"
             "https://store.steampowered.com/app/567640/Danganronpa_V3_Killing_Harmony/"
             "https://store.steampowered.com/app/555950/Danganronpa_Another_Episode_Ultra_Despair_Girls/"
             "https://store.steampowered.com/app/1691970/Danganronpa_S_Ultimate_Summer_Camp/"))
    (:category "Trains"
     :links ("https://store.steampowered.com/app/1957760/Islands__Trains/"))
    (:category "Cards"
     :links ("https://store.steampowered.com/app/718670/Cultist_Simulator/"
             "https://store.steampowered.com/app/1028310/BOOK_OF_HOURS/"))
    (:category "cRPG"
     :links ("https://store.steampowered.com/app/1432100/The_Bookwalker_Thief_of_Tales/"))))
