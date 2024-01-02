(use-package magit
  :ensure t
  :bind
  (("C-c g s" . magit-status)
   ("C-c g l" . magit-log)
   ("C-c g b" . magit-blame)
   ("C-c g d" . magit-diff)
   ("C-c g c" . magit-commit)
   ("C-c g p" . magit-push)
   ("C-c g P" . magit-pull)
   ("C-c g f" . magit-fetch))
  :config
  )

(provide 'init-magit)
