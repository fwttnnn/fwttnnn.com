(defpackage #:data/collection/games/ps2
  (:use #:cl)
  (:export #:+data+))

(defparameter data/collection/games/ps2:+data+
  '((:genre "Racing"
     :games ((:name "Need For Speed: Most Wanted"
              :serial "SLUS-21267")
             (:name "Need For Speed: Carbon"
              :serial "SLES-54321"
              :serial "PBPX-95503")
             (:name "Gran Turismo 3"
              :serial "PBPX-95503")
             (:name "Gran Turismo 4"
              :serial "SCUS-97328")
             (:name "Burnout 3"
              :serial "SLUS-21050")
             (:name "Burnout Revenge"
              :serial "SLUS-21242")
             (:name "Sonic Riders"
              :serial "SLES-53560")))
    (:genre "Horror"
     :games ((:name "Fatal Frame"
              :serial "SLUS-20388")
             (:name "Fatal Frame II"
              :serial "SLUS-20766")
             (:name "Fatal Frame III"
              :serial "SLUS-21244")))
    (:genre "Hack & Slash"
     :games ((:name "God of War II"
              :serial "SCUS-97481")
             (:name "Devil May Cry 3"
              :serial "SLUS-20964")))
    (:genre "Open World"
     :games ((:name "Grand Theft Auto: San Andreas"
              :serial "SLUS-20946")
             (:name "Shadow of the Colossus"
              :serial "SCUS-97472")))
    (:genre "First Person Shooter"
     :games ((:name "Call Of Duty 3"
              :serial "SLUS-21426")
             (:name "Call Of Duty 2"
              :serial "SLUS-21228")
             (:name "Call Of Duty: World at War"
              :serial "SLUS-21746")
             (:name "Call Of Duty: Finest Hour"
              :serial "SLUS-20725")))))
