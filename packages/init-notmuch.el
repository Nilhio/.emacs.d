(use-package notmuch
  :ensure t
  :bind (("C-c m" . notmuch)
         ("C-c M" . notmuch-mua-new-mail))
  :init
  (progn
    (setq notmuch-always-prompt-for-sender t)
    (setq notmuch-archive-tags '("-inbox" "-unread"))
    (setq notmuch-crypto-process-mime t)
    (setq notmuch-hello-sections '(notmuch-hello-insert-saved-searches))
    (setq notmuch-labeler-hide-known-labels t)
    (setq notmuch-search-oldest-first nil)
    (setq notmuch-show-imenu-indent t)
    (setq notmuch-draft-save-plaintext t))
  :config
  (progn
    (setq notmuch-archive-tags '("-inbox" "-unread"))

    (setq notmuch-message-headers '("To" "Cc" "Subject" "Date"))

    (defun my:mm-ics-to-org-part (handle &optional prompt)
      "Add message part HANDLE to org."
      (mm-with-unibyte-buffer
        (mm-insert-part handle)
        (mm-add-meta-html-tag handle)
        (require 'org-caldav)
        (org-caldav-import-ics-buffer-to-org)))

    (defun my:notmuch-show-ics-to-org-part ()
      "Save the .ics MIME part containing point to an org file."
      (interactive)
      (notmuch-show-apply-to-current-part-handle #'my:mm-ics-to-org-part))

    (with-eval-after-load "notmuch-show"
      (bind-key "d" #'my:notmuch-show-ics-to-org-part notmuch-show-part-map)
      ;; bind 'r' to reply-all, and 'R' to reply
      (bind-key "r" #'notmuch-search-reply-to-thread notmuch-search-mode-map)
      (bind-key "R" #'notmuch-search-reply-to-thread-sender notmuch-search-mode-map)
      (bind-key "r" #'notmuch-show-reply notmuch-show-mode-map)
      (bind-key "R" #'notmuch-show-reply-sender notmuch-show-mode-map)
      (bind-key "a" #'nico-notmuch-git-am-patch notmuch-show-part-map))

    (defun nico-notmuch-git-am-patch ()
      "Apply the MIME part at point as a git patch using `git am'."
      (interactive)
      (notmuch-show-apply-to-current-part-handle #'nico-notmuch-git-am-part))

    (defun nico-notmuch-git-am-part (handle)
      (let ((dir (read-directory-name "Git directory: ")))
(mm-pipe-part handle (format "cd %s; git am" (expand-file-name dir)))))))

(provide 'init-notmuch)
