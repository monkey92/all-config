;;

;;快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el")
  )
;;设置快速打开配置文件快捷键
(global-set-key (kbd "<f2>") 'open-init-file )

(provide 'init-keybindings)
