;; IVY
(require 'ivy)
(defalias 'ivy--regex-plus 'ivy--regex-fuzzy)

(setq ivy-re-builders-alist '((t . ivy--regex-fuzzy)))
(setq ivy--regex-function 'ivy--regex-fuzzy)
(setq ivy-initial-inputs-alist nil)

Auto-complete mode
(require 'auto-complete)
(define-key ac-completing-map (kbd "C-n") 'ac-next)
(define-key ac-completing-map (kbd "C-p") 'ac-previous)
(global-auto-complete-mode)

(provide 'my-ivy-conf)
