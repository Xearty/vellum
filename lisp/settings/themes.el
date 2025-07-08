(use-package modus-themes
  :config
  (setq modus-themes-common-palette-overrides
      '((fg-region unspecified))))

(use-package doom-themes)
(use-package vscode-dark-plus-theme)

(require 'packages/vellum-themes-switch)

(vellum-use-themes
 (dark
  '(doom-one
    doom-pine
    wheatgrass
    doom-sourcerer
    doom-lantern
    doom-moonlight
    doom-city-lights))
 (light
  '(doom-gruvbox-light
    doom-feather-light
    doom-one-light))
 (modus-dark
  '(modus-vivendi
    modus-vivendi-tinted
    modus-vivendi-tritanopia
    modus-vivendi-deuteranopia))
 (modus-light
  '(modus-operandi
    modus-operandi-tinted
    modus-operandi-tritanopia
    modus-operandi-deuteranopia)))
