(use-package projectile
  :config
  (projectile-mode +1))

;; (use-package js2-mode)
(use-package rjsx-mode)
(use-package web-mode)

(use-package magit
  :ensure t
  :config)

(use-package lsp-ui
  :ensure t
  :requires lsp-mode flycheck)
