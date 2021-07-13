(use-package gnu-apl-mode
  :config (progn
            (require 'gnu-apl-mode)

            (setq gnu-apl-mode-map
                  (let ((map (gnu-apl--make-base-mode-map "H-")))
                    (define-key map (kbd "C-c r") 'gnu-apl-interactive-send-region)
                    (define-key map (kbd "C-c C-c") 'gnu-apl-interactive-send-current-function)
                    (define-key map (kbd "C-c C-l") 'gnu-apl-interactive-send-buffer)
                    (define-key map (kbd "C-c C-z") 'gnu-apl-switch-to-interactive)
                    map))

            (setq gnu-apl-interactive-mode-map
                  (let ((map (gnu-apl--make-base-mode-map "H-")))
                    (define-key map (kbd "TAB") 'completion-at-point)
                    (define-key map (kbd "C-c C-f") 'gnu-apl-edit-function)
                    (define-key map (kbd "C-c C-v") 'gnu-apl-edit-variable)
                    (define-key map (kbd "C-c C-m") 'gnu-apl-plot-line)
                    (define-key map [menu-bar gnu-apl edit-function] '("Edit function" . gnu-apl-edit-function))
                    (define-key map [menu-bar gnu-apl edit-matrix] '("Edit variable" . gnu-apl-edit-variable))
                    (define-key map [menu-bar gnu-apl plot-line] '("Plot line graph of variable content" . gnu-apl-plot-line))
                    map))
            ))

(defun my-apl-hook ()
  (interactive)
  (buffer-face-set '(:family "Dyalog" :foundry "acds" :height 128 :foreground "white"))
  (turn-off-fci-mode)
  (set-input-method "APL-Z")
  )

(use-package dyalog-mode
  :defer t
  :config (add-hook 'dyalog-mode-hook 'my-apl-hook))

(provide 'my-apl-conf)
