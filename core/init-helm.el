(use-package projectile
  :ensure t
  :config (projectile-global-mode t))

(use-package helm
  :ensure t
  :init
    (require 'helm-config)
    (setq
     ;; open helm buffer inside current window, not occupy whole other window
     helm-split-window-in-side-p t
     helm-ff-file-name-history-use-recentf t))

(use-package helm-command
  :bind ("M-x" . helm-M-x)
  :config
  (setq helm-M-x-fuzzy-match t))

(use-package helm-files
  :after helm
  :ensure nil
  :bind (("C-x C-f" . helm-find-files)
         ("C-c f" . helm-recentf)
         ("M-y" . helm-show-kill-ring)
         ("C-c r b" . helm-filtered-bookmarks)
         ("C-c b" . helm-buffers-list))
  )

(use-package helm-swoop
  :after helm
  :ensure t
  :bind ("C-c s" . helm-swoop))

(provide 'init-helm)
