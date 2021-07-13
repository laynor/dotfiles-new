;; (add-hook 'before-save-hook
;;           (lambda ()
;;             (if (eq major-mode 'rust-mode)
;;                 (ignore-errors (lsp-format-buffer)))))

(add-hook 'rust-mode-hook
          (lambda ()
            (setq fill-column 120)))

(defun my-rust-ignore-sexp ()
  (interactive)
  (save-excursion
    (back-to-indentation)
    (insert (concat "#[ignore]\n"
                    (s-repeat (- (point) (point-at-bol)) " ")))))

(evil-define-key 'normal 'rust-mode-map
  (kbd ", z i") 'my-rust-ignore-sexp)

(provide 'my-rust-conf)
