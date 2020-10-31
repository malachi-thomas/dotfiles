(use-package projectile
  :config
  (projectile-mode +1))

(use-package js2-mode
  :ensure t
  :config
  (setq js2-mode-show-parse-errors nil)
  (setq js2-mode-show-strict-warnings nil))

(use-package web-mode)

(use-package evil-magit
  :ensure t
  :config)

(use-package helm)

(use-package multi-web-mode
  :ensure t
  :config
  (setq mweb-default-major-mode 'html-mode)
  (setq mweb-tags
        '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
          (js-mode  "<script[^>]*>" "</script>")
          (css-mode "<style[^>]*>" "</style>")))
  (setq mweb-filename-extensions '("html"))
  (multi-web-global-mode 1))

(use-package swift-mode
  :ensure t)

(use-package ivy-posframe
  :after ivy
  :ensure t
  :config
  (ivy-posframe-mode 1))
