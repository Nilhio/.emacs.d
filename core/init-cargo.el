(use-package cargo
  :ensure t;
  :config
  (add-hook 'rust-mode-hook 'cargo-minor-mode))
  (setq compilation-ask-about-save nil)

(provide 'init-cargo)
