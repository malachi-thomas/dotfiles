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

;; (use-package mini-frame
;;   :ensure f
;;   :config
;;   (custom-set-variables
;;    '(mini-frame-show-parameters
;;      '((top . 20)
;;        (width . 0.5)
;;        (left . 0.5)
;;        (height . 1))))
;;   (mini-frame-mode))



(use-package org-roam
  :ensure t
  :hook
  (after-init . org-roam-mode)
  :config
  (setq org-roam-directory "~/dotfiles/org-roam"))

(defun org-force-open-current-window ()
  (interactive)
  (let ((org-link-frame-setup (quote
                               ((vm . vm-visit-folder)
                                (vm-imap . vm-visit-imap-folder)
                                (gnus . gnus)
                                (file . find-file)
                                (wl . wl)))
                              ))
    (org-open-at-point)))

(defun org-open-maybe (&optional arg)
  (interactive "P")
  (if arg
      (org-open-at-point)
    (org-force-open-current-window)
    )
  )
;; Redefine file opening without clobbering universal argumnet
