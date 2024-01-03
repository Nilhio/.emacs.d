(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(package-initialize)

;;Configuration
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq visible-bell 1)
;;Disable some warnings.
(setq warning-minimum-level :emergency)
;;Auto reload file from disk
(global-auto-revert-mode t)
;;Save backup files in custom direcotory
;;disable backup
(setq backup-inhibited t)
;;disable auto save
(setq auto-save-default nil)
(setq backup-directory-alist `(("." . "/tmp/emacs-backup")))

;;Kill buffers without prompt
(global-set-key [(control x) (k)] 'kill-this-buffer)

;;Install and init core packages
(add-to-list 'load-path "~/.emacs.d/core")
(require 'init-better-defaults)
(require 'init-use-package)
(require 'init-company)
(require 'init-which-key)
(require 'init-helm)
(require 'init-avy)
(require 'init-rust-mode)
(require 'init-cargo)
(require 'init-drag-stuff)
(require 'init-markdown-mode)
(require 'init-dumb-jump)
(require 'init-whitespace)
(require 'init-org-mode)
(require 'init-expand-region)
(require 'init-tramp)
(require 'init-elfeed)
(require 'init-magit)
(require 'init-lsp)
;;(require 'init-php-mode)
;;(require 'init-reddit)
;;:(require 'init-multiple-cursors)
;;(require 'init-notmuch)
;;;(require 'init-yasnippet)
;;(require 'init-meghanada)
;;(require 'init-flycheck)
;;(require 'init-web-mode)
;;(require 'init-zencoding-mode)


;; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
;; Themes
(add-to-list 'load-path "~/.emacs.d/themes")
;;(require 'init-gruvbox-theme)
(require 'init-zenburn-theme)

;; Keybindings
(add-to-list 'load-path "~/.emacs.d/keybindings")
(require 'keybindings)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(frame-background-mode 'dark)
 '(package-selected-packages
   '(rebase-mode toc-org org-sticky-header zenburn-theme which-key use-package racer projectile markdown-mode helm-swoop expand-region dumb-jump drag-stuff doom-themes company cargo ace-window)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
