(require 'erc)

;; Make C-c RET (or C-c C-RET) send messages instead of RET.
(define-key erc-mode-map (kbd "RET") nil)
(define-key erc-mode-map (kbd "C-c RET") 'erc-send-current-line)
(define-key erc-mode-map (kbd "C-c C-RET") 'erc-send-current-line)


;; This causes ERC to connect to the IRC server on your own machine (if
;; you have one) upon hitting C-c e b.  Replace MYNICK with your IRC
;; nick.  Often, people like to run bitlbee (http://bitlbee.org/) as an
;; AIM/Jabber/MSN to IRC gateway, so that they can use ERC to chat with
;; people on those networks.
(global-set-key "\C-ceb" (lambda () (interactive)
                           (erc :server "irc.schibsted-it.no" :port "6667"
                                :nick "stigh")))

;; FINN.no-conf:
(setq erc-autojoin-channels-alist '(("irc.schibsted-it.no" "#api" "#mobil")))
