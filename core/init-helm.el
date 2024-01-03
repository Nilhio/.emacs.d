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
  :bind (("C-c h f" . helm-find-files)
         ("C-c h C-f" . helm-recentf)
         ("C-c h y" . helm-show-kill-ring)
         ("C-c h r" . helm-filtered-bookmarks)
         ("C-c h b" . helm-buffers-list))
  :config
  (eval-after-load 'which-key
    '(which-key-add-key-based-replacements "C-c h" "helm")))

(use-package helm-swoop
  :ensure t
  :bind ("C-c h s" . helm-swoop))

(use-package helm-projectile
  :ensure t
  :bind (("C-c h p" . helm-projectile)
         ("C-c h C-p" . helm-projectile-switch-project)))

(provide 'init-helm)
