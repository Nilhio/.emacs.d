(use-package org
  :ensure t
)

(use-package org-sticky-header
  :config
  (setq-default
   org-sticky-header-full-path 'full
   org-sticky-header-outline-path-separator " / "))

(use-package toc-org :after org)

(provide 'init-org-mode)
