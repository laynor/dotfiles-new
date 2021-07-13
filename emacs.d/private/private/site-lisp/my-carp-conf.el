(add-to-list 'load-path (concat user-home-directory "src/3rdparty/Carp/emacs"))
(require 'carp-mode)
(require 'inf-carp-mode)
(require 'carp-flycheck)
(add-to-list 'auto-mode-alist '("\\.carp\\'" . carp-mode))
(add-hook 'carp-mode-hook
          (lambda ()
            (flycheck-mode 1)))

(provide 'my-carp-conf)
