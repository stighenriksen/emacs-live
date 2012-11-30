;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(setq inferior-lisp-program "clisp") ; your Lisp system
(require 'slime)
 (slime-setup '(slime-fancy))
