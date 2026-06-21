(defpackage #:pages/collection/tcg/pokemon
  (:use #:cl)
  (:export #:html))

(defconstant +image-size+ 131)

(defun pages/collection/tcg/pokemon:html ()
  (html5:render
    (:p "Pokémons")
    (:ul
      (loop for group in data/tcg/pokemon/pokemons:+data+ do
        (:li (getf group :type)
          (:ul
            (loop for pokemon in (getf group :pokemons) do
              (:li :style (format nil "list-style: none; text-align: center; width: ~apx;" +image-size+)
                (:img :width  +image-size+
                      :height +image-size+
                      :style  (format nil "object-fit: contain; width: ~apx; height: ~apx;" +image-size+ +image-size+)
                      :src    (format nil "https://www.smogon.com/dex/media/sprites/xy/~a.gif" (string-downcase pokemon)))
                (:br)
                (:small pokemon)))))))
    (:p "Trainers")
    (:ul
      (loop for trainer in data/tcg/pokemon/trainers:+data+ do
        (:li (getf trainer :name)
          (:ul
            (loop for sprite in (getf trainer :sprites) do
              (:li :style (format nil "list-style: none; text-align: center; width: ~apx;" +image-size+)
                (:img :width  +image-size+
                      :height +image-size+
                      :style  (format nil "object-fit: contain; width: ~apx; height: ~apx;" +image-size+ +image-size+)
                      :src    sprite)))))))))
