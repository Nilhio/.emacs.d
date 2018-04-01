(use-package elfeed
  :ensure t
  :commands (elfeed-search-mode elfeed-show-mode)
  :init
  (setq elfeed-feeds
        '(;; Comics
          ("https://xkcd.com/rss.xml"  comic)
          ;;Emacs and programming
          ("http://www.modernemacs.com/categories/emacs/index.xml" emacs)
          ("http://erickt.github.io/atom.xml" rust)
          ("https://blog.rust-lang.org/feed" rust )
          ("http://pragmaticemacs.com/feed/" emacs))
        ))

(setq elfeed-max-connections 10)

(setq url-queue-timeout 30)

(provide 'init-elfeed)
