(use-package dirvish
  :after evil
  :init
  (with-eval-after-load 'evil
    (evil-global-set-key 'motion (kbd "_") 'dirvish)
    (evil-global-set-key 'motion (kbd "-") 'dirvish-dwim))
  :config
  (with-eval-after-load 'evil
    (define-key dirvish-mode-map [remap quit-window] 'dirvish-quit)
    (define-key dirvish-mode-map [remap evil-window-delete] 'dirvish-quit)
    (define-key dired-mode-map [remap evil-search-backward] 'dired-summary))
  (dirvish-override-dired-mode))

(use-package dired
  :straight nil
  :config
  (setq dired-listing-switches
	"-AGFhlv --group-directories-first --time-style=long-iso"))
