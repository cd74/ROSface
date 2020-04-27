
(cl:in-package :asdf)

(defsystem "face-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "FaceSrv" :depends-on ("_package_FaceSrv"))
    (:file "_package_FaceSrv" :depends-on ("_package"))
  ))