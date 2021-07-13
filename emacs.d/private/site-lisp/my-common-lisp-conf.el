;; (use-package redshank-loader
;;   :config
;;   (progn
;;     (redshank-setup '(lisp-mode-hook slime-repl-mode-hook) t)
;;     (spacemacs/declare-prefix-for-mode 'lisp-mode "mr" "redshank")
;;     (spacemacs/declare-prefix-for-mode 'lisp-mode "mrl" "letify")
;;     (spacemacs/declare-prefix-for-mode 'lisp-mode "mrs" "skeletons")
;;     (spacemacs/declare-prefix-for-mode 'lisp-mode "mra" "align")
;;     (spacemacs/set-leader-keys-for-minor-mode 'redshank-mode
;;       (kbd "rd")  'redshank-extract-to-defun
;;       (kbd "rll") 'redshank-letify-form
;;       (kbd "rlu") 'redshank-letify-form-up
;;       (kbd "rsc") 'redshank-defclass-skeleton
;;       (kbd "rss") 'redshank-slot-spec-skeleton
;;       (kbd "rsS") 'redshank-asdf-defsystem-skeleton
;;       (kbd "rsp") 'redshank-defpackage-skeleton
;;       (kbd "rsi") 'redshank-in-package-skeleton
;;       (kbd "rsf") 'redshank-form-with-slots-skeleton
;;       (kbd "rsm") 'redshank-mode-line-skeleton
;;       (kbd "rc")  'redshank-condify-form
;;       (kbd "re")  'redshank-eval-whenify-form
;;       (kbd "rn")  'redshank-rewrite-negated-predicate
;;       (kbd "rf")  'redshank-complete-form
;;       (kbd "rL")  'redshank-enclose-form-with-lambda
;;       (kbd "rp")  'redshank-maybe-splice-progn
;;       (kbd "raf") 'redshank-align-forms-as-columns
;;       (kbd "ras") 'redshank-align-slot-specs-in-form
;;       )))


(defun load-startup-file ()
  (slime-repl-send-string (format "%S" '(load "antani")))
  (remove-hook 'slime-connected-hook 'load-startup-file))

(defun slime-qlot-exec (directory)
  (interactive (list (read-directory-name "Project directory: ")))
  (slime-start :program "qlot"
               :program-args '("exec" "ros" "-S" "." "run")
               :directory directory
               :name 'qlot
               :env (list (concat "PATH=" (mapconcat 'identity exec-path ":")))))

(defun projectile-qlot ()
  (interactive)
  ;; (add-hook 'slime-connected-hook
  ;;           'load-startup-file)
  (slime-qlot-exec (projectile-project-root)))

(evil-define-key 'normal 'lisp-mode-map
  (kbd "SPC p q") 'projectile-qlot
  (kbd "SPC h j") 'slime-autodoc-manually)

(defun fix-eldoc-setup ()
  (setq eldoc-documentation-functions '(slime-autodoc)))

(use-package slime
  :config
  (add-hook 'slime-autodoc-mode-hook
            'fix-eldoc-setup))

(use-package slime
  :config (progn (push 'slime-autodoc slime-contribs)))

(provide 'my-common-lisp-conf)
