;;; packages summry

;; }}}:

(load "~/dotfiles/emacs/packages.el")
(load "~/dotfiles/emacs/functions.el")
(load "~/dotfiles/emacs/mappings.el")


;; basic settings {{{
(setq inhibit-startup-message t)
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))
(setq show-paren-style 'expression)
(setq enable-recursive-minibuffers t)
(setq org-hide-emphasis-markers t)
(setq make-backup-files nil)
;; (setq-default display-line-numbers-type 'visual)
(setq-default display-line-numbers-current-absolute t)
(setq-default display-line-numbers-width 1)
(setq-default display-line-numbers-widen t)

(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
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


;; hooks {{{
(add-hook 'text-mode-hook #'display-line-numbers-mode)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
;; (add-hook 'window-setup-hook 'dashboard-refresh-buffer)
(add-hook 'before-save-hook 'format-all-buffer)
;; }}}



;; }}}

(use-package avy
  :config
  (setq avy-keys '(?a ?o ?e ?u ?h ?t ?n ?s))
  (setq avy-background t)
  (setq avy-highlight-first t)
  (setq avy-orders-alist
        '((avy-goto-char . avy-order-closest)
          (avy-goto-word-0 . avy-order-closest)))
  (evil-define-key 'normal 'global
    (kbd "C-l") 'ma/avy-goto-line
    (kbd "C-f") 'ma/avy-goto-word-1))

(use-package prescient)
(use-package company-prescient
  :config
  (company-prescient-mode))
(use-package selectrum-prescient
  :config
  (selectrum-prescient-mode))
(use-package selectrum
  :config
  (selectrum-mode +1))
(use-package evil-snipe
  :config
  (evil-snipe-mode +1)
  (evil-snipe-override-mode +1))

(use-package dimmer
  :config
  (dimmer-mode t))
(use-package iedit)
(use-package smart-hungry-delete
  :config
  (smart-hungry-delete-add-default-hooks)
  (evil-define-key 'insert 'global
    (kbd "<backspace>") 'smart-hungry-delete-backward-char))

(use-package general)
