(use-package org
  :ensure t
)

(use-package org-sticky-header
  :config
  (setq-default
   org-sticky-header-full-path 'full
   org-sticky-header-outline-path-separator " / "))

(use-package toc-org :after org)

(setq org-capture-templates
  '(("n" "Note" entry (file+headline "~/Dropbox/emacs/org/notes.org" "Notes")
     "* Note %?\n%T"))
)


(provide 'init-org-mode)
