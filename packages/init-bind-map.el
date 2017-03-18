(use-package bind-map
  :ensure t
  :config
  (bind-map my-base-leader-map
	    :keys ("M-m")
	    :evil-keys ("SPC")
	    :evil-states (normal motion visual)
	    :bindings (
		       "f" 'helm-find-files
		       "x" 'helm-M-x
		       "s" 'helm-swoop
		       "j" 'avy-goto-char
		       "w w" 'ace-window
		       "w d" 'ace-delete-window
		       "w /" 'evil-window-vsplit
		       "t" 'eshell
		       "b b" 'helm-buffers-list
		       "b d" 'kill-buffer
		       "<tab>" 'switch-to-next-buffer
		       "<backtab>" 'switch-to-prev-buffer
		       )))

(provide 'init-bind-map)
