(use-package dirvish
  :after evil
  :init
  (with-eval-after-load 'evil
    (evil-global-set-key 'motion (kbd "-") 'dirvish))
  :config
  (with-eval-after-load 'evil
    (define-key dirvish-mode-map [remap quit-window] 'dirvish-quit)
    (define-key dirvish-mode-map [remap evil-window-delete] 'dirvish-quit)
    (define-key dired-mode-map [remap evil-search-backward] 'dired-summary))
  (dirvish-override-dired-mode))
