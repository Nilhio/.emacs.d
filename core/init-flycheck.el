(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    ))

;; on the fly syntax checking
(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))

;; snippets and snippet expansion
(use-package yasnippet
  :ensure t
  :init
  (yas-global-mode 1))


(provide 'init-flycheck)
