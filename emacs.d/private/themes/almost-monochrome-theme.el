(deftheme almost-monochrome
  "Created 2018-10-29.")

(custom-theme-set-variables
 'almost-monochrome
 '(package-selected-packages '(slime-company slime common-lisp-snippets \(overly-purple-dark\ :location\ local\)-theme yapfify xml-rpc ws-butler window-numbering which-key wgrep-ag web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package toc-org tagedit spacemacs-theme spaceline smeargle slim-mode scss-mode sass-mode restart-emacs realgud rainbow-mode rainbow-identifiers rainbow-delimiters quickrun quelpa pyvenv pytest pyenv-mode py-isort pug-mode projectile-sift popwin pip-requirements persp-mode pcre2el paradox orgit org-projectile org-present org-pomodoro org-plus-contrib org-download org-bullets open-junk-file ob-elixir neotree mwim move-text mmm-mode markdown-toc magit-gitflow magit-gh-pulls macrostep lua-mode lorem-ipsum livid-mode live-py-mode linum-relative link-hint less-css-mode json-mode js2-refactor js-doc jira-markup-mode jira irony-eldoc insert-shebang info+ indent-guide ido-vertical-mode ibuffer-projectile hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot gnu-apl-mode gitlab github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md flycheck-pos-tip flycheck-mix flycheck-elm flx-ido floobits fish-mode fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu emmet-mode elm-mode elisp-slime-nav dumb-jump disaster diff-hl define-word cython-mode company-web company-tern company-statistics company-shell company-irony-c-headers company-irony company-emacs-eclim company-c-headers company-auctex company-anaconda column-enforce-mode color-identifiers-mode coffee-mode cmake-mode clojure-snippets clj-refactor clean-aindent-mode clang-format cider-eval-sexp-fu auto-yasnippet auto-highlight-symbol auto-compile alchemist aggressive-indent ag adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))
 '(safe-local-variable-values '((projectile-project-root . "/home/alessandro/src/Honda") (javascript-backend . tern) (javascript-backend . lsp) (elixir-enable-compilation-checking . t) (elixir-enable-compilation-checking)))
 '(ansi-color-names-vector ["black" "light gray" "dark gray" "light slate gray"]))

