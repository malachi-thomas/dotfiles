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


;; (use-package selectrum
;;   :ensure t
;;   :config
;;   (selectrum-mode +1))

(use-package mini-frame
  :ensure f
  :config
  (custom-set-variables
   '(mini-frame-show-parameters
     '((top . 20)
       (width . 0.5)
       (left . 0.5)
       (height . 1))))
  (mini-frame-mode))
