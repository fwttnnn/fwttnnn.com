(defpackage #:data/recipe/beverage
  (:use #:cl)
  (:export #:+data+))

(defparameter data/recipe/beverage:+data+
  '((:name "Avocado Juice"
     :ingredients ((:name   "Avocado"
                    :amount "1/2")
                   (:name   "Water"
                    :amount "\~100ml"))
     :steps ((:desc "Put the Avocado inside the blender."
              :pict "/recipe/beverage/avocado-juice/1.png")))))
