(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Info-additional-directory-list '("/usr/share/info/" "~/.emacs.d/private/Info/"))
 '(Info-default-directory-list
   '("~/.emacs.d/private/Info/" "/usr/share/info/" "/usr/share/info/"))
 '(ansi-color-names-vector ["black" "light gray" "dark gray" "light slate gray"])
 '(c-default-style
   '((c-mode . "stroustrup")
     (c++-mode . "stroustrup")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu")))
 '(company-box-doc-enable t)
 '(company-tooltip-align-annotations t)
 '(company-tooltip-minimum-width 30)
 '(custom-safe-themes
   '("f54c370d46a1526bc56b8b0ca21a2bb659d6be08f11809db2c27a5887745cc1d" default))
 '(eldoc-idle-delay 0.2)
 '(evil-want-Y-yank-to-eol nil)
 '(face-font-family-alternatives
   '(("Monospace" "courier" "fixed")
     ("Monospace Serif" "Courier 10 Pitch" "Consolas" "Courier Std" "FreeMono" "Nimbus Mono L" "courier" "fixed")
     ("courier" "CMU Typewriter Text" "fixed")
     ("Sans Serif" "helv" "helvetica" "arial" "fixed")
     ("helv" "helvetica" "arial" "fixed")
     ("Iosevka SS09" "FontAwesome")))
 '(flycheck-clang-language-standard "gnu++17")
 '(flycheck-python-pylint-executable "/usr/bin/python3")
 '(fuel-factor-root-dir "/usr/lib/factor/")
 '(fuel-listener-factor-binary "/usr/bin/factor-vm")
 '(gnu-apl-key-prefix 96)
 '(js-indent-level 2)
 '(js-switch-indent-offset 2)
 '(lsp-dart-line-length 120)
 '(lsp-file-watch-threshold 30000)
 '(lsp-pyls-plugins-pyflakes-enabled nil)
 '(lsp-response-timeout 0.5)
 '(lsp-restart 'auto-restart)
 '(lsp-rust-analyzer-cargo-load-out-dirs-from-check t)
 '(lsp-rust-analyzer-cargo-run-build-scripts t)
 '(lsp-rust-analyzer-proc-macro-enable t)
 '(lsp-rust-analyzer-server-display-inlay-hints nil)
 '(lsp-ui-doc-border "dark slate blue")
 '(lsp-ui-doc-delay 0.5)
 '(lsp-ui-doc-position 'at-point)
 '(lsp-ui-doc-show-with-mouse nil)
 '(package-native-compile t)
 '(package-selected-packages
   '(swift-mode company-qml qml-mode sbt-mode npm-mode mvn meghanada maven-test-mode lsp-metals lsp-java groovy-mode groovy-imports annalist scala-mode evil-collection cfrs poetry valign kotlin-mode flycheck-kotlin evil-easymotion dired-quick-sort unkillable-scratch persistent-scratch evil-vimish-fold vimish-fold grip-mode unicode-fonts ucs-utils font-utils persistent-soft ligature company-box frame-local xterm-color vterm terminal-here shell-pop multi-term eshell-z eshell-prompt-extras esh-help sphinx-doc org-rich-yank org-category-capture org-mime org-cliplink org-brain helm-org-rifle evil-org lsp-pyright lsp-origami helm-org ron-mode helm-cider lsp-dart flutter dart-server dart-mode origami org-superstar toml-mode racer flycheck-rust cargo rust-mode emr treemacs-icons-dired posframe list-utils treemacs-projectile treemacs-magit treemacs-evil symon symbol-overlay string-inflection spaceline-all-the-icons rjsx-mode prettier-js pippel pipenv password-generator overseer nameless magit-svn lsp-python-ms json-navigator hierarchy importmagic epc ctable concurrent impatient-mode helm-xref helm-rtags helm-purpose window-purpose imenu-list helm-lsp helm-ls-git helm-git-grep helm-ctest google-c-style gitignore-templates closql emacsql-sqlite emacsql treepy flycheck-ycmd flycheck-rtags flycheck-elsa flycheck-bashate evil-textobj-line evil-lion evil-goggles evil-cleverparens paredit editorconfig shrink-path all-the-icons memoize devdocs lsp-treemacs bui pfuture cquery company-ycmd ycmd request-deferred deferred company-rtags rtags company-lsp cmake-ide levenshtein sesman queue parseedn parseclj a centered-cursor-mode ccls markdown-mode blacken attrap hybrid-mode font-lock+ dotenv-mode csv-mode godoctor go-tag go-rename go-impl go-guru go-gen-test go-fill-struct go-eldoc flycheck-golangci-lint company-go go-mode sql-indent nodejs-repl dap-mode clojure-mode yasnippet-snippets magit-section cpp-auto-include helm-gtags ggtags flycheck-credo counsel-gtags counsel swiper ivy elixir-mode treemacs-persp lsp-ui forge ghub doom-modeline browse-at-remote treemacs package-lint fcitx helpful elisp-refs loop writeroom-mode visual-fill-column flycheck-package cider lsp-mode pomidor alert log4e gntp winum unfill powerline powershell spinner magit-popup skewer-mode simple-httpd json-snatcher json-reformat multiple-cursors js2-mode idris-mode prop-menu hydra lv parent-mode projectile request haml-mode gitignore-mode fringe-helper git-gutter+ git-gutter gh marshal logito pcache ht fuzzy fsharp-mode eglot pos-tip flycheck pkg-info epl flx highlight magit transient git-commit with-editor smartparens iedit anzu evil goto-chg undo-tree eval-sexp-fu dyalog-mode diminish web-completion-data dash-functional tern company bind-map bind-key beacon yasnippet auto-virtualenv packed anaconda-mode pythonic f dash s helm avy helm-core async auto-complete popup yaml-mode lsp-haskell intero hlint-refactor hindent helm-hoogle haskell-snippets flycheck-haskell dante lcr company-ghci company-ghc ghc haskell-mode company-cabal cmm-mode racket-mode slime-company slime common-lisp-snippets \(overly-purple-dark\ :location\ local\)-theme yapfify xml-rpc ws-butler window-numbering which-key wgrep-ag web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package toc-org tagedit spacemacs-theme spaceline smeargle slim-mode scss-mode sass-mode restart-emacs realgud rainbow-mode rainbow-identifiers rainbow-delimiters quickrun quelpa pyvenv pytest pyenv-mode py-isort pug-mode projectile-sift popwin pip-requirements persp-mode pcre2el paradox orgit org-projectile org-present org-pomodoro org-plus-contrib org-download org-bullets open-junk-file ob-elixir neotree mwim move-text mmm-mode markdown-toc magit-gitflow magit-gh-pulls macrostep lua-mode lorem-ipsum livid-mode live-py-mode linum-relative link-hint less-css-mode json-mode js2-refactor js-doc jira-markup-mode jira irony-eldoc insert-shebang info+ indent-guide ido-vertical-mode ibuffer-projectile hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot gnu-apl-mode gitlab github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md flycheck-pos-tip flycheck-mix flycheck-elm flx-ido floobits fish-mode fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu emmet-mode elm-mode elisp-slime-nav dumb-jump disaster diff-hl define-word cython-mode company-web company-tern company-statistics company-shell company-irony-c-headers company-irony company-emacs-eclim company-c-headers company-auctex company-anaconda column-enforce-mode color-identifiers-mode coffee-mode cmake-mode clojure-snippets clj-refactor clean-aindent-mode clang-format cider-eval-sexp-fu auto-yasnippet auto-highlight-symbol auto-compile alchemist aggressive-indent ag adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))
 '(paradox-automatically-star t)
 '(rust-indent-method-chain t)
 '(safe-local-variable-values
   '((lsp-clients-clangd-args "-I/home/ale/.espressif/tools/xtensa-esp32-elf/esp-2020r2-8.2.0/xtensa-esp32-elf/xtensa-esp32-elf/include/c++/8.2.0/debug/" "-I/home/ale/.espressif/tools/xtensa-esp32-elf/esp-2020r2-8.2.0/xtensa-esp32-elf/xtensa-esp32-elf/include/" "-I/home/ale/.espressif/tools/xtensa-esp32-elf/esp-2020r2-8.2.0/xtensa-esp32-elf/xtensa-esp32-elf/sys-include/")
     (eval progn
           (make-local-variable 'process-environment)
           (setq process-environment
                 (append
                  (list "BINDGEN_EXTRA_CLANG_ARGS=-I/opt/flutter/bin/cache/dart-sdk/include" "LIB_SEARCH_PATH=/usr/lib")
                  process-environment))
           (make-local-variable 'compilation-environment)
           (setq compilation-environment
                 (list "BINDGEN_EXTRA_CLANG_ARGS=-I/opt/flutter/bin/cache/dart-sdk/include" "LIB_SEARCH_PATH=/usr/lib")))
     (eval progn
           (make-local-variable 'process-environment)
           (setq process-environment
                 (append
                  (list "BINDGEN_EXTRA_CLANG_ARGS=-I/opt/flutter/bin/cache/dart-sdk/include" "LIB_SEARCH_PATH=/usr/lib")
                  process-environment)))
     (eval setenv
           (setq process-environment
                 (append
                  (list "BINDGEN_EXTRA_CLANG_ARGS=-I/opt/flutter/bin/cache/dart-sdk/include" "LIB_SEARCH_PATH=/usr/lib")
                  process-environment)))
     (eval setenv
           (setq process-environment
                 (append
                  (list "BINDGEN_EXTRA_CLANG_ARGS=-I/opt/flutter/bin/cache/dart-sdk/include" "LIB_SEARCH_PATH=/usr/lib"))))
     (eval add-hook 'c++-mode-hook
           (lambda nil
             (setq flycheck-clang-language-standard "c++14")))
     (eval setq flycheck-clang-include-path
           (list
            (expand-file-name "tests/mocks" root-path)
            (expand-file-name "inc/inc_hp" root-path)
            (expand-file-name "../../component/os/os_dep/include" root-path)
            (expand-file-name "tests/mocks/FreeRTOS-Simulator/Source/include" root-path)
            (expand-file-name "tests/mocks/FreeRTOS-Simulator/Source/portable/GCC/POSIX" root-path)))
     (eval set
           (make-local-variable 'root-path)
           (file-name-directory
            (let
                ((d
                  (dir-locals-find-file ".")))
              (if
                  (stringp d)
                  d
                (car d)))))
     (javascript-backend . tide)
     (go-backend . go-mode)
     (go-backend . lsp)
     (javascript-backend . tern)
     (javascript-backend . lsp)
     (elixir-enable-compilation-checking . t)))
 '(undo-limit 1000000000)
 '(undo-outer-limit 2000000000)
 '(undo-strong-limit 2000000000)
 '(window-divider-default-bottom-width 1)
 '(window-divider-default-right-width 1)
 '(window-divider-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-scrollbar-bg ((t (:background "#282442"))))
 '(company-scrollbar-fg ((t (:background "#685cb8"))))
 '(company-tooltip ((t (:background "#1e1f3b" :foreground "#9081f0"))))
 '(company-tooltip-annotation ((t (:foreground "#c56dd1"))))
 '(company-tooltip-common ((t (:foreground "#ab6bff"))))
 '(company-tooltip-mouse ((t (:inherit highlight :inverse-video t))))
 '(company-tooltip-search ((t (:inherit highlight :inverse-video t))))
 '(company-tooltip-search-selection ((t (:foreground "deep pink"))))
 '(company-tooltip-selection ((t (:extend t :background "#110f1c"))))
 '(dyalog-apl-char ((t (:inherit font-lock-keyword-face :foreground "MediumPurple3"))))
 '(ediff-current-diff-A ((t (:extend t :background "#44071B"))))
 '(ediff-current-diff-B ((t (:extend t :background "#053626"))))
 '(ediff-current-diff-C ((t (:extend t :background "#074430"))))
 '(ediff-fine-diff-A ((t (:background "#880D36"))))
 '(ediff-fine-diff-B ((t (:background "#095F43"))))
 '(eldoc-highlight-function-argument ((t (:inherit font-lock-string-face))))
 '(font-lock-function-name-face ((t (:foreground "#CCBBCC"))))
 '(fringe ((t (:background "#121521" :foreground "light gray"))))
 '(highlight ((t (:background "dark slate blue" :foreground "black"))))
 '(hl-line ((t (:background "#101323"))))
 '(hl-todo ((t (:inherit font-lock-comment-face :foreground "#cc9393" :weight bold))))
 '(idris-hole-face ((t (:inherit font-lock-warning-face))))
 '(idris-semantic-bound-face ((t nil)))
 '(idris-semantic-data-face ((t (:inherit font-lock-string-face))))
 '(idris-semantic-function-face ((t (:foreground "font-lock-function-name-face"))))
 '(markdown-code-face ((t (:inherit fixed-pitch :foreground "AntiqueWhite1" :family "Iosevka SS09"))))
 '(mode-line ((t (:background "#04020c" :foreground "light gray" :box nil))))
 '(mode-line-inactive ((t (:background "#020202" :foreground "dark gray" :box nil))))
 '(rainbow-delimiters-depth-1-face ((t (:inherit rainbow-delimiters-base-face :foreground "#3a3a3a"))))
 '(slime-repl-inputed-output-face ((t (:foreground "#7e57c2"))))
 '(sp-show-pair-match-face ((t (:inherit show-paren-match :background "dark slate blue"))))
 '(spacemacs-normal-face ((t (:background "DarkSlateBlue" :foreground "#04020c" :inherit 'mode-line))))
 '(vertical-border ((((type tty)) (:inherit mode-line-inactive :foreground "dark slate blue"))))
 '(which-func ((t (:foreground "deep pink"))))
 '(window-divider ((t (:foreground "dark slate blue"))))
 '(window-divider-first-pixel ((t (:foreground "dark slate blue")))))
