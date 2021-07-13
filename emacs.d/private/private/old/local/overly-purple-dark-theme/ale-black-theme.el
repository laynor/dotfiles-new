;;; ale-black-theme.el --- A dark mostly purple color theme for emacs

;; Copyright (C) 2011-2015 Bozhidar Batsov

;; Author: Alessandro Piras (laynor@gmail.com)
;; URL: http://github.com/bbatsov/zenburn-emacs
;; Version: 1.0

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; A black and white + purple theme.

;;; Code:
(deftheme ale-black
  "Created 2013-02-24.")

(custom-theme-set-variables
 'ale-black
 '(evil-default-cursor (quote (t "#cc0044")))
 '(show-paren-mode t))

(custom-theme-set-faces
 'ale-black
 '(ac-candidate-face ((t (:background "light gray" :foreground "black" :underline "light slate blue"))))
 '(ac-clang-candidate-face ((t (:background "light gray" :foreground "navy" :underline "medium slate blue"))))
 '(bold ((t (:weight bold))))
 '(bow ((t (:inherit nil :background "gray80" :foreground "black"))))
 '(cursor ((t (:background "#cc00cc"))))
 '(diff-hl-change ((t (:background "slate blue" :foreground "blue3"))))
 '(diff-removed ((t (:inherit diff-changed :background "firebrick4"))))
 '(ediff-odd-diff-C ((t (:background "dim grey" :foreground "White"))))
 '(eldoc-highlight-function-argument ((t (:inherit bold :box nil :underline "deep pink"))))
 '(erc-keyword-face ((t (:foreground "magenta" :weight bold))))
 '(error ((t (:foreground "Red" :weight bold))))
 '(factor-font-lock-comment ((t (:inherit font-lock-comment-face))))
 '(factor-font-lock-parsing-word ((t (:inherit font-lock-keyword-face))))
 '(factor-font-lock-stack-effect ((t (:foreground "green"))))
 '(factor-font-lock-string ((t (:inherit font-lock-string-face))))
 '(factor-font-lock-word ((t (:inherit font-lock-function-name-face))))
 '(flycheck-error ((t (:inherit error :underline t))))
 '(flycheck-error-face ((t (:inherit error :underline t))))
 '(flx-highlight-face ((t (:inherit font-lock-keyword-face :underline t :weight bold))))
 '(font-lock-builtin-face ((t (:foreground "medium slate blue"))))
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face :foreground "MediumPurple2"))))
 '(font-lock-comment-face ((t (:foreground "MediumPurple3" :slant italic))))
 '(font-lock-constant-face ((t (:foreground "#ff0022"))))
 '(font-lock-doc-face ((t (:inherit font-lock-string-face :foreground "purple3"))))
 '(font-lock-fic-face ((((class color)) (:background "Red" :foreground "Yellow" :weight bold))))
 '(font-lock-function-name-face ((t (:foreground "deeppink" :weight bold))))
 '(font-lock-keyword-face ((t (:foreground "dodger blue" :weight bold))))
 '(font-lock-preprocessor-face ((t (:inherit font-lock-builtin-face :foreground "yellow"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit bold :foreground "dark slate grey"))))
 '(font-lock-regexp-grouping-construct ((t (:inherit bold :foreground "steel blue"))))
 '(font-lock-string-face ((t (:foreground "blue violet"))))
 '(font-lock-type-face ((t (:foreground "spring green" :weight bold))))
 '(font-lock-variable-name-face ((t (:foreground "forest green" :weight bold))))
 '(geiser-font-lock-autodoc-current-arg ((t (:background "dim gray" :weight bold))))
 '(highlight-indentation-face ((t (:inherit fringe :background "grey8"))))
 '(hl-line ((t (:background "grey13"))))
 '(hl-sexp-face ((t (:background "gray7"))))
 '(hri-macros-face ((t (:foreground "dark slate blue"))))
 '(ido-first-match ((t (:slant italic :weight bold))))
 '(ido-subdir ((t (:foreground "dodger blue"))))
 '(info-header-node ((t (:inherit info-node :foreground "gold"))))
 '(info-header-xref ((t (:inherit info-xref :foreground "yellow"))))
 '(info-menu-header ((t (:inherit variable-pitch :foreground "DodgerBlue1" :weight bold :height 1.5))))
 '(info-node ((t (:foreground "yellow" :slant italic :weight bold))))
 '(info-title-4 ((t (:inherit variable-pitch :foreground "dark violet" :weight bold))))
 '(info-xref-visited ((t (:inherit (link-visited info-xref)))))
 '(jedi:highlight-function-argument ((t (:inherit eldoc-highlight-function-argument))))
 '(link ((t (:foreground "DodgerBlue3" :underline t))))
 '(link-visited ((t (:inherit link :foreground "purple3"))))
 '(magit-log-author ((t (:foreground "MediumPurple1"))))
 '(magit-log-sha1 ((t (:foreground "cornflower blue"))))
 '(menu ((t (:foreground "red" :height 80))))
 '(minibuffer-prompt ((t (:foreground "LimeGreen"))))
 ;; '(mode-line ((t (:background "grey" :foreground "black" :height 100 :family "Consolas"))))
 ;; '(mode-line-buffer-id ((t (:slant italic :weight bold :height 0.9 :family "Segoe UI"))))
 ;; '(mode-line-inactive ((t (:inherit mode-line :background "grey30" :foreground "grey80" :weight light))))
 '(powerline-active1 ((t (:background "#222226" :foreground "black" :inherit mode-line))))
 '(powerline-active2 ((t (:background  "#222226" :foreground "black" :inherit mode-line))))
 '(powerline-inactive1 ((t (:background "red" :foreground "black"))))
 '(powerline-inactive2 ((t (:background "red" :foreground "black"))))
 '(paren-face ((t (:foreground "dim gray"))))
 '(popup-scroll-bar-foreground-face ((t (:background "blue"))))
 '(powerline-enotify-bg-face ((t (:background "gray8" :foreground "grey75" :box (:line-width 1 :color "grey75" :style released-button) :slant italic :weight bold))))
 ;;'(pp^L-highlight ((t (:foreground "#440044" :box (:line-width 1 :style pressed-button)))))
 '(region ((t (:background "#382D7B"))))
 '(show-paren-mismatch ((t (:background "white" :foreground "red"))))
 '(slime-repl-inputed-output-face ((t (:foreground "maroon1"))))
 '(trailing-whitespace ((t (:background "grey50"))))
 '(w3m-anchor ((t (:inherit link :foreground "red"))))
 '(w3m-arrived-anchor ((t (:inherit link :foreground "magenta"))))
 '(w3m-current-anchor ((t (:underline t :weight bold))))
 '(w3m-header-line-location-title ((t (:background "gray15" :foreground "dodger blue"))))
 '(w3m-image ((t (:inherit black-on-white))))
 '(woman-bold ((t (:inherit bold :foreground "deep sky blue"))))
 '(flymake-errline ((((class color)) (:underline "red"))))
 '(flymake-warnline ((((class color)) (:underline "yellow"))))
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal)))))

(provide-theme 'ale-black)

;;; ale-black-theme.el ends here
