(defpackage #:data/recipe/meal
  (:use #:cl)
  (:export #:+data+))

(defparameter data/recipe/meal:+data+
  '((:name "Beef Shortplate"
     :ingredients ((:name   "Beef (shortplate cuts)"
                    :amount "1kg")
                   (:name   "Onion"
                    :amount "1/2")
                   (:name   "Honey"
                    :amount "1/4 table spoon"))
     :steps ((:desc "Slice the onions into thin slices."
              :pict "/recipe/meal/beef-shortplate/1.png")
             (:desc "Pour \~20ml of water into the pan, and (medium) heat it for \~2min."
              :pict "/recipe/meal/beef-shortplate/2.png")
             (:desc "Wait until the onions turn (a bit) brown-ish. Then, pour the beef into the pan."
              :pict "/recipe/meal/beef-shortplate/3.png")))))
