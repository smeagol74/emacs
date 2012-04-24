(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))


;; Add in your own as you wish:
(defvar my-packages '(color-theme
                      iimage
                      yasnippet-bundle
                      starter-kit
                      starter-kit-lisp
                      starter-kit-bindings
                      starter-kit-eshell)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(require 'color-theme)
(color-theme-standard)
(load "color-theme-manoj")
(color-theme-manoj-dark)
