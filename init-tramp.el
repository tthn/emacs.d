(require 'tramp)
(setq tramp-shell-prompt-pattern "^[^$>\n]*[#$%>] *\\(\[[0-9;]*[a-zA-Z] *\\)*")

;; relay sucks
(add-to-list 'tramp-restricted-shell-hosts-alist "\\`relay01\\.baidu\\.com\\'")

(add-to-list 'tramp-default-proxies-alist
             '("db-cs-cc00.db01.baidu.com" nil "/ssh:tengzhipeng@relay01.baidu.com:"))

(add-to-list 'tramp-default-proxies-alist
             '("cp01-rdqa-dev378.cp01.baidu.com" nil "/ssh:tengzhipeng@relay01.baidu.com:"))

(defun remote-shell (&optional host)
  "Open a remote shell to a host."
  (interactive)
  (with-temp-buffer
    (let ((host (if host host (read-string "Host :"))))
      (cd (concat "/ssh:" host ":"))
      (shell (concat "*" host "*")))))

(defun dev ()
  (interactive)
  (remote-shell "tengzhipeng@cp01-rdqa-dev378.cp01.baidu.com"))

(defun cc00 ()
  (interactive)
  (remote-shell "tengzhipeng@db-cs-cc00.db01.baidu.com"))


(provide 'init-tramp)
