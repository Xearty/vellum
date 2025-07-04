(use-package modus-themes
  :config
  (setq modus-themes-common-palette-overrides
      '((fg-region unspecified))))

(use-package doom-themes)
(use-package vscode-dark-plus-theme)

(use-package solaire-mode
  :config
  (solaire-global-mode +1))
