;; Unset arrow keys
(global-unset-key (kbd "<left>"))
(global-unset-key (kbd "<right>"))
(global-unset-key (kbd "<up>"))
(global-unset-key (kbd "<down>"))

;;Avy keybindings
(global-set-key (kbd "C-;") 'avy-goto-char)
(global-set-key (kbd "C-M-;") 'avy-goto-word-1)

;; Tab auto completion on helm minibuffer.
(with-eval-after-load 'helm
  (define-key helm-map (kbd "TAB") #'helm-execute-persistent-action))

;;Skip non-useful buffers when cycling buffers
(global-set-key (kbd "C-x n") 'next-useful-buffer)
(global-set-key (kbd "C-x p") 'prev-useful-buffer)

(defun next-useful-buffer ()
  (interactive)
  (let (( bread-crumb (buffer-name) ))
    (next-buffer)
    (while
        (and
         (string-match-p "^\*" (buffer-name))
         (not ( equal bread-crumb (buffer-name) )) )
      (next-buffer))))
(global-set-key [remap next-buffer] 'next-useful-buffer)

(defun prev-useful-buffer ()
  (interactive)
  (let (( bread-crumb (buffer-name) ))
    (next-buffer)
    (while
        (and
         (string-match-p "^\*" (buffer-name))
         (not ( equal bread-crumb (buffer-name) )) )
      (next-buffer))))
(global-set-key [remap previous-buffer] 'previous-useful-buffer)

(provide 'keybindings)
