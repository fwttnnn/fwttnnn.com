(asdf:defsystem "app"
  :depends-on ("spinneret")
  :serial t
  :components
  ((:file "src/web/html5")
   (:file "src/web/pages/index")
   (:file "app")))
