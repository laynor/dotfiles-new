(use-package redshank-loader
  :defer t
  :config
  (progn
    (redshank-setup '(lisp-mode-hook slime-repl-mode-hook) t)
    (spacemacs/declare-prefix-for-mode 'lisp-mode "mr" "redshank")
    (spacemacs/declare-prefix-for-mode 'lisp-mode "mrl" "letify")
    (spacemacs/declare-prefix-for-mode 'lisp-mode "mrs" "skeletons")
    (spacemacs/declare-prefix-for-mode 'lisp-mode "mra" "align")
    (spacemacs/set-leader-keys-for-minor-mode 'redshank-mode
      (kbd "rd")  'redshank-extract-to-defun
      (kbd "rll") 'redshank-letify-form
      (kbd "rlu") 'redshank-letify-form-up
      (kbd "rsc") 'redshank-defclass-skeleton
      (kbd "rss") 'redshank-slot-spec-skeleton
      (kbd "rsS") 'redshank-asdf-defsystem-skeleton
      (kbd "rsp") 'redshank-defpackage-skeleton
      (kbd "rsi") 'redshank-in-package-skeleton
      (kbd "rsf") 'redshank-form-with-slots-skeleton
      (kbd "rsm") 'redshank-mode-line-skeleton
      (kbd "rc")  'redshank-condify-form
      (kbd "re")  'redshank-eval-whenify-form
      (kbd "rn")  'redshank-rewrite-negated-predicate
      (kbd "rf")  'redshank-complete-form
      (kbd "rL")  'redshank-enclose-form-with-lambda
      (kbd "rp")  'redshank-maybe-splice-progn
      (kbd "raf") 'redshank-align-forms-as-columns
      (kbd "ras") 'redshank-align-slot-specs-in-form
      )))

(load (expand-file-name "~/.roswell/helper.el"))
(slime-setup '(slime-fancy slime-asdf slime-references slime-indentation slime-company))
(defun slime-qlot-exec (directory)
  (interactive (list (read-directory-name "Project directory: ")))
  (slime-start :program "qlot"
               :program-args '("exec" "ros" "-S" "." "run")
               :directory directory
               :name 'qlot
               :env (list (concat "PATH=" (mapconcat 'identity exec-path ":")))))
(provide 'my-common-lisp-conf)
