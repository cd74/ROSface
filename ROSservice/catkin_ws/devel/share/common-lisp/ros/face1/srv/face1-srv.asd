
(cl:in-package :asdf)

(defsystem "face1-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "FaceSrv1" :depends-on ("_package_FaceSrv1"))
    (:file "_package_FaceSrv1" :depends-on ("_package"))
  ))