(use-package company
  :ensure t
  :bind
  (:map company-active-map
         ("C-n" . company-select-next)
         ("C-p" . company-select-previous)
         ("M-<" . company-select-first)
         ("M->" . company-select-last)))

(provide 'init-company)
