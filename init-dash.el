(add-to-list 'load-path "~/.emacs.d/site-lisp")
(autoload 'dash-at-point "dash-at-point" "Search the word at point with Dash." t nil)
(global-set-key "\C-c d" 'dash-at-point)

(provide 'init-dash)