(custom-theme-set-faces
 'almost-monochrome
 '(default ((t (:inherit nil :stipple nil :background "#0b0e14" :foreground "light gray" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :foundry "CYEL" :family "Iosevka SS09"))))
 '(hl-line ((t (:background "#161e46"))))
 '(highlight ((((class color) (min-colors 10)) (:foreground "black" :background "#a0abe4"))))
 '(region ((((class color) (min-colors 10)) (:foreground "black" :background "#a0abe4"))))
 '(cursor ((((class color) (min-colors 10)) (:background "light gray"))))
 '(fringe ((((class color) (min-colors 10)) (:foreground "black" :background "light gray"))))
 '(secondary-selection ((((class color) (min-colors 10)) (:foreground: "black" :background "light slate gray"))))
 '(isearch ((((class color) (min-colors 10)) (:foreground "black" :background "light gray"))))
 '(lazy-highlight ((((class color) (min-colors 10)) (:foreground "black" :background "light gray"))))
 '(trailing-whitespace ((((class color) (min-colors 10)) (:background "red"))))
 '(mode-line ((((class color) (min-colors 10)) (:box (:line-width -1 :style released-button) :background "#04020c" :foreground "light gray"))))
 '(mode-line-inactive ((((class color) (min-colors 10)) (:box (:line-width -1 :style released-button) :background "#020202" :foreground "dark gray"))))
 '(which-func ((t (:foreground "deep pink"))))
 '(success ((t (:foreground "spring green"))))
 '(minibuffer-prompt ((((class color) (min-colors 10)) (:weight bold :foreground "light gray"))))
 '(escape-glyph ((((class color) (min-colors 10)) (:foreground "light gray"))))
 '(error ((((class color) (min-colors 10)) (:weight bold :slant italic :foreground "red"))))
 '(warning ((((class color) (min-colors 10)) (:foreground "yellow"))))
 '(success ((((class color) (min-colors 10)) (:foreground "green"))))
 '(font-lock-builtin-face ((((class color) (min-colors 10)) (:foreground "light gray"))))
 '(font-lock-comment-face ((((class color) (min-colors 10)) (:slant italic :foreground "dark gray"))))
 '(font-lock-constant-face ((((class color) (min-colors 10)) (:weight bold :foreground "light gray"))))
 '(font-lock-function-name-face ((t (:foreground "#CCBBCC"))))
 '(font-lock-keyword-face ((((class color) (min-colors 10)) (:weight bold :foreground "white"))))
 '(font-lock-string-face ((((class color) (min-colors 10)) (:foreground "light slate gray"))))
 '(font-lock-type-face ((((class color) (min-colors 10)) (:weight bold :foreground "light gray"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 10)) (:weight bold :foreground "light slate gray"))))
 '(font-lock-warning-face ((((class color) (min-colors 10)) (:foreground "yellow"))))
 '(link ((((class color) (min-colors 10)) (:underline t :foreground "light gray"))))
 '(link-visited ((((class color) (min-colors 10)) (:underline t :foreground "light gray"))))
 '(show-paren-match ((t (:background "light slate gray"))))
 '(show-paren-mismatch ((t (:background "red"))))
 '(ido-first-match ((((class color) (min-colors 10)) (:foreground "light gray"))))
 '(ido-only-match ((((class color) (min-colors 10)) (:underline "light gray" :foreground "light gray"))))
 '(ido-subdir ((((class color) (min-colors 10)) (:weight bold :foreground "white"))))
 '(helm-header ((t (:foreground "dark gray" :background "black" :underline nil :box nil))))
 '(helm-source-header ((t (:foreground "white" :background "black" :underline nil :weight bold :box (:line-width 1 :style released-button)))))
 '(helm-selection ((t (:background "light gray" :underline t :foreground "black"))))
 '(helm-selection-line ((t (:background "black"))))
 '(helm-visible-mark ((t (:foreground "black" :background "white"))))
 '(helm-candidate-number ((t (:foreground "light gray" :background "black"))))
 '(helm-separator ((t (:foreground "white" :background "black"))))
 '(helm-bookmark-addressbook ((t (:foreground "light gray" :background "black"))))
 '(helm-bookmark-directory ((t (:foreground nil :background nil :inherit helm-ff-directory))))
 '(helm-bookmark-file ((t (:foreground nil :background nil :inherit helm-ff-file))))
 '(helm-bookmark-gnus ((t (:foreground "white" :background "black"))))
 '(helm-bookmark-info ((t (:foreground "light gray" :background "black"))))
 '(helm-bookmark-man ((t (:foreground "white" :background "black"))))
 '(helm-bookmark-w3m ((t (:foreground "white" :background "black"))))
 '(helm-buffer-not-saved ((t (:foreground "white" :background "black"))))
 '(helm-buffer-process ((t (:foreground "white" :background "black"))))
 '(helm-buffer-saved-out ((t (:foreground "light gray" :background "black"))))
 '(helm-buffer-size ((t (:foreground "light gray" :background "black"))))
 '(helm-ff-directory ((t (:foreground "white" :background "black" :weight bold))))
 '(helm-ff-file ((t (:foreground "light gray" :background "black" :weight normal))))
 '(helm-ff-executable ((t (:foreground "light gray" :background "black" :weight normal))))
 '(helm-ff-invalid-symlink ((t (:foreground "white" :background "black" :weight bold))))
 '(helm-ff-symlink ((t (:foreground "white" :background "black" :weight bold))))
 '(helm-ff-prefix ((t (:foreground "black" :background "white" :weight normal))))
 '(helm-grep-cmd-line ((t (:foreground "white" :background "black"))))
 '(helm-grep-file ((t (:foreground "light gray" :background "black"))))
 '(helm-grep-finish ((t (:foreground "light gray" :background "black"))))
 '(helm-grep-lineno ((t (:foreground "light gray" :background "black"))))
 '(helm-grep-match ((t (:foreground nil :background nil :inherit helm-match))))
 '(helm-moccur-buffer ((t (:foreground "white" :background "black"))))
 '(flyspell-duplicate ((((class color) (min-colors 10)) (:weight unspecified :foreground unspecified :slant unspecified :underline "light gray"))))
 '(flyspell-incorrect ((((class color) (min-colors 10)) (:weight unspecified :foreground unspecified :slant unspecified :underline "light gray"))))
 '(rainbow-delimiters-base-face ((t (:inherit nil :foreground "#553333"))))
 '(rainbow-delimiters-depth-1-face ((t (:inherit rainbow-delimiters-base-face :foreground "#3a3a3a"))))
 '(rainbow-delimiters-depth-2-face ((t (:inherit rainbow-delimiters-base-face :foreground "#335533"))))
 '(rainbow-delimiters-depth-3-face ((t (:inherit rainbow-delimiters-base-face :foreground "#333366"))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit rainbow-delimiters-base-face :foreground "#553355"))))
 '(rainbow-delimiters-depth-5-face ((t (:inherit rainbow-delimiters-base-face :foreground "#505033"))))
 '(rainbow-delimiters-depth-6-face ((t (:inherit rainbow-delimiters-base-face :foreground "#335050"))))
 '(rainbow-delimiters-depth-7-face ((t (:inherit rainbow-delimiters-base-face :foreground "#453345"))))
 '(rainbow-delimiters-depth-8-face ((t (:inherit rainbow-delimiters-base-face :foreground "#454533"))))
 '(rainbow-delimiters-depth-9-face ((t (:inherit rainbow-delimiters-base-face :foreground "#334545"))))
 '(idris-hole-face ((t (:inherit font-lock-warning-face))))
 '(idris-semantic-bound-face ((t nil)))
 '(idris-semantic-data-face ((t (:inherit font-lock-string-face))))
 '(idris-semantic-function-face ((t (:foreground "font-lock-function-name-face"))))
 )

(provide-theme 'almost-monochrome)
