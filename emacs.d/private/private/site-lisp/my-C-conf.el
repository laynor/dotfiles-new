;; irony/irony-eldoc
;; (add-hook 'c++-mode-hook 'irony-mode)
;; (add-hook 'c-mode-hook 'irony-mode)
;; (add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'which-function-mode)
(add-hook 'c++-mode-hook 'which-function-mode)
(add-hook 'objc-mode-hook 'which-function-mode)
;; (add-hook 'c-mode-hook 'rtags-start-process-unless-running)
;; (add-hook 'c++-mode-hook 'rtags-start-process-unless-running)
;; (add-hook 'objc-mode-hook 'rtags-start-process-unless-running)

;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
;; (eval-after-load 'company
;;   '(progn
     ;; (setq company-backends (remove 'company-clang company-backends))
     ;; (add-to-list 'company-backends 'company-irony)))
;; (defun my-irony-mode-hook ()
  ;; XXX: what's the purpose of these two define-key?
  ;; (define-key irony-mode-map [remap completion-at-point]
  ;;   'irony-completion-at-point-async)
  ;; (define-key irony-mode-map [remap complete-symbol]
  ;;   'irony-completion-at-point-async)
  ;; (irony-eldoc 1)
  ;; )



;; (add-hook 'irony-mode-hook 'my-irony-mode-hook)
;; (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; (add-hook 'c-mode-common-hook
;;           (lambda ()
;;             (flycheck-mode -1)))

(add-to-list 'load-path (concat user-emacs-directory "private/site-lisp/"))

;;(require 'hri)

;; (setq rtags-autostart-diagnostics t)
;; (rtags-diagnostics)

;; (setq rtags-completions-enabled t)
;; (require 'flycheck-rtags)

;; (defun my-flycheck-rtags-setup ()
;;   (flycheck-select-checker 'rtags)
;;   ;; (setq-local flycheck-highlighting-mode nil) ;; RTags creates more accurate overlays.
;;   (setq-local flycheck-check-syntax-automatically '(save new-line idle-change mode-enabled)))

;; (add-hook 'c-mode-hook #'my-flycheck-rtags-setup)
;; (add-hook 'c++-mode-hook #'my-flycheck-rtags-setup)
;; (add-hook 'objc-mode-hook #'my-flycheck-rtags-setup)

;; (require 'company)
;; (push 'company-rtags company-backends)
;; flycheck-clangcheck

;; (require 'flycheck-clangcheck)
;; (defun my-select-clangcheck-for-checker ()
;;   "Select clang-check for flycheck's checker."
;;   (flycheck-set-checker-executable 'c/c++-clangcheck
;;                                    "/usr/bin/clang-check")
;;   (flycheck-select-checker 'c/c++-clangcheck))

;; (add-hook 'c-mode-hook #'my-select-clangcheck-for-checker)
;; (add-hook 'c++-mode-hook #'my-select-clangcheck-for-checker)

;; ;; enable static analysis
;; (setq flycheck-clangcheck-analyze t)

;; (eval-after-load 'company
;;   '(add-to-list 'company-backends 'company-irony))

;; (use-package smartparens
;;   :defer t
;;   :config (progn
;;             (sp-local-pair 'c-mode "'" nil :actions nil)
;;             (sp-local-pair 'c-mode "`" nil :actions nil)))

(provide 'my-C-conf)
