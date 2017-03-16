(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(package-initialize)

;; Configuration
(setq visible-bell 1)
(setq backup-directory-alist `(("." . "~/.saves")))

;; Install and init packages
(add-to-list 'load-path "~/.emacs.d/packages")
(require 'init-use-package)
(require 'init-helm)
(require 'init-evil)
(require 'init-bind-map)
(require 'init-other-packages)

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
