;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     javascript
     ocaml
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     ;; ivy
     ibuffer
     auto-completion
     autohotkey
     python
     ipython-notebook
     better-defaults
     react
     erlang
     elixir
     emacs-lisp
     html
     git
     github
     markdown
     org
     clojure
     common-lisp
     lua
     c-c++
     ;;gtags
     cscope
     colors
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.

   ;; (overly-purple-dark-theme :location (recipe :fetcher file
   ;;                                             :path ,(concat user-emacs-directory
   ;;                                                            "private/local/overly-purple-dark-theme/overly-purple-dark-theme.el")))
   dotspacemacs-additional-packages `(helm-flx
                                      shen-mode
                                      ediprolog
                                      switch-window
                                      gnu-apl-mode
                                      irony
                                      irony-eldoc
                                      rtags
                                      company-irony
                                      company-irony-c-headers
                                      (melpa-upstream-visit :location (recipe :fetcher file
                                                                              :path ,(concat user-emacs-directory
                                                                                             "private/local/melpa-upstream-visit/melpa-upstream-visit.el")))
                                      
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(overly-purple-dark-theme)
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'hybrid
   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'lisp-interaction-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(overly-purple-dark
                         spacemacs-dark)
   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Consolas"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non-nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ t
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, `J' and `K' move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non-nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non-nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non-nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non-nil the paste micro-state is enabled. When enabled pressing `p'
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil
   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non-nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   dotspacemacs-frame-title-format "%I@%S"
   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (load (concat user-emacs-directory "private/passwords.el"))
  (add-to-list 'custom-theme-load-path (concat user-emacs-directory "private/local/overly-purple-dark-theme/"))
  (toggle-frame-maximized)
  (global-set-key (kbd "C-x o") 'switch-window)
  ;; (setq auto-completion-return-key-behavior nil)
  (setq auto-completion-tab-key-behavior 'complete)
  (setq inferior-shen-program "Shen")
  (setq dotspacemacs-auto-resume-layouts t)
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;;(use-package melpa-upstream-visit :quelpa t)

  ;; REACT
  (add-hook 'react-mode-hook
            (lambda ()
              (setq company-minimum-prefix-length 1)))

  ;; ERLANG
  (use-package erldoc
    :no-require t
    :config
    (message "foo1.1")
    (message "foo1.2")
    (defun erldoc-parse-html (url)
      (with-temp-buffer
        (url-insert-file-contents url)
        (libxml-parse-html-region (point-min) (point-max)))))

  (add-to-list 'quelpa-melpa-recipe-stores (concat user-emacs-directory "private/local/recipes"))
  ;; goto definition
  (evil-global-set-key 'normal (kbd "M-.") 'evil-goto-definition)
  ;; C-x 'ace-window
  (global-set-key (kbd "C-x o") 'ace-window)

  ;; Company
  ;; (define-key company-active-map (kbd "C-n") 'company-select-next)
  ;; (define-key company-active-map (kbd "C-p") 'company-select-previous)
  
  (blink-cursor-mode +1)
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

  ;; Irony
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'objc-mode-hook 'irony-mode)

  ;; replace the `completion-at-point' and `complete-symbol' bindings in
  ;; irony-mode's buffers by irony-mode's function
  (defun my-irony-mode-hook ()
    (add-to-list 'company-backends 'company-irony))
    ;; (define-key irony-mode-map [remap completion-at-point]
    ;;   'irony-completion-at-point-async)
    ;; (define-key irony-mode-map [remap complete-symbol]
    ;;   'irony-completion-at-point-async))
  (add-hook 'irony-mode-hook 'my-irony-mode-hook)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

  ;; LOAD STUFF IN PRIVATE
  (add-to-list 'load-path (concat user-emacs-directory "private"))
  (load "exercism")
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#272822" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(blink-cursor-mode t)
 '(c-basic-offset 4)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-theme-load-path
   (quote
    ("~/.emacs.d/layers/+distribution/spacemacs/local/solarized-theme/" "~/.emacs.d/elpa/leuven-theme-20151105.752/" "~/.emacs.d/elpa/spacemacs-theme-20151125.1035/" custom-theme-directory t "~/.emacs.d/private/local/overly-purple-dark-theme/")) t)
 '(doc-view-ghostscript-program "c:/Program Files/gs/gs9.18/bin/gswin64c.exe")
 '(global-company-mode t)
 '(helm-flx-mode t)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#49483E" . 0)
     ("#67930F" . 20)
     ("#349B8D" . 30)
     ("#21889B" . 50)
     ("#968B26" . 60)
     ("#A45E0A" . 70)
     ("#A41F99" . 85)
     ("#49483E" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(irony-server-install-prefix "~/.emacs.d/private/external-programs/irony")
 '(magit-diff-use-overlays nil)
 '(package-selected-packages
   (quote
    (flycheck-mix flycheck alchemist elixir-mode pug-mode yapfify uuidgen py-isort org-projectile org org-download live-py-mode link-hint github-search eyebrowse evil-visual-mark-mode evil-unimpaired evil-ediff goto-chg undo-tree dumb-jump common-lisp-snippets column-enforce-mode color-identifiers-mode clojure-snippets rtags ibuffer-projectile helm-gtags ggtags marshal ht rainbow-identifiers irony-eldoc company-irony-c-headers company-irony irony helm-cscope xcscope disaster company-c-headers cmake-mode clang-format pyvenv pytest pyenv-mode py-yapf pip-requirements hy-mode helm-pydoc cython-mode company-anaconda anaconda-mode pythonic f ediprolog shen-mode clojure-cheatsheet lua-mode window-numbering vi-tilde-fringe smeargle rainbow-delimiters popwin org-present alert log4e gntp org-bullets open-junk-file mmm-mode indent-guide ido-vertical-mode htmlize highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-mode-manager helm-gitignore golden-ratio gnuplot flx-ido flx fill-column-indicator fancy-battery expand-region evil-tutor evil-numbers evil-iedit-state iedit evil-args evil-anzu define-word web-completion-data pos-tip inflections edn peg clean-aindent-mode eval-sexp-fu queue pkg-info epl auto-highlight-symbol adaptive-wrap async helm-make evil-matchit paredit cider-eval-sexp-fu spinner magit-popup with-editor gnu-apl-mode slime magit-gh-pulls github-clone github-browse-file git-link gist gh logito pcache toc-org org-repo-todo ws-butler spaceline restart-emacs persp-mode orgit lorem-ipsum hl-todo help-fns+ helm-company evil-mc evil-magit evil-lisp-state evil-indent-plus bracketed-paste auto-compile packed ace-jump-helm-line bind-map volatile-highlights switch-window spray smooth-scrolling powerline move-text magit-gitflow gitconfig-mode gitattributes-mode git-messenger git-commit evil-visualstar elisp-slime-nav ace-window gitignore-mode page-break-lines neotree info+ helm-swoop google-translate git-timemachine exec-path-from-shell evil-jumper evil-exchange buffer-move align-cljlet ace-link anzu request pcre2el org-pomodoro org-plus-contrib markdown-toc leuven-theme helm-projectile helm-descbinds evil-surround evil-search-highlight-persist evil-nerd-commenter auto-complete popup diminish gh-md multiple-cursors highlight helm-core markdown-mode hydra web-mode tagedit slim-mode scss-mode sass-mode less-css-mode jade-mode helm-css-scss haml-mode emmet-mode company-web hungry-delete ahk-mode evil-org evil-escape aggressive-indent avy projectile paradox linum-relative overly-purple-dark-theme rainbow-mode smartparens macrostep helm-ag clj-refactor clojure-mode ale-black-theme melpa-upstream-visit zenburn-theme monokai-theme cider yasnippet helm magit helm-c-yasnippet company-statistics company-quickhelp company auto-yasnippet ac-ispell helm-flx evil-leader evil which-key quelpa package-build use-package bind-key s dash spacemacs-theme)))
 '(paradox-automatically-star nil)
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#49483E" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#03000a" :foreground "#b2b2b2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :foundry "MS  " :family "Consolas"))))
 '(aw-leading-char-face ((t (:foreground "medium purple" :height 4.0))))
 '(company-tooltip-annotation-selection ((t (:foreground "#2f96dc"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(gnu-apl-default ((t (:family "APL385 Unicode"))) t)
 '(sp-pair-overlay-face ((t nil))))
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#272822" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(blink-cursor-mode t)
 '(c-basic-offset 4)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-theme-load-path
   (quote
    ("~/.emacs.d/layers/+distribution/spacemacs/local/solarized-theme/" "~/.emacs.d/elpa/leuven-theme-20151105.752/" "~/.emacs.d/elpa/spacemacs-theme-20151125.1035/" custom-theme-directory t "~/.emacs.d/private/local/overly-purple-dark-theme/")) t)
 '(doc-view-ghostscript-program "c:/Program Files/gs/gs9.18/bin/gswin64c.exe")
 '(global-company-mode t)
 '(helm-flx-mode t)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#49483E" . 0)
     ("#67930F" . 20)
     ("#349B8D" . 30)
     ("#21889B" . 50)
     ("#968B26" . 60)
     ("#A45E0A" . 70)
     ("#A41F99" . 85)
     ("#49483E" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(irony-server-install-prefix "~/.emacs.d/private/external-programs/irony")
 '(magit-diff-use-overlays nil)
 '(package-selected-packages
   (quote
    (unfill mwim livid-mode json-mode company-tern dash-functional web-beautify skewer-mode simple-httpd json-snatcher json-reformat js2-refactor js2-mode js-doc tern coffee-mode flycheck-mix flycheck alchemist elixir-mode pug-mode yapfify uuidgen py-isort org-projectile org org-download live-py-mode link-hint github-search eyebrowse evil-visual-mark-mode evil-unimpaired evil-ediff goto-chg undo-tree dumb-jump common-lisp-snippets column-enforce-mode color-identifiers-mode clojure-snippets rtags ibuffer-projectile helm-gtags ggtags marshal ht rainbow-identifiers irony-eldoc company-irony-c-headers company-irony irony helm-cscope xcscope disaster company-c-headers cmake-mode clang-format pyvenv pytest pyenv-mode py-yapf pip-requirements hy-mode helm-pydoc cython-mode company-anaconda anaconda-mode pythonic f ediprolog shen-mode clojure-cheatsheet lua-mode window-numbering vi-tilde-fringe smeargle rainbow-delimiters popwin org-present alert log4e gntp org-bullets open-junk-file mmm-mode indent-guide ido-vertical-mode htmlize highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-mode-manager helm-gitignore golden-ratio gnuplot flx-ido flx fill-column-indicator fancy-battery expand-region evil-tutor evil-numbers evil-iedit-state iedit evil-args evil-anzu define-word web-completion-data pos-tip inflections edn peg clean-aindent-mode eval-sexp-fu queue pkg-info epl auto-highlight-symbol adaptive-wrap async helm-make evil-matchit paredit cider-eval-sexp-fu spinner magit-popup with-editor gnu-apl-mode slime magit-gh-pulls github-clone github-browse-file git-link gist gh logito pcache toc-org org-repo-todo ws-butler spaceline restart-emacs persp-mode orgit lorem-ipsum hl-todo help-fns+ helm-company evil-mc evil-magit evil-lisp-state evil-indent-plus bracketed-paste auto-compile packed ace-jump-helm-line bind-map volatile-highlights switch-window spray smooth-scrolling powerline move-text magit-gitflow gitconfig-mode gitattributes-mode git-messenger git-commit evil-visualstar elisp-slime-nav ace-window gitignore-mode page-break-lines neotree info+ helm-swoop google-translate git-timemachine exec-path-from-shell evil-jumper evil-exchange buffer-move align-cljlet ace-link anzu request pcre2el org-pomodoro org-plus-contrib markdown-toc leuven-theme helm-projectile helm-descbinds evil-surround evil-search-highlight-persist evil-nerd-commenter auto-complete popup diminish gh-md multiple-cursors highlight helm-core markdown-mode hydra web-mode tagedit slim-mode scss-mode sass-mode less-css-mode jade-mode helm-css-scss haml-mode emmet-mode company-web hungry-delete ahk-mode evil-org evil-escape aggressive-indent avy projectile paradox linum-relative overly-purple-dark-theme rainbow-mode smartparens macrostep helm-ag clj-refactor clojure-mode ale-black-theme melpa-upstream-visit zenburn-theme monokai-theme cider yasnippet helm magit helm-c-yasnippet company-statistics company-quickhelp company auto-yasnippet ac-ispell helm-flx evil-leader evil which-key quelpa package-build use-package bind-key s dash spacemacs-theme)))
 '(paradox-automatically-star nil)
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(python-shell-interpreter-interactive-arg "-i")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#49483E" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#03000a" :foreground "#b2b2b2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :foundry "MS  " :family "Consolas"))))
 '(aw-leading-char-face ((t (:foreground "medium purple" :height 4.0))))
 '(company-tooltip-annotation-selection ((t (:foreground "#2f96dc"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(gnu-apl-default ((t (:family "APL385 Unicode"))) t)
 '(sp-pair-overlay-face ((t nil))))
)

