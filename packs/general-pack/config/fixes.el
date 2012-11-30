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


(global-auto-revert-mode)
(add-hook 'term-mode-hook (lambda()
                (yas-minor-mode -1)))
(put 'erase-buffer 'disabled nil)

;(set-face-attribute 'default nil :height 120)
(setq locale-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-selection-coding-system 'utf-8-unix)
(prefer-coding-system 'utf-8-unix)
(set-locale-environment "en_US.UTF-8-UNIX")

;; set up unicode
(prefer-coding-system       'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)

;; From Emacs wiki
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))
