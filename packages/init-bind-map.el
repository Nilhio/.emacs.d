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
		       "<tab>" 'next-useful-buffer
		       "<backtab>" 'previous-useful-buffer
		       "m c" 'cargo-process-build
		       "m x" 'cargo-process-run
		       "m t" 'cargo-process-test
		       "m f" 'cargo-process-fmt
		       "m d" 'cargo-process-check
		       )))

(provide 'init-bind-map)
