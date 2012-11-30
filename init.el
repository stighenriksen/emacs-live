(setenv "CLOJURESCRIPT_HOME" (expand-file-name "~/lib/clojurescript"))

;; load live-lib
(add-to-list 'command-switch-alist
             (cons "--live-safe-mode"
                   (lambda (switch)
                     nil)))
;;; 
;; Store live base dirs
(setq live-root-dir user-emacs-directory)

(setq
 live-tmp-dir      (file-name-as-directory (concat live-root-dir "tmp"))
 live-etc-dir      (file-name-as-directory (concat live-root-dir "etc"))
 live-lib-dir      (file-name-as-directory (concat live-root-dir "lib"))
 live-packs-dir    (file-name-as-directory (concat live-root-dir "packs"))
 live-autosaves-dir(file-name-as-directory (concat live-tmp-dir  "autosaves"))
 live-backups-dir  (file-name-as-directory (concat live-tmp-dir  "backups"))
 live-load-pack-dir nil)

(load-file (concat live-lib-dir "live-core.el"))

;; create tmp dirs if necessary
(make-directory live-etc-dir t)
(make-directory live-tmp-dir t)
(make-directory live-autosaves-dir t)
(make-directory live-backups-dir t)

;;default packs
(setq live-packs (directory-files "~/.emacs.d/packs" nil "[a-zA-Z]"))

(mapcar (lambda (pack-dir)
          (live-load-pack pack-dir))
        (live-pack-dirs))
