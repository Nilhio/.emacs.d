(use-package dumb-jump
  :ensure t
  :config
  (progn
    (dumb-jump-mode)
    (setq dumb-jump-selector 'ivy)
    (setq dumb-jump-force-searcher 'rg))
  :bind
  (("M-g o" . dumb-jump-go-other-window)
   ("M-g j" . dumb-jump-go)
   ("M-g b" . dumb-jump-back)
   ("M-g q" . dumb-jump-quick-look)
   ("M-g x" . dumb-jump-go-prefer-external)
   ("M-g z" . dumb-jump-go-prefer-external-other-window)))

(provide 'init-dumb-jump)
