(defpackage #:data/cinema/animated
  (:use #:cl)
  (:export #:+data+))

(defparameter data/cinema/animated:+data+
  '((:genre "Game Adaptation"
     :animes ((:name "Devil May Cry: The Animated Series"
               :poster "https://upload.wikimedia.org/wikipedia/en/e/e4/Devil_May_Cry_vol_1.jpg"
               :link "http://dmc-tv.com")))
    (:genre "Adventure"
     :animes ((:name "Made in Abyss"
               :poster "https://upload.wikimedia.org/wikipedia/en/9/9a/Made_in_Abyss_volume_1_cover.jpg"
               :link "https://miabyss.com/")
              (:name "Blue Exorcist"
               :poster "https://upload.wikimedia.org/wikipedia/en/6/62/Blue_Exorcist_vol_1.png"
               :link "http://ao-ex.com/")))))
