(defpackage #:data/collection/games/pc
  (:use #:cl)
  (:export #:+data+))

(defparameter data/collection/games/pc:+data+
  '((:genre "Incremental"
     :games ((:name "A Dark Room"
              :link "https://adarkroom.doublespeakgames.com/"
              :code "https://github.com/doublespeakgames/adarkroom")))
    (:genre "cRPG"
     :games ((:name "Pillars of Eternity 2: Deadfire"
              :link "https://eternity.obsidian.net")
             (:name "Divinity Original Sin 2"
              :link "https://divinity.com/original-sin-ii/")))
    (:genre "Puzzle"
     :games ((:name "Portal"
              :link "https://www.thinkwithportals.com")
             (:name "Portal 2"
              :link "https://www.thinkwithportals.com")))
    (:genre "Sandbox"
     :games ((:name "Minecraft"
              :link "https://www.minecraft.net")
             (:name "Project Zomboid"
              :link "https://projectzomboid.com/")))
    (:genre "Tower Defense"
     :games ((:name "Plants vs. Zombie"
              :link "https://web.archive.org/web/20090801140825/http://www.popcap.com/games/pvz")))))
