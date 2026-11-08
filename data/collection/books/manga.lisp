(defpackage #:data/collection/books/manga
  (:use #:cl)
  (:export #:+data+))

(defparameter data/collection/books/manga:+data+
  '((:genre "Action"
     :animes ((:name "Tokyo Ghoul"
               :poster "https://upload.wikimedia.org/wikipedia/en/e/e5/Tokyo_Ghoul_volume_1_cover.jpg"
               :link "https://www.viz.com/tokyo-ghoul")))))
              
