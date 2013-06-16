(require-package 'auctex)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

;; view with skim
(setq TeX-view-program-list '(("Open" "open %o")))
(setq TeX-view-program-selection '((output-pdf "Open")))

(add-hook 'LaTeX-mode-hook
          (lambda()
            (add-to-list 'TeX-command-list '("XeLaTeX" "xelatex %(mode) %t" TeX-run-TeX nil  (latex-mode) ))
            (setq TeX-command-default "XeLaTeX")
            (setq TeX-save-query  nil)
            (setq TeX-show-compilation t)
            (setq TeX-PDF-mode t)))
(provide 'init-auctex)
