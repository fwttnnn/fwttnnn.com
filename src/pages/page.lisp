(defpackage #:pages/page
  (:use #:cl)
  (:export #:render))

(defun pages/page:render ()
  (layouts/main:html5
    (:div :class "layout--gallery"
      (:div
        (:div
          (components/media/image:component "/media/images/profile/me.jpeg"))
        (:p (:a :href "https://www.linkedin.com/in/fwttnnn/"
                :target "_blank"
                :rel "noreferrer noopener"
                (components/animated/text/bubble/pastel:component "fattan")))
        (:p "software engineer"))
      (:div
        (:div
          (loop for i in '(1 2 3) do
            (components/media/image:component (format nil "/media/images/location/bandung/~a.jpg" i))))
       (:p "bandung, " (components/animated/text/bubble/red:component "indonesia"))
       (:p "available to relocate"))
       
      (:div
        (:div
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
            " (" (components/animated/text/bubble/special/telyu:component "telyu") "), and "
            (:a :style "display: inline-flex; align-items: center; vertical-align: middle;"
                :href "https://makersinstitute.io/home"
                :target "_blank"
                :rel "noreferrer noopener"
                (:img :src "/media/images/company/makers.png"
                      :width 20
                      :height 20))
            " (" (components/animated/text/bubble/special/makers:component "makers") ")"))
      (:div
        (:div
          (:a :href "https://github.com/fwttnnn/sptfw"
              :target "_blank"
              :rel "noreferrer noopener"
              (components/media/video:component "/media/videos/project/sptfw.webm"))
          (:a :href "https://kontinu.netlify.app/horse/vanilla"
              :target "_blank"
              :rel "noreferrer noopener"
              (components/media/video:component "/media/videos/project/kontinu.webm")))
        (:p "projects (personal)")
        (:p "more on "
          (:a :style "display: inline-flex; align-items: center; vertical-align: middle;"
              :href "https://github.com/fwttnnn"
              :target "_blank"
              :rel "noreferrer noopener"
              (:img :src "/media/images/social/github.png"
                    :width 20
                    :height 20))
          " "
          (:a :href "https://github.com/fwttnnn"
              :target "_blank"
              :rel "noreferrer noopener"
              (components/animated/text/bubble/rainbow:component "github"))
          ", "
          (:a :style "display: inline-flex; align-items: center; vertical-align: middle;"
              :href "https://codeberg.org/fwttnnn"
              :target "_blank"
              :rel "noreferrer noopener"
              (:img :src "/media/images/social/codeberg.png"
                    :width 20
                    :height 20))
          " "
          (:a :href "https://codeberg.org/fwttnnn"
              :target "_blank"
              :rel "noreferrer noopener"
              (components/animated/text/bubble/blue:component "codeberg"))))
      (:div
        (:div
          (components/media/image:component "https://i.pinimg.com/736x/e8/d9/ab/e8d9ab86312fb6128476176cde3ef836.jpg")
          (components/media/image:component "https://i.pinimg.com/1200x/ff/5b/50/ff5b506f6b5979340ea2d71ca8d1c504.jpg")
          (components/media/image:component "https://i.pinimg.com/1200x/c7/f9/c8/c7f9c8c41ecacbb5e364419e01aeed86.jpg"))
        (:p :style "text-align: justify; margin-bottom: 12px;"
            (:small "*some of these images are pulled from pinterest"))
        (:p "other pages:")
        (:nav
          (:ul
            (:li (:a :href "/collection" (components/animated/text/bubble/pastel:component "collection")))
            (:li (:a :href "/wishlist" (components/animated/text/bubble/pastel:component "wishlist")))))))
    (loop for i from 1 to 9 do
      (:br))))
