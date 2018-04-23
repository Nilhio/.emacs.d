(use-package org
  :ensure t
  :config
  (setq org-agenda-files '("~/Dropbox/Notes/org/"))
  (setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Dropbox/Notes/org/tasks.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("n" "Note" entry (file+headline "~/Dropbox/Notes/org/notes.org" "Notes")
         "* Note %?\n%T")))
  :bind (("C-c c" . org-capture))
)

(use-package org-sticky-header
  :config
  (setq-default
   org-sticky-header-full-path 'full
   org-sticky-header-outline-path-separator " / "))

(use-package toc-org :after org)

(provide 'init-org-mode)
