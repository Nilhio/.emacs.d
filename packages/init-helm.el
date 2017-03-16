(use-package projectile
  :ensure t)

(use-package helm
  :ensure t
  :init
  (use-package helm-projectile
    :ensure t)
  (require 'helm-config)
  (setq
   ;; open helm buffer inside current window, not occupy whole other window
   helm-split-window-in-side-p t
   helm-ff-file-name-history-use-recentf t))

(use-package helm-swoop
  :ensure t)

(provide 'init-helm)
