(use-package projectile
  :config
  (projectile-mode +1))

(use-package js2-mode
  :ensure t
  :config
  (setq js2-mode-show-parse-errors nil)
  (setq js2-mode-show-strict-warnings nil))


(use-package rjsx-mode
  :ensure t
  :mode (("\\.js" . rjsx-mode)))

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

;; (use-package org-roam
;;   :ensure t)
;; (setq org-roam-directory "~/dotfiles/org-rome")

;; (use-package evil-collection
;;   :after evil
;;   :ensure t
;;   :config
;;   (evil-collection-init))

(setq echo-keystrokes 0.1)
;; (setq eshell-prompt-regexp "^[^αλ\n]*[αλ] ")


;; (define-key eshell-mode-map (kbd "a") 'eshell-queue-input)
;; (define-key eshell-mode-map "\C-k" 'eshell/clear)

;; (defun check-expansion ()

;;   (save-excursion
;;     (if (looking-at "\\_>") t
;;       (backward-char 1)
;;       (if (looking-at "\\.") t
;;         (backward-char 1)
;;         (if (looking-at "->") t nil)))))

;; (defun do-yas-expand ()
;;   (let ((yas/fallback-behavior 'return-nil))
;;     (yas/expand)))

;; (defun tab-indent-or-complete ()
;;   (interactive)
;;   (cond
;;    ((minibufferp)
;;     (minibuffer-complete))
;;    (t
;;     (indent-for-tab-command)
;;     (if (or (not yas/minor-mode)
;;             (null (do-yas-expand)))
;;         (if (check-expansion)
;;             (progn
;;               (company-manual-begin)
;;               (if (null company-candidates)
;;                   (progn
;;                     (company-abort)
;;                     (indent-for-tab-command)))))))))

;; (defun tab-complete-or-next-field ()
;;   (interactive)
;;   (if (or (not yas/minor-mode)
;;           (null (do-yas-expand)))
;;       (if company-candidates
;;           (company-complete-selection)
;;         (if (check-expansion)
;;             (progn
;;               (company-manual-begin)
;;               (if (null company-candidates)
;;                   (progn
;;                     (company-abort)
;;                     (yas-next-field))))
;;           (yas-next-field)))))

;; (defun expand-snippet-or-complete-selection ()
;;   (interactive)
;;   (if (or (not yas/minor-mode)
;;           (null (do-yas-expand))
;;           (company-abort))
;;       (company-complete-selection)))

;; (defun abort-company-or-yas ()
;;   (interactive)
;;   (if (null company-candidates)
;;       (yas-abort-snippet)
;;     (company-abort)))

;; (global-set-key [tab] 'tab-indent-or-complete)
;; (global-set-key (kbd "TAB") 'tab-indent-or-complete)
;; (global-set-key [(control return)] 'company-complete-common)

;; (define-key company-active-map [tab] 'expand-snippet-or-complete-selection)
;; (define-key company-active-map (kbd "TAB") 'expand-snippet-or-complete-selection)

;; (define-key yas-minor-mode-map [tab] nil)
;; (define-key yas-minor-mode-map (kbd "TAB") nil)

;; (define-key yas-keymap [tab] 'tab-complete-or-next-field)
;; (define-key yas-keymap (kbd "TAB") 'tab-complete-or-next-field)
;; (define-key yas-keymap [(control tab)] 'yas-next-field)
;; (define-key yas-keymap (kbd "C-g") 'abort-company-or-yas)
