;; [draft] on going

(defpackage #:pages/journal/life/love
  (:use #:cl)
  (:export #:html))

(defun pages/journal/life/love:html ()
  (html5:render
    (:div :style "display: flex; flex-direction: column; gap: 0.5rem;"
      (:div
        (:p "Love, explained by the movie Spirited Away."))
      (:div
        (:div :style "display: flex; flex-wrap: wrap; gap: 0.75rem; margin-top: 0.75rem; margin-bottom: 0.75rem; align-items: flex-start;"
          (:img :src "https://i.pinimg.com/1200x/3b/b5/e9/3bb5e9dab3e76ad63784de2c63497d4a.jpg"
                :height (format nil "~a" (/ 736 4))
                :width  (format nil "~a" (/ 736 4))))
        (:p "Chihiro Ogino (荻野 千尋), referred throughout most of the movie by Sen (千 lit. \"one-thousand\"), is our main character."))
      (:div
        (:div :style "display: flex; flex-wrap: wrap; gap: 0.75rem; margin-top: 0.75rem; margin-bottom: 0.75rem; align-items: flex-start;"
          (:img :src "https://i.pinimg.com/1200x/90/d2/8b/90d28b1ac5fd5a7d57634ee0c611c6f4.jpg"
                :height (format nil "~a" (/ 736 4))
                :width  (format nil "~a" (/ 736 4))))
        (:p "Nigihayami Kohakunushi (饒速水小白主, lit. \"Master of the Swift Amber River\"), referred throughout most of the movie by Haku (ハク), is our supporting character."))
      (:div
        (:div :style "display: flex; flex-wrap: wrap; gap: 0.75rem; margin-top: 0.75rem; margin-bottom: 0.75rem; align-items: flex-start;"
          (:img :src "https://i.pinimg.com/736x/e1/1a/17/e11a1779e87162b6bb6940d356fdb824.jpg"
                :height (format nil "~a" (/ 736 4))
                :width  (format nil "~a" (/ 736 4))))
        (:p "Chihiro panicked, she knows she is disappearing (dying)."))
      (:div
        (:div :style "display: flex; flex-wrap: wrap; gap: 0.75rem; margin-top: 0.75rem; margin-bottom: 0.75rem; align-items: flex-start;"
          (:img :src "https://i.pinimg.com/736x/4e/aa/d1/4eaad1d5802a53a6abc6ce563ec7df3c.jpg"
                :height (format nil "~a" (/ 736 4))
                :width  (format nil "~a" (/ 736 4))))
        (:p "Then came Haku to the rescue, giving a sense of safe."))
      (:div
        (:div :style "display: flex; flex-wrap: wrap; gap: 0.75rem; margin-top: 0.75rem; margin-bottom: 0.75rem; align-items: flex-start;"
          (:img :src "https://i.pinimg.com/1200x/89/f9/ff/89f9ff2c9d3160c11712d68757927575.jpg"
                :height (format nil "~a" (/ 736 4))
                :width  (format nil "~a" (/ 736 4))))
        (:p "They went to the spa office, whilst exchanging each other's story. Haku informs Chihiro that they've met before.")))))
