(add-to-list 'load-path "~/.emacs.d/elisp/")

;;; change tab offset to 4 instead of 8
(setq c-basic-offset 4)
(setq tab-width 4)

;;; turn tabs into spaces
(setq indent-tabs-mode nil)

;;; enable saved sessions
(desktop-save-mode 1)

;;; enable deftheme version of desert theme
(load-theme 'desert t)

;;; enable python-mode
(add-to-list 'load-path "~/.emacs.d/elisp/python-mode")
(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

;;; enable ipython
(require 'ipython)

;;; enable anything + ipython integration
(add-to-list 'load-path "~/.emacs.d/elisp/helm")
(require 'helm-config)
;;;(require 'helm-ipython)
(when (require 'anything-show-completion nil t)
  (use-anything-show-completion 'anything-ipython-complete
				'(length initial-pattern)))

;;; enable python doc lookup
(autoload 'pylookup-lookup "pylookup")
(autoload 'pylookup-update "pylookup")
(setq pylookup-program "~/.emacs.d/pylookup/pylookup.py")
(setq pylookup-db-file "~/.emacs.d/pylookup pylookup.db")
