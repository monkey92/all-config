;;修改默认配置

;;关闭工具条
(tool-bar-mode 0)
;;关闭启动动画
(setq inhibit-startup-message t)
 ;;高亮当前行
(global-hl-line-mode 1)
;;不生成备份文件
(setq make-backup-files nil)
;;设置行号
(global-linum-mode t)
;;设置光标
(setq-default cursor-type 'bar )
;;关闭滚动条
(scroll-bar-mode -1)
;;最近文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

;;括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(provide 'init-better-defaults)
