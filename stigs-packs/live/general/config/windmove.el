(global-set-key (kbd "C-M-J") (lambda () (interactive) (enlarge-window 1)))
(global-set-key (kbd "C-M-K") (lambda () (interactive) (enlarge-window -1)))
(global-set-key (kbd "C-M-H") (lambda () (interactive) (enlarge-window -1 t)))
(global-set-key (kbd "C-M-L") (lambda () (interactive) (enlarge-window 1 t)))

(global-set-key (kbd "M-j") 'windmove-down)
(global-set-key (kbd "M-k") 'windmove-up)
(global-set-key (kbd "M-h") 'windmove-left)
(global-set-key (kbd "M-l") 'windmove-right)
