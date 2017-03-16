(use-package evil
  :ensure t
  :init
  (progn
    ;; if we don't have this evil overwrites the cursor color
    (setq evil-default-cursor t)
    (evil-mode 1)))

(provide 'init-evil)
