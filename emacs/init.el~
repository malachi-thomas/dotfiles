; Initialize package sources {{{
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
(unless (package-installed-p 'evil)
  (package-install 'evil))
(unless (package-installed-p 'key-chord)
  (package-install 'key-chord))
(unless (package-installed-p 'ivy)
  (package-install 'ivy))
(unless (package-installed-p 'company)
  (package-install 'company))
(unless (package-installed-p 'evil-commentary)
  (package-install 'evil-commentary))
(unless (package-installed-p 'spacemacs-theme)
  (package-install 'spacemacs-theme t))
; }}}

; Theam {{{
(setq inhibit-startup-message t)
(scroll-bar-mode -1) ; Disable visible scrollbar
(tool-bar-mode -1) ; Disable the toolbar
(tooltip-mode -1) ; Disable tooltips
(set-fringe-mode 10) ; Give some breathing room
(menu-bar-mode -1) ; Disable the menu bar
(set-face-attribute 'default nil :font "Hack" :height 110)
(load-theme 'spacemacs-dark t)
; }}}


(require 'use-package)
(require 'evil)
(require 'ivy)
(require 'evil-commentary)
(require 'company)
(require 'saveplace)


(use-package all-the-icons); do this for icons :all-the-icons-install-fonts
(use-package org)
(use-package counsel)
(use-package lsp-mode)

(use-package helm
             :ensure t
             :config (helm-mode 1))
(use-package doom-modeline
             :ensure t
             :init (doom-modeline-mode 1)
             :custom ((doom-modeline-height 15)))


(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(setq use-package-always-ensure t)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)
(setq company-selection-wrap-around t)
(setq-default display-line-numbers-type 'visual)
(setq-default display-line-numbers-current-absolute t)
(setq-default display-line-numbers-width 1)
(setq-default display-line-numbers-widen t)

(evil-mode 1); enable evil-mode
(save-place-mode); save cursor place
(ivy-mode 1); enable ivy
(evil-commentary-mode); eval mode commenting
(company-tng-configure-default)


; Keybindings {{{
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(define-key evil-normal-state-map (kbd "C-s") 'save-buffer)
(define-key evil-normal-state-map (kbd "C-f") 'counsel-fzf)
(define-key evil-normal-state-map (kbd ":") 'counsel-M-x)
(define-key evil-normal-state-map (kbd "/") 'swiper)
(define-key evil-normal-state-map (kbd "n") 'evil-search-previous)
(define-key evil-normal-state-map (kbd "N") 'evil-search-next)
(define-key evil-normal-state-map (kbd "Z Z") 'kill-this-buffer)
(define-key evil-normal-state-map (kbd "SPC") nil)
(define-key evil-normal-state-map (kbd "SPC b") 'helm-buffers-list)
(define-key evil-normal-state-map (kbd "SPC c") 'cd)
(define-key evil-normal-state-map (kbd "SPC r") 'eval-buffer)
(define-key dired-mode-map (kbd "C-f") 'counsel-fzf)
(define-key dired-mode-map (kbd ":") 'counsel-M-x)
(define-key dired-mode-map (kbd "/") 'swiper)
(define-key dired-mode-map (kbd "n") 'evil-search-previous)
(define-key dired-mode-map (kbd "N") 'evil-search-next)
(define-key dired-mode-map (kbd "Z Z") 'kill-this-buffer)
(define-key dired-mode-map (kbd "SPC") nil)
(define-key dired-mode-map (kbd "SPC b") 'helm-buffers-list)
(define-key dired-mode-map (kbd "SPC c") 'cd)
(define-key dired-mode-map (kbd "SPC r") 'eval-buffer)

(add-hook 'text-mode-hook #'display-line-numbers-mode)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(add-hook 'after-init-hook 'global-company-mode)
