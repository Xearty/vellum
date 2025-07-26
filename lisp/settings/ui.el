;; Disable UI
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; Maximize on startup
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

(set-face-attribute 'default nil :family "JetBrains Mono" :height 150)

(setq use-dialog-box nil)

(setq visible-bell t)
(setq ring-bell-function 'ignore)

;; Vimlike point out of screen behavior
(setq scroll-step 1
      scroll-margin 6
      scroll-conservatively 99999)

(add-hook 'prog-mode-hook #'display-line-numbers-mode)

;; Do not extend `region' background past the end of the line.
(custom-set-faces
 '(region ((t :extend nil))))
