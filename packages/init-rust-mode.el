(use-package rust-mode
  :ensure t
  :init 
  (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode)))

(provide 'init-rust-mode)
