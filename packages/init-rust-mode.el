(use-package rust-mode
  :ensure t
  :init 
  (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode)))

;; (use-package flycheck-rust 
;;   :ensure t
;;   :after rust-mode)

(use-package racer
  :ensure t
  :init
  (add-hook 'rust-mode-hook #'racer-mode)
  (add-hook 'racer-mode-hook #'company-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode) 
  :config
  (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
  (setq company-tooltip-align-annotations t))

(provide 'init-rust-mode)
