(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(package-initialize)

;; Configuration
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq make-backup-files nil)
(setq create-lockfiles nil)
(setq visible-bell 1)
;; Auto reload file from disk
(global-auto-revert-mode t)
;;Save backup files in custom direcotory
(setq backup-directory-alist
  `(".*" ,"~/emacs/backups"))
(setq auto-save-file-name-transforms
  `((".*" "~/emacs/saves" t)))

;; Install and init packages
(add-to-list 'load-path "~/.emacs.d/packages")
(require 'init-better-defaults)
(require 'init-use-package)
(require 'init-company)
(require 'init-helm)
(require 'init-other-packages)
(require 'init-rust-mode)
(require 'init-cargo)
(require 'init-ace-window)
(require 'init-doom-theme)
(require 'init-drag-stuff)
(require 'init-markdown-mode)
(require 'init-dumb-jump)
(require 'init-hydra)
(require 'init-whitespace)
(require 'init-org-mode)
(require 'init-expand-region)

;; Keybindings
(add-to-list 'load-path "~/.emacs.d/keybindings")
(require 'keybindings)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (evil use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
