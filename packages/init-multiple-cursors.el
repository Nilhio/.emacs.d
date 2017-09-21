(use-package multiple-cursors
  :ensure t
  :init
  (progn
    ;; these need to be defined here - if they're lazily loaded with
    ;; :bind they don't work.
    (global-set-key (kbd "C->") 'mc/mark-next-like-this)
    (global-set-key (kbd "C-<") 'mc/mark-pop)
    (global-set-key (kbd "C-c C-l") 'mc/mark-all-like-this)))

(provide 'init-multiple-cursors)
