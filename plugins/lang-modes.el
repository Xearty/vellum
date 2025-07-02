(use-package rust-mode
  :init
  (setq rust-mode-treesitter-derive t))

(use-package typescript-ts-mode
  :straight (:type built-in)
  :defer t
  :mode "\\.tsx?\\'")

(use-package nix-ts-mode
  :mode "\\.nix\\'"
  :config
  (add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-ts-mode)))

(use-package solidity-mode)
