(use-package whitespace
  :demand t
  :ensure nil
  :init
  (add-hook 'prog-mode-hook #'whitespace-turn-on)
  (add-hook 'text-mode-hook #'whitespace-turn-on)
  :config (setq-default whitespace-style '(face empty tab trailing)))

(provide 'init-whitespace)
