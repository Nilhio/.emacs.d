(use-package projectile
  :ensure t
 
  :config (projectile-mode +1))

(use-package helm
  :ensure t
  :init
  (setq helm-split-window-in-side-p t
        helm-ff-file-name-history-use-recentf t)
  :bind
  (("M-x" . helm-M-x)))

(use-package helm-files
  :ensure helm
  :bind (("C-c f" . helm-find-files)
         ("C-c C-f" . helm-recentf)
         ("M-y" . helm-show-kill-ring)
         ("C-c r b" . helm-filtered-bookmarks)
         ("C-c b" . helm-buffers-list)))

(use-package helm-swoop
  :ensure t
  :bind ("C-c s" . helm-swoop))

(use-package helm-projectile
  :ensure t
  :bind (("C-c p" . helm-projectile)
         ("C-c C-p" . helm-projectile-switch-project)))

(provide 'init-helm)
