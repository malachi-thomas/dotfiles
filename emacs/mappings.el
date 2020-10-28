(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(general-define-key
 :keymaps 'normal
 "C-s" 'save-buffer
 "C-w" 'delete-window
 ":" 'execute-extended-command
 "SPC" nil
 "<M-left>" 'evil-window-left
 "<M-down>" 'evil-window-down
 "<M-up>" 'evil-window-up
 "<M-right>" 'evil-window-right
 "gd" 'lsp-find-implementation
 "u" 'undo-tree-undo
 "C-r" 'undo-tree-redo
 "n" 'evil-search-previous
 "N" 'evil-search-next
 "SPC s n" 'yas-new-snippet
 "/" 'swiper)

(general-define-key
 :keymaps 'insert
 "C-s" 'emmet-expand-line
 "C-SPC" 'yas-maybe-expand
 "<up>" 'evil-previous-line
 "<down>" 'evil-next-line)

(general-define-key
 :prefix "SPC"
 :keymaps 'normal
 "f f" 'find-file
 "h v" 'describe-variable
 "h k" 'describe-key
 "h m" 'describe-mode
 "r c" 'eval-buffer
 "r f" 'counsel-recentf)
