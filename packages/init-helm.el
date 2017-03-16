(use-package helm
  :ensure t
  :init
     (require 'helm-config)
     (setq
        helm-split-window-in-side-p t ; open helm buffer inside current window, not occupy whole other window
        helm-ff-file-name-history-use-recentf t)
      )

(use-package helm-swoop
  :ensure t
  :init
 )

(provide 'init-helm)
