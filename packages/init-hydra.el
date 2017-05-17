(use-package hydra
  :ensure t
  :bind
  ("C-c c" . hydra-helm/body)
  ("C-c a" . hydra-avy/body)
  ("C-c w" . hydra-window/body)
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
  ("k" helm-bookmarks "bookmarks")
  ("b" helm-buffers-list "buffer list")
  ("p" helm-swoop "swoop" :column "Do")
  ("s" helm-css-scss "css-scss")
  ("q" nil "quit"))

(defhydra hydra-window
  (:color red :hint nil)
  "
  "
  ("z" ace-window "ace" :color blue :column "Switch")
  ("h" windmove-left "← window")
  ("j" windmove-down "↓ window")
  ("k" windmove-up "↑ window")
  ("l" windmove-right "→ window")
  ("s" split-window-below "split window" :color blue :column "Split Management")
  ("v" split-window-right "split window vertically" :color blue)
  ("d" delete-window "delete current window")
  ("f" follow-mode "toogle follow mode")
  ("u" winner-undo "undo window conf" :column "Undo/Redo")
  ("r" winner-redo "redo window conf")
  ("b" balance-windows "balance window height" :column "Sizing")
  ("m" maximize-window "maximize current window")
  ("M" minimize-window "maximize current window")
  ("q" nil "quit"))

(provide 'init-hydra)
