;; Tab auto completion on helm minibuffer.
(with-eval-after-load 'helm
  (define-key helm-map (kbd "TAB") #'helm-execute-persistent-action))

(provide 'keybindings)
