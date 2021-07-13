;; KLUDGE
;; (defun idris-filename-to-load ()
;;   "Compute the working directory and filename to load in Idris, returning these as a cons."
;;   (let* ((fn (buffer-file-name idris-currently-loaded-buffer))
;;          (ipkg-srcdir (idris-ipkg-find-src-dir))
;;          (srcdir (if ipkg-srcdir
;;                      ipkg-srcdir
;;                    (file-name-directory fn))))
;;     (when (and  ;; check that srcdir is prefix of filename - then load relative
;;            (> (length fn) (length srcdir))
;;            (string= (substring fn 0 (length srcdir)) srcdir))
;;       (setq fn (file-relative-name fn srcdir)))
;;     (cons srcdir fn)))

;; (use-package idris-mode
;;   :config (add-hook 'idris-mode-hook (lambda () (setq evil-auto-indent nil))))

(provide 'my-idris-conf)
