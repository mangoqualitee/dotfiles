(setq custom-file "~/.emacs.d/.emacs.custom.el")

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(setenv "LC_ALL" "C")
(setq dired-listing-switches "-alh --group-directories-first")

(add-to-list 'default-frame-alist '(font . "Iosevka Nerd Font-18"))


;; org-mode stuff
(setq org-log-done t)
(setq org-agenda-files (list "~/Dropbox/Org/todo.org"))

;; activation
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)


(add-to-list 'load-path "~/.emacs.d/.local/")
(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

;; (require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Multiple Cursors
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->")         'mc/mark-next-like-this)
(global-set-key (kbd "C-<")         'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<")     'mc/mark-all-like-this)
(global-set-key (kbd "C-\"")        'mc/skip-to-next-like-this)
(global-set-key (kbd "C-:")         'mc/skip-to-previous-like-this)

(load-file custom-file)
