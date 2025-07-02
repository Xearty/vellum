(use-package magit
  :config
  (setq magit-display-buffer-function 'magit-display-buffer-fullframe-status-v1
	magit-bury-buffer-function 'magit-restore-window-configuration)
  (setq magit-save-repository-buffers nil))
