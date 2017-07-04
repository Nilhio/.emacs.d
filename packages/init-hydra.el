(use-package hydra
  :ensure t
  :bind
  ("C-c c" . hydra-helm/body)
  ("C-c a" . hydra-avy/body)
  :config (setq-default hydra-default-hint nil))

(defhydra hydra-avy
  (:color blue :hint nil)
  "
  "
  ("c" avy-goto-char "char" :color blue :column "Avy-go")
  ("C" avy-goto-char-2 "char-2")
  ("w" avy-goto-word-1 "word")
  ("s" avy-goto-subword-1 "subword")
  ("l" avy-copy-line "copy line" :color blue :column "Avy-copy")
  ("L" avy-copy-region "copy region")
  ("r" avy-kill-whole-line "kill line" :color blue :column "Avy-kill")
  ("R" avy-kill-region "kill region")
  ("q" nil "quit"))

(defhydra hydra-helm
  (:color blue :hint nil)
  "
  "
  ("q" nil "quit" :column "Helm")
  ("r" helm-resume "resure")
  ("k" helm-show-kill-ring "kill-ring")
  ("c" helm-colors "colors" :column "Browse")
  ("g" helm-google-suggest "google")
  ("o" helm-bookmarks "bookmarks")
  ("b" helm-buffers-list "buffer list")
  ("p" helm-swoop "swoop" :column "Do")
  ("s" helm-css-scss "css-scss")
  ("q" nil "quit"))

(provide 'init-hydra)
