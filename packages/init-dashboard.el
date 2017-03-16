(use-package page-break-lines
  :ensure t)

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))
  (setq dashboard-banner-logo-title "Dashboard")
(setq dashboard-items '(
			(recents  . 15)
                        (bookmarks . 15)
			(projects . 15)
		    ))

(provide 'init-dashboard)
