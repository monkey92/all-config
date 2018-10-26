;; my config
;;(display-time-mode t)
;;关闭工具条
(tool-bar-mode 0)
;;关闭启动动画
(setq inhibit-startup-message t)
;;高亮当前行
(global-hl-line-mode 1)
;;不生成备份文件
(setq make-backup-files nil)
;;设置行号
;;(setq line-number-mode t)
(global-linum-mode t)
;;设置光标
(setq-default cursor-type 'bar )
;;关闭滚动条
(scroll-bar-mode -1)

;;快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el")
  )
;;设置快速打开配置文件快捷键
(global-set-key (kbd "<f2>") 'open-init-file )

;;最近文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)



;;cua模式开启
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;(require 'package)
;;(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
 ;;                   (not (gnutls-available-p))))
   ;;    (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  ;;(add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  ;;(when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    ;;(add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
;;(package-initialize)
