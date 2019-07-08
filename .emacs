(setq inhibit-startup-message t)

(require 'package)
;; start server
(require 'server)
(unless (server-running-p)
  (server-start))


(server-running-p)
(boundp 'server-running-p)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(use-package htmlize
  :ensure t)

(use-package magit
  :ensure t)

(use-package org
  :ensure t)

(use-package haskell-mode
  :ensure t)

(use-package exec-path-from-shell
  :ensure t)

(use-package pdf-tools
  :ensure t)

(use-package moe-theme
  :ensure t)

(require 'moe-theme-switcher)
(moe-theme-set-color 'purple)

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(exec-path-from-shell-initialize)

;;set hook
(add-hook 'after-save-hook 'my-after-save-actions)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (moe-dark)))
 '(custom-safe-themes
   (quote
    ("13d20048c12826c7ea636fbe513d6f24c0d43709a761052adbca052708798ce3" "26d49386a2036df7ccbe802a06a759031e4455f07bda559dcf221f53e8850e69" "d1cc05d755d5a21a31bced25bed40f85d8677e69c73ca365628ce8024827c9e3" default)))
 '(fci-rule-color "#383838")
 '(org-agenda-files (quote ("~/todo/todo.org")))
 '(org-structure-template-alist
   (quote
    (("s" "#+BEGIN_SRC ?

#+END_SRC")
     ("e" "#+BEGIN_EXAMPLE
?
#+END_EXAMPLE")
     ("q" "#+BEGIN_QUOTE
?
#+END_QUOTE")
     ("v" "#+BEGIN_VERSE
?
#+END_VERSE")
     ("V" "#+BEGIN_VERBATIM
?
#+END_VERBATIM")
     ("c" "#+BEGIN_CENTER
?
#+END_CENTER")
     ("C" "#+BEGIN_COMMENT
?
#+END_COMMENT")
     ("l" "\\begin{align*}
?
\\end{align*}")
     ("L" "#+LaTeX: ")
     ("h" "#+BEGIN_EXPORT html
?
#+END_EXPORT")
     ("H" "#+HTML: ")
     ("a" "#+BEGIN_EXPORT ascii
?
#+END_EXPORT")
     ("A" "#+ASCII: ")
     ("i" "#+INDEX: ?")
     ("I" "#+INCLUDE: %file ?"))))
 '(package-selected-packages
   (quote
    (pdf-tools moe-theme-dark moe-theme hydra magit exec-path-from-shell haskell-mode darktooth-theme htmlize try org-bullets cyberpunk-theme yasnippet yaml-mode use-package)))
 '(python-indent-offset 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(global-set-key "\C-ca" 'org-agenda)
(defalias 'list-buffers 'ibuffer)

;;(setq org-latex-create-formula-image-program 'imagemagick)

    (setq backup-directory-alist
          `(("." . ,(concat user-emacs-directory "backups"))))


(load "term/vt100")
(setq org-clock-mode-line-total 'current)


(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))




(add-hook 'org-clock-in-hook 'growth)
  

(add-hook 'org-clock-out-hook 'sync)

(global-set-key (kbd "C-x g") 'magit-status)
