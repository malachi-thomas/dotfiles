
(general-define-key
 :keymaps 'normal
 (kbd "C-s") 'save-buffer
 (kbd "C-w") 'delete-window
 (kbd ":") 'execute-extended-command
 (kbd "ESC") 'keyboard-escape-quit)

(general-define-key
 :keymaps 'help-mode-map
 (kbd ":") 'cd)
;; (general-define-key
;;  :prefix "SPC"
;;  (kbd "c d") 'cd
;;  (kbd "f f") 'find-file
;;  (kbd "h v") 'describe-variable
;;  (kbd "h k") 'describe-key
;;  (kbd "h m") 'describe-mode
;;  (kbd "r c") 'eval-buffer
;;  (kbd "r f") 'counsel-recentf)

(general-create-definer ma/leader
  :prefix "SPC")

;; (leader
;;   :state 'normal


(ma/leader 'normal
  (kbd "c d") 'cd
  (kbd "f f") 'find-file
  (kbd "h v") 'describe-variable
  (kbd "h k") 'describe-key
  (kbd "h m") 'describe-mode
  (kbd "r c") 'eval-buffer
  (kbd "r f") 'counsel-recentf)
;; (ma/leader 'normal
;;   "a" 'org-agenda
;;   "b" 'counsel-bookmark
;;   "c" 'org-capture)
