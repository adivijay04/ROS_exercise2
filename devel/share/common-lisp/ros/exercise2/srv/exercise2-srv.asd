
(cl:in-package :asdf)

(defsystem "exercise2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "SumOfInts" :depends-on ("_package_SumOfInts"))
    (:file "_package_SumOfInts" :depends-on ("_package"))
  ))