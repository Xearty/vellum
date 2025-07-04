(use-package smerge-mode
  :straight nil
  :bind (:map smerge-mode-map
	      ("C-c ^ u" . smerge-keep-upper)
	      ("C-c ^ l" . smerge-keep-lower)
	      ("C-c ^ n" . smerge-next)
	      ("C-c ^ p" . smerge-previous)))

(provide 'packages/builtins/smerge)
