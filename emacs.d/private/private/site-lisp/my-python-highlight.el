  (defun my/python-mode-hook ()
    (add-to-list 'company-backends
                 'company-jedi))
  (add-hook 'python-mode-hook 'my/python-mode-hook)

  (defvar python-logging-and-debug (make-face 'python-logging-and-debug))
  (set-face-attribute 'python-logging-and-debug nil
                      :foreground "gray42" :italic t)

  (defvar python-any-face (make-face 'python-any-face))
  (set-face-attribute 'python-any-face nil
                      :foreground "IndianRed4" :italic t)

  (setq python-logging-keywords
    (concat "\\b\\(?:"
            (regexp-opt (list"logging.debug" "logging.warn" "logging.info" "logging.error"))
            "\\)\\b"))

  (setq python-any-require-keywords
        "\\bAny.require\\w*\\b")

  (setq python-debug-methods
        "\\bdebug\\w+\\b")

  (setq python-log-methods
        "\\b\\w+Log\\b")

  (font-lock-add-keywords 'python-mode
                          (list
                           (list (concat
                                  "\\("python-logging-keywords"\\)") 1 'python-logging-and-debug t)))

  (font-lock-add-keywords 'python-mode
                          (list
                           (list (concat "\\(" python-any-require-keywords "\\)")
                                 1
                                 'python-any-face t)))

  (font-lock-add-keywords 'python-mode
                          (list
                           (list (concat "\\(" python-debug-methods "\\)")
                                 1
                                 'python-logging-and-debug t)))

  (font-lock-add-keywords 'python-mode
                          (list
                           (list (concat "\\(" python-log-methods "\\)")
                                 1
                                 'python-logging-and-debug t)))

(provide 'my-python-highlight)
