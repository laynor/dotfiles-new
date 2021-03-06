(deftheme monochrome-extra
  "Created 2019-02-12.")

(custom-theme-set-variables
 'monochrome-extra
 '(ansi-color-names-vector ["black" "light gray" "dark gray" "light slate gray"]))

(custom-theme-set-faces
 'monochrome-extra
 '(font-lock-builtin-face ((((class color) (min-colors 10)) (:foreground "light gray"))))
 '(highlight ((((class color) (min-colors 10)) (:foreground "black" :background "light gray"))))
 '(hl-line ((t (:background "#151520"))))
 '(region ((t (:background "#303030" :foreground "white"))))
 '(default ((((class color) (min-colors 10)) (:foreground "light gray" :background "black"))))
 '(cursor ((((class color) (min-colors 10)) (:background "light gray"))))
 '(fringe ((((class color) (min-colors 10)) (:foreground "black" :background "light gray"))))
 '(secondary-selection ((((class color) (min-colors 10)) (:foreground: "black" :background "light slate gray"))))
 '(isearch ((((class color) (min-colors 10)) (:foreground "black" :background "light gray"))))
 '(lazy-highlight ((((class color) (min-colors 10)) (:foreground "black" :background "light gray"))))
 '(trailing-whitespace ((((class color) (min-colors 10)) (:background "red"))))
 '(mode-line ((((class color) (min-colors 10)) (:box (:line-width -1 :style released-button) :background "#e5e5e5" :foreground "black"))))
 '(mode-line-inactive ((((class color) (min-colors 10)) (:box (:line-width -1 :style released-button) :background "#b0b0b0" :foreground "black"))))
 '(minibuffer-prompt ((((class color) (min-colors 10)) (:weight bold :foreground "light gray"))))
 '(escape-glyph ((((class color) (min-colors 10)) (:foreground "light gray"))))
 '(error ((((class color) (min-colors 10)) (:weight bold :slant italic :foreground "red"))))
 '(warning ((((class color) (min-colors 10)) (:foreground "yellow"))))
 '(success ((((class color) (min-colors 10)) (:foreground "green"))))
 '(font-lock-comment-face ((((class color) (min-colors 10)) (:slant italic :foreground "dark gray"))))
 '(font-lock-constant-face ((((class color) (min-colors 10)) (:weight bold :foreground "light gray"))))
 '(font-lock-function-name-face ((((class color) (min-colors 10)) (:foreground "white"))))
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
 '(gnus-group-news-1 ((((class color) (min-colors 10)) (:weight bold :foreground "light gray"))))
 '(gnus-group-news-2 ((((class color) (min-colors 10)) (:weight bold :foreground "light gray"))))
 '(gnus-group-news-3 ((((class color) (min-colors 10)) (:weight bold :foreground "light gray"))))
 '(gnus-group-news-4 ((((class color) (min-colors 10)) (:weight bold :foreground "light gray"))))
 '(gnus-group-news-5 ((((class color) (min-colors 10)) (:weight bold :foreground "light gray"))))
 '(gnus-group-news-low ((((class color) (min-colors 10)) (:foreground "light gray"))))
 '(gnus-group-mail-1 ((((class color) (min-colors 10)) (:weight bold :foreground "light gray"))))
 '(gnus-group-mail-2 ((((class color) (min-colors 10)) (:weight bold :foreground "light gray"))))
 '(gnus-group-mail-3 ((((class color) (min-colors 10)) (:weight bold :foreground "light gray"))))
 '(gnus-group-mail-low ((((class color) (min-colors 10)) (:foreground "light gray"))))
 '(message-header-name ((((class color) (min-colors 10)) (:foreground "light gray"))))
 '(message-header-cc ((((class color) (min-colors 10)) (:foreground "light gray"))))
 '(message-header-other ((((class color) (min-colors 10)) (:foreground "light gray"))))
 '(message-header-subject ((((class color) (min-colors 10)) (:foreground "light gray"))))
 '(message-header-to ((((class color) (min-colors 10)) (:weight bold :foreground "light gray"))))
 '(message-cited-text ((((class color) (min-colors 10)) (:slant italic :foreground "light gray"))))
 '(message-separator ((((class color) (min-colors 10)) (:weight bold :foreground "light gray"))))
 '(org-level-1 ((t (:bold t :foreground "light gray" :height 1.5))))
 '(org-level-2 ((t (:bold nil :foreground "light gray" :height 1.2))))
 '(org-level-3 ((t (:bold t :foreground "light gray" :height 1.0))))
 '(org-level-4 ((t (:bold nil :foreground "light gray" :height 1.0))))
 '(org-link ((t (:foreground "light slate gray" :underline t))))
 '(org-todo ((t (:bold t :foreground "red"))))
 '(org-done ((t (:bold t :foreground "green"))))
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
 '(flyspell-incorrect ((((class color) (min-colors 10)) (:weight unspecified :foreground unspecified :slant unspecified :underline "light gray")))))

(provide-theme 'monochrome-extra)
