;;插件管理统一配置

;;插件管理镜像
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
      (proto (if no-ssl "http" "https")))
;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
(add-to-list 'package-archives (cons "melpa" (concat proto "://elpa.emacs-china.org/melpa/")) t)
;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
(when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))


;;插件管理
(require 'cl)
(defvar my_packages '(
		      ;;主题
		      monokai-theme
		      ;;helm-themes
		      dakrone-theme
		      ;;自动补全
		      company
		      ;;高亮括号
		      smartparens
		      ))
(setq package-selected-packages my_packages)
(defun my_packages_installed()
  (loop for pkg in my_packages	when (not (package-installed-p pkg)) do (return nil)  finally (return t)))

(unless (my_packages_installed) (message "%s" "Download uninstalled package") (package-refresh-contents)
	(dolist (pkg my_packages) (when (not (package-installed-p pkg)) (package-install pkg))))



(provide 'init-packages)
