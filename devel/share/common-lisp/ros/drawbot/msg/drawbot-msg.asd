
(cl:in-package :asdf)

(defsystem "drawbot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Custom" :depends-on ("_package_Custom"))
    (:file "_package_Custom" :depends-on ("_package"))
  ))