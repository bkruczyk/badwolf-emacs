;;; badwolf-theme.el --- Bad Wolf color theme

;; Copyright (C) 2015  Bartłomiej Kruczyk

;; Author: bkruczyk <bartlomiej.kruczyk@gmail.com>
;; Version: 1.2
;; Keywords: themes
;; Package-Requires: ((emacs "24"))
;; URL: https://github.com/bkruczyk/badwolf-emacs

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

;; An Emacs port of Steve's Losh theme for Vim:
;; https://github.com/sjl/badwolf

;;; Credits:

;; Steve Losh is creator of the original theme for Vim
;; (https://github.com/sjl/badwolf), on which this Emacs port was
;; based.

;; locojay is creator of the initial Emacs port
;; (https://github.com/locojay/badwolf).

;;; Code:

(deftheme badwolf "Bad Wolf color theme")

(let ((bg "#222120")
      (plain "#f8f6f2")
      (snow "#ffffff")
      (coal "#000000")
      (brightgravel "#d9cec3")
      (lightgravel "#998f84")
      (gravel "#857f78")
      (mediumgravel "#666462")
      (deepgravel "#45413b")
      (deepergravel "#35322d")
      (darkgravel "#242321")
      (blackgravel "#1c1b1a")
      (blackestgravel "#141413")
      (dalespale "#fade3e")
      (dirtyblonde "#f4cf86")
      (taffy "#ff2c4b")
      (saltwatertaffy "#8cffba")
      (tardis "#0a9dff")
      (orange "#ffa724")
      (lime "#aeee00")
      (dress "#ff9eb8")
      (toffee "#b88853")
      (coffee "#c7915b")
      (darkroast "#88633f"))

  (custom-theme-set-faces
   'badwolf

   ;; font lock
   `(default ((t (:inherit nil :foreground ,plain :background ,bg))))
   `(font-lock-builtin-face ((t (:foreground ,brightgravel))))
   `(font-lock-comment-face ((t (:foreground ,lightgravel :italic t))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,lightgravel))))
   `(font-lock-constant-face ((t (:foreground ,orange))))
   `(font-lock-doc-face ((t (:foreground ,snow))))
   `(font-lock-function-name-face ((t (:foreground ,orange))))
   `(font-lock-keyword-face ((t (:foreground ,taffy :weight bold))))
   `(font-lock-string-face ((t (:foreground ,dirtyblonde))))
   `(font-lock-type-face ((t (:foreground ,dress))))
   `(font-lock-variable-name-face ((t (:foreground ,plain))))
   `(font-lock-warning-face ((t (:foreground ,dress :weight bold))))
   `(shadow ((t (:foreground ,mediumgravel))))
   `(success ((t (:foreground ,lime))))
   `(error ((t (:foreground ,dress :weight bold))))
   `(warning ((t (:foreground ,orange))))

   ;; ui
   `(cursor ((t (:background ,tardis))))
   `(region ((t (:foreground nil :background ,mediumgravel))))
   `(secondary-selection ((t (:foreground ,darkgravel :background ,tardis))))
   `(fringe ((t (:background ,bg))))
   `(linum ((t (:foreground ,mediumgravel :background ,bg))))
   `(vertical-border ((t (:foreground ,gravel))))
   `(highlight ((t (:foreground ,coal :background ,dalespale))))
   `(escape-glyph ((t (:foreground ,tardis))))
   `(hl-line ((t (:inherit nil :background "#292826"))))
   `(minibuffer-prompt ((t (:foreground ,lime))))
   `(mode-line ((t (:box nil :foreground ,snow :background "#595959"))))
   `(mode-line-inactive ((t (:box nil :foreground "#848484" :background "#333333"))))
   `(header-line ((t (:inherit mode-line))))
   `(link ((t (:foreground ,lightgravel :underline t))))
   `(link-visited ((t (:inherit link :foreground ,orange))))

   ;; whitespace-mode
   `(trailing-whitespace ((t (:background ,taffy :foreground ,blackestgravel))))
   `(whitespace-trailing ((t (:background ,taffy :foreground ,blackestgravel))))
   `(whitespace-empty ((t :background ,dirtyblonde)))
   `(whitespace-line ((t (:background ,deepergravel :foreground ,dress))))

   `(whitespace-hspace ((t (:foreground ,mediumgravel))))
   `(whitespace-space ((t (:foreground ,mediumgravel))))
   `(whitespace-tab ((t (:foreground ,mediumgravel))))
   `(whitespace-newline ((t (:foreground ,mediumgravel))))

   `(whitespace-indentation ((t (:background ,dirtyblonde :foreground ,taffy))))
   `(whitespace-space-after-tab ((t (:background ,dirtyblonde :foreground ,taffy))))
   `(whitespace-space-before-tab ((t (:background ,dirtyblonde :foreground ,taffy))))

   ;; ruler-mode
   `(ruler-mode-default ((t :inherit linum :underline t)))
   `(ruler-mode-column-number ((t (:foreground ,lightgravel :background ,bg :underline ,mediumgravel))))
   `(ruler-mode-fill-column ((t (:foreground ,dirtyblonde :background ,bg :underline ,mediumgravel))))
   `(ruler-mode-goal-column ((t (:inherit 'ruler-mode-fill-column))))
   `(ruler-mode-comment-column ((t (:inherit 'ruler-mode-fill-column))))
   `(ruler-mode-tab-stop ((t (:inherit 'ruler-mode-fill-column))))
   `(ruler-mode-current-column ((t (:foreground ,tardis :background ,bg :underline ,mediumgravel))))
   `(ruler-mode-margins ((t (:inherit ruler-mode-default))))
   `(ruler-mode-fringes ((t (:inherit ruler-mode-default))))
   `(ruler-mode-pad ((t (:inherit ruler-mode-default))))

   ;; search
   `(isearch ((t (:foreground ,coal :background ,saltwatertaffy))))
   `(isearch-fail ((t (:foreground ,coal :background ,taffy))))
   `(lazy-highlight ((t (:foreground ,coal :background ,dalespale))))

   ;; show-paren-mode
   `(show-paren-match ((t (:foreground ,coal :background ,dalespale))))
   `(show-paren-mismatch ((t (:foreground ,coal :background ,taffy))))

   ;; anzu
   `(anzu-match-1 ((t (:background ,lime :foreground ,coal))))
   `(anzu-match-2 ((t (:background ,dalespale :foreground ,coal))))
   `(anzu-match-3 ((t (:background ,tardis :foreground ,coal))))
   `(anzu-mode-line ((t (:foreground ,dress))))
   `(anzu-replace-to ((t (:background ,dalespale :foreground ,coal))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,mediumgravel))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,dalespale))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,dress))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,orange))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,tardis))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,lime))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,toffee))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,saltwatertaffy))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,coffee))))
   `(rainbow-delimiters-unmatched-face ((t (:foreground ,taffy))))

   ;; eshell
   `(eshell-prompt ((t (:inherit minibuffer-prompt))))

   ;; which-function-mode
   `(which-func ((t :inherit font-lock-function-name-face)))

   ;; company
   `(company-echo-common ((t (:foreground ,plain))))
   `(company-preview ((t (:background ,deepergravel :foreground ,plain))))
   `(company-preview-common ((t (:foreground ,orange))))
   `(company-preview-search ((t (:foreground ,tardis))))
   `(company-scrollbar-bg ((t (:background ,deepgravel))))
   `(company-scrollbar-fg ((t (:background ,mediumgravel))))
   `(company-tooltip ((t (:foreground ,plain :background ,deepergravel))))
   `(company-tooltip-annotation ((t (:foreground ,coffee :background ,deepergravel))))
   `(company-tooltip-common ((t (:foreground ,dress :background ,deepergravel))))
   `(company-tooltip-common-selection ((t (:foreground ,dress :background ,deepergravel))))
   `(company-tooltip-mouse ((t (:inherit highlight))))
   `(company-tooltip-selection ((t (:background ,deepergravel :foreground ,orange))))
   `(company-template-field ((t (:inherit region))))

  ;; ivy
   `(ivy-current-match ((t :inherit highlight)))
   `(ivy-minibuffer-match-face-1 ((t :bold t)))
   `(ivy-minibuffer-match-face-2 ((t :foreground ,taffy :bold t)))
   `(ivy-minibuffer-match-face-3 ((t :foreground ,taffy :bold t)))
   `(ivy-minibuffer-match-face-4 ((t :foreground ,taffy :bold t)))

   ;; org
   `(outline-1 ((t (:foreground ,orange :height 1.2))))
   `(outline-2 ((t (:foreground ,brightgravel))))
   `(outline-3 ((t (:foreground ,saltwatertaffy))))
   `(outline-4 ((t (:foreground ,dress))))
   `(outline-5 ((t (:foreground ,coffee))))
   `(outline-6 ((t (:foreground ,dirtyblonde))))
   `(outline-7 ((t (:foreground ,orange))))
   `(outline-8 ((t (:foreground ,taffy))))

   `(org-done ((t (:foreground ,saltwatertaffy :weight bold))))
   `(org-todo ((t (:foreground ,dalespale :weight bold))))
   `(org-date ((t (:foreground ,dress :underline t))))
   `(org-special-keyword ((t (:foreground ,dress))))
   `(org-document-info ((t (:foreground ,brightgravel))))
   `(org-document-title ((t (:foreground ,plain :family "sans" :height 1.8 :weight bold))))

   ;; erc
   `(erc-default-face ((t (:inherit default))))
   `(erc-notice-face ((t (:inherit font-lock-comment-face))))
   `(erc-nick-default-face ((t (:foreground ,taffy :bold t))))
   `(erc-nick-msg-face ((t (:inherit erc-nick-default-face))))
   `(erc-my-nick-face ((t (:foreground ,orange :bold t))))
   `(erc-current-nick-face ((t (:inherit erc-my-nick-face))))
   `(erc-direct-msg-face ((t (:foreground ,snow))))
   `(erc-input-face ((t (:foreground ,dress))))
   `(erc-prompt-face ((t (:foreground ,tardis))))
   `(erc-button ((t (:inherit link))))
   `(erc-timestamp-face ((t (:foreground ,lime))))

   ;; diff-hl
   `(diff-hl-insert ((t (:foreground ,lime :background ,bg))))
   `(diff-hl-delete ((t (:foreground ,taffy :background ,bg))))
   `(diff-hl-change ((t (:foreground ,orange :background ,bg))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'badwolf)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; badwolf-theme.el ends here
