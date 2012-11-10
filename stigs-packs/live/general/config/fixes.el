;; OSX fixes

; usr/local/bin isn't always in the path when running emacs in os x for some reason
(if (not (string-match "/usr/local/bin" (getenv "PATH")))
    (progn
      (setenv "PATH" (concat (getenv "PATH") ":" "/usr/local/bin"))
      (setq exec-path (append exec-path '("/usr/local/bin")))))



(if (eq system-type 'darwin)
    (progn
      ;; cocoa fullscreen
      ;; command = meta and option = control
      (setenv "PATH" (concat (getenv "PATH") ":" "/Library/PostgreSQL/9.1/bin"))
      (setenv "PATH" (concat (getenv "PATH") ":" "//Users/stihenri/bin"))
      (setenv "CLOJURESCRIPT_HOME" "/Users/stig/lib/clojurescript")
      (setq exec-path (append exec-path '("/Library/PostgreSQL/9.1/bin")))
      (setq exec-path (append exec-path '("/Users/stig/lib")))
      (setq exec-path (append exec-path '("/Users/stihenri/bin")))
      (setq ns-command-modifier 'meta)
      (setq ns-option-modifier 'control)))
(setenv "PATH" (concat (getenv "PATH") ":" "/Users/stihenri/.rvm/gems/ruby-1.9.3-p286/bin"))


;; ------ shortcut fixes ---------
;; nxml
(defun nxml-key-fix ()
  (define-key nxml-mode-map "\M-h" 'windmove-left))
(add-hook 'nxml-mode-hook 'nxml-key-fix)
;; magit
(defun magit-key-fix ()
  (define-key magit-mode-map "\M-h" 'windmove-left ))
(add-hook 'magit-mode-hook 'magit-key-fix)

(defun js2-mode-key-fix ()
  (define-key js2-mode-map "\M-j" 'windmove-down))
(add-hook 'js2-mode-hook 'js2-mode-key-fix)
