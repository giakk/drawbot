
(cl:in-package :asdf)

(defsystem "drawbot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Custom" :depends-on ("_package_Custom"))
    (:file "_package_Custom" :depends-on ("_package"))
    (:file "Custom_interface" :depends-on ("_package_Custom_interface"))
    (:file "_package_Custom_interface" :depends-on ("_package"))
    (:file "Data_arduino" :depends-on ("_package_Data_arduino"))
    (:file "_package_Data_arduino" :depends-on ("_package"))
  ))