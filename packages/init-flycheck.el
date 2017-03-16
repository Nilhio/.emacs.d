(use-package flycheck
  :ensure t
  :commands (global-flycheck-mode)
  :init
  (add-hook 'after-init-hook #'global-flycheck-mode))

(provide 'init-flycheck)
