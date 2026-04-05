(defpackage #:pages/index
  (:use #:cl)
  (:export #:html))

(defun pages/index:html ()
  (html5:render
    (:div :style "display: flex; flex-direction: column; gap: 0.5rem;"
      (:div
        (:div :style "display: flex; flex-wrap: wrap; gap: 0.75rem; margin-top: 0.75rem; margin-bottom: 0.75rem; align-items: flex-start;"
          (components/media/image:component "/media/images/profile/me.jpeg"))
        (:p (components/animated/text/bubble/pastel:component "fattan"))
        (:p "full stack developer"))
      (:div
        (:div :style "display: flex; flex-wrap: wrap; gap: 0.75rem; margin-top: 0.75rem; margin-bottom: 0.75rem; align-items: flex-start;"
          (loop for i in '(1 2 3) do
            (components/media/image:component (format nil "/media/images/location/bandung/~a.jpg" i))))
        (:p "bandung, " (components/animated/text/bubble/red:component "indonesia"))
        (:p "6° 55' 2.87\" S, 107° 37' 8.84\" E"))
      (:div
        (:div :style "display: flex; flex-wrap: wrap; gap: 0.75rem; margin-top: 0.75rem; margin-bottom: 0.75rem; align-items: flex-start;"
          (components/media/image:component "/media/images/company/telyu-place.jpg")
          (components/media/image:component "/media/images/company/makers-place.jpeg"))
        (:p :style "text-align: justify;"
            "in the past, i've worked with "
            (:a :style "display: inline-flex; align-items: center; vertical-align: middle;"
                :href "https://telkomuniversity.ac.id/"
                :target "_blank"
                :rel "noreferrer noopener"
                (:img :src "/media/images/company/telyu.png"
                      :width 20
                      :height 20))
            " (telyu), and "
            (:a :style "display: inline-flex; align-items: center; vertical-align: middle;"
                :href "https://makersinstitute.io/home"
                :target "_blank"
                :rel "noreferrer noopener"
                (:img :src "/media/images/company/makers.png"
                      :width 20
                      :height 20))
             " (makers)"))
      (:div
        (:div :style "display: flex; flex-wrap: wrap; gap: 0.75rem; margin-top: 0.75rem; margin-bottom: 0.75rem; align-items: flex-start;"
          (:a :href "https://github.com/fwttnnn/sptfw"
              :target "_blank"
              :rel "noreferrer noopener"
              (components/media/video:component "/media/videos/project/sptfw.webm"))
          (:a :href "https://kontinu.netlify.app/horse/vanilla"
              :target "_blank"
              :rel "noreferrer noopener"
              (components/media/video:component "/media/videos/project/kontinu.webm")))
        (:p "projects (personal)")
        (:p "check out more on my "
          (:a :href "https://github.com/fwttnnn"
              :target "_blank"
              :rel "noreferrer noopener"
              (components/animated/text/bubble/rainbow:component "github")) "!")))
    (loop for i from 1 to 9 do
      (:br))))
