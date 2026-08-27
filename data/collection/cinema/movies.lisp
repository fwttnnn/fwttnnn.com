(defpackage #:data/collection/cinema/movies
  (:use #:cl)
  (:export #:+data+))

(defparameter data/collection/cinema/movies:+data+
  '((:genre "Politics"
     :movies ((:name "A Taxi Driver"
               :link "https://en.wikipedia.org/wiki/A_Taxi_Driver"
               :poster "https://upload.wikimedia.org/wikipedia/en/2/23/A_Taxi_Driver.jpg")))
    (:genre "Comedy (Drama)"
     :movies ((:name "Green Book"
               :link "https://en.wikipedia.org/wiki/Green_Book_(film)"
               :poster "https://upload.wikimedia.org/wikipedia/en/5/5b/Green_Book_%282018_poster%29.png")
              (:name "The Terminal"
               :link "https://en.wikipedia.org/wiki/The_Terminal"
               :poster "https://upload.wikimedia.org/wikipedia/en/8/86/Movie_poster_the_terminal.jpg")))))
