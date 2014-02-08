(auto-fill-mode -1)
(global-auto-revert-mode t)
(remove-hook 'html-mode-hook #'turn-on-auto-fill)
(remove-hook 'text-mode-hook #'turn-on-auto-fill)
(setq-default indent-tabs-mode nil)

;; Split my windows vertically, not horizontally
;; See the function `split-window-sensibly' in window.el
(setq split-width-threshold nil)

;; use CSS major mode for .scss files
(add-to-list 'auto-mode-alist '("\\.scss$" . css-mode))

;; yaml mode - https://github.com/yoshiki/yaml-mode
(add-to-list 'load-path "~/.emacs.d/yaml-mode/")
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
