;; Zen coding mode used for quick html generation.
;; More info here https://github.com/rooney/zencoding.

(use-package zencoding-mode
  :ensure t
  :init
  (add-hook 'sgml-mode-hook 'zencoding-mode))

(provide 'init-zencoding-mode)
