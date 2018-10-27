;; my config
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'init-packages)

(require 'init-better-defaults)

(require 'init-keybindings)
(require 'init-ui)

(require 'custom)


