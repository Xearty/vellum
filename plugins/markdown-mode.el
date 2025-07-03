(use-package markdown-mode
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown")
  :config
  (define-key markdown-view-mode-map (kbd "C-c d v") (lambda ()
						  (interactive)
						  (markdown-mode)))

  (define-key markdown-mode-map (kbd "C-c d v") (lambda ()
						  (interactive)
						  (markdown-view-mode)))

  (define-key gfm-mode-map (kbd "C-c d v") (lambda ()
					     (interactive)
					     (gfm-view-mode)))

  (define-key gfm-view-mode-map (kbd "C-c d v") (lambda ()
						  (interactive)
						  (gfm-mode)))

(markdown-toggle-fontify-code-blocks-natively +1))
