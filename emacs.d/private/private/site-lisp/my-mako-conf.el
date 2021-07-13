(require 'mmm-auto)
(require 'mmm-mako)
(setq mmm-global-mode 'never)
(add-to-list 'auto-mode-alist '("\\.c.mako\\'" . c-mode))
(mmm-add-mode-ext-class 'c-mode "\\.c.mako\\'" 'mako)
(add-to-list 'auto-mode-alist '("\\.h.mako\\'" . c-mode))
(mmm-add-mode-ext-class 'c-mode "\\.h.mako\\'" 'mako)

(provide my-mako-conf)
