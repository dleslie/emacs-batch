;; site-start.el for dleslie/emacs-batch


(load "/home/.emacs.d/straight/repos/straight.el/bootstrap.el" nil 'nomessage)
(straight-use-package 'use-package)
(require 'use-package)
(require 'use-package-ensure)
(setq use-package-always-ensure t)

(setq package-archives
      '(("org" . "https://orgmode.org/elpa/")
        ("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")
        ("elpy" . "https://jorgenschaefer.github.io/packages/"))
      package-archive-priorities
      '(("elpy" . 70)
	("melpa" . 80)
	("org" . 90)
	("gnu" . 100)))

(package-initialize)

(setq default-directory "/src")
(cd default-directory)
