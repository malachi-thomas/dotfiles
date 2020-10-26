;; install base packages {{{
(require 'package)
(setq package-archives '(
			 ("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)
;; }}}

;; basic settings {{{
(setq inhibit-startup-message t)
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))
(setq show-paren-style 'expression)
(setq enable-recursive-minibuffers t)
(setq org-hide-emphasis-markers t)
(setq-default display-line-numbers-type 'visual)
(setq-default display-line-numbers-current-absolute t)
(setq-default display-line-numbers-width 1)
(setq-default display-line-numbers-widen t)
(scroll-bar-mode -1) ; Disable visible scrollbar
(tool-bar-mode -1) ; Disable the toolbar
(tooltip-mode -1) ; Disable tooltips
(set-fringe-mode 10) ; Give some breathing room
(menu-bar-mode -1) ; Disable the menu bar
(set-face-attribute 'default nil :font "Hack" :height 110)
(show-paren-mode t)
;; org title font size
(dolist (face '((org-level-1 . 1.4)
		(org-level-2 . 1.35)
		(org-level-3 . 1.3)
		(org-level-4 . 1.25)
		(org-level-5 . 1.2)
		(org-level-6 . 1.15)
		(org-level-7 . 1.1)
		(org-level-8 . 1.05))))
;; org bulleted list start with a •
(font-lock-add-keywords 'org-mode
			'(("^ *\\([-]\\) "
			   (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
;; }}}

;; packages and packages config {{{
(use-package counsel)
(use-package lsp-mode)
(use-package helm)
(use-package all-the-icons); do this to install the icons :all-the-icons-install-fonts t
(use-package doom-themes
  :config
  (setq doom-themes-enable-bold t)
  (setq doom-themes-enable-italic t)
  (load-theme 'doom-gruvbox t))

(use-package company
  :config 
  (global-company-mode)
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  (setq company-selection-wrap-around t)
  (company-tng-configure-default))

(use-package saveplace
  :config
  (save-place-mode))

(use-package evil
  :config
  (evil-mode 1))

(use-package evil-commentary
  :config
  (evil-commentary-mode))

(use-package undo-tree
  :config
(global-undo-tree-mode 1))

(use-package ivy
  :config
  (setq ivy-use-virtual-buffers t)
  (ivy-mode 1))

(use-package org
  :config
  (setq org-ellipsis " ▾"))

(use-package org-bullets
  :after org
  :hook (org-mode . org-bullets-mode)
  :custom
  (org-bullets-bullet-list '("◉" "○" "●" "○" "●" "○" "●")))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

(use-package projectile
  :config
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(require 'org-tempo)
  (add-to-list 'org-structure-template-alist '("sh" . "src shell"))
  (add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
  (add-to-list 'org-structure-template-alist '("js" . "src javascipt"))
  (add-to-list 'org-structure-template-alist '("py" . "src python"))
;; }}}

;; custom mappings {{{
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(define-key dired-mode-map (kbd "SPC") nil)
(define-key help-mode-map (kbd "SPC") nil)
(define-key evil-normal-state-map (kbd "<C-left>") 'evil-window-left)
(define-key evil-normal-state-map (kbd "<C-down>") 'evil-window-down)
(define-key evil-normal-state-map (kbd "<C-up>") 'evil-window-up)
(define-key evil-normal-state-map (kbd "<C-right>") 'evil-window-right)

(evil-define-key 'normal 'global
  (kbd "C-s") 'save-buffer
  (kbd "C-f") 'find-file
  (kbd ":") 'counsel-M-x
  (kbd "/") 'swiper
  (kbd "n") 'evil-search-previous
  (kbd "N") 'evil-search-next
  (kbd "C-w") 'delete-window
  (kbd "SPC") nil
  (kbd "SPC SPC") 'counsel-fzf
  (kbd "SPC b") 'helm-buffers-list
  (kbd "SPC h v") 'describe-variable
  (kbd "SPC h m") 'describe-mode
  (kbd "SPC s x") 'split-window-below
  (kbd "SPC c") 'cd
  (kbd "SPC r") 'eval-buffer
  (kbd "u") 'undo-tree-undo
  (kbd "C-r") 'undo-tree-redo
  (kbd "x") 'split-down)

(evil-define-key 'insert 'global
  (kbd "<up>") 'evil-previous-line
  (kbd "<down>") 'evil-next-line)
;; }}}

;; hooks {{{
(add-hook 'text-mode-hook #'display-line-numbers-mode)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(add-hook 'org-mode-hook (lambda () (add-hook 'after-save-hook #'reload-config)))
(add-hook 'window-setup-hook 'dashboard-refresh-buffer)
;; }}}

;; custom function {{{
(evil-define-motion evil-next-line (count)
  "Move the cursor COUNT lines down."
  :type line
  (let (line-move-visual)
    (evil-line-move (or count 1)))
  (recenter))
(evil-define-motion evil-previous-line (count)
  "Move the cursor COUNT lines up."
  :type line
  (let (line-move-visual)
    (evil-line-move (- (or count 1))))
    (recenter))
(evil-define-motion evil-next-visual-line (count)
  "Move the cursor COUNT screen lines down."
  :type exclusive
  (let ((line-move-visual t))
    (evil-line-move (or count 1)))
    (recenter))
(evil-define-motion evil-previous-visual-line (count)
  "Move the cursor COUNT screen lines up."
  :type exclusive
  (let ((line-move-visual t))
    (evil-line-move (- (or count 1))))
    (recenter))
(defun reload-config ()
  (when (string-equal (buffer-file-name)
                      (expand-file-name "~/dotfiles/emacs/init.org"))
    (let ((org-confirm-babel-evaluate nil))
      (org-babel-tangle))))
;; }}}

;; testing {{{
(use-package multiple-cursors)

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (setq dashboard-items '((recents  . 5)
                          (projects . 5)
                          (registers . 5))))
  
(evil-define-key 'normal dashboard-mode-map
  (kbd "<down>") 'widget-forward
  (kbd "<up>") 'widget-backward)

;; }}}
