(defpackage #:pages/404
  (:use #:cl)
  (:export #:html))

(defun pages/404:html ()
  (html5:render
    (:p "Sorry, we couldn't find the page you're looking for.")
    (:p "It's either:")
    (:ol (:li "Renamed")
         (:li "Deleted")
         (:li "Or, I'm just lazy and haven't made it yet."))
    (:p "Please check the URL and try again.")
    (:br)
    (:p "Click the " (:span :style "color: #ff00c3; font-style: italic;" "magic link") " below to get back:"
      (:ul (:li (:a :href "/"
                    :onclick "history.length > 1 ? history.back() : window.location.href='/'"
                    :style "text-decoration: none;"
                    (components/animated/text/bubble/rainbow:component "Magic")
                    " "
                    (components/animated/text/bubble/rainbow:component "Link")))))))
