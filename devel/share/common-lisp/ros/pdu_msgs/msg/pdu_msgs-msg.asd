
(cl:in-package :asdf)

(defsystem "pdu_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "FuseReport" :depends-on ("_package_FuseReport"))
    (:file "_package_FuseReport" :depends-on ("_package"))
    (:file "FuseStatus" :depends-on ("_package_FuseStatus"))
    (:file "_package_FuseStatus" :depends-on ("_package"))
    (:file "RelayCommand" :depends-on ("_package_RelayCommand"))
    (:file "_package_RelayCommand" :depends-on ("_package"))
    (:file "RelayReport" :depends-on ("_package_RelayReport"))
    (:file "_package_RelayReport" :depends-on ("_package"))
    (:file "RelayState" :depends-on ("_package_RelayState"))
    (:file "_package_RelayState" :depends-on ("_package"))
    (:file "RelayStatus" :depends-on ("_package_RelayStatus"))
    (:file "_package_RelayStatus" :depends-on ("_package"))
  ))