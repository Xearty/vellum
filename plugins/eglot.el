(use-package eglot
  :straight nil

  :custom
  (eglot-report-progress `messages)
  (eglot-send-changes-idle-time 0)
  (eglot-sync-connect nil)

  :config
  (add-to-list 'eglot-server-programs
	       `((tsx-ts-mode typescript-ts-mode js-ts-mode)
		 . ("typescript-language-server" "--stdio")))
  (add-to-list 'eglot-server-programs
	       `(rust-mode . ("rust-analyzer" :initializationOptions
			      (
			       :signatureInformation ( :documentation (:enable nil)
						       :detail "parameters"))
			       ;; :procMacro (:enable t)
				;; :cargo ( :buildScripts (:enable t)
				;; 	 :features "all"))
			   )))

  (setf (plist-get eglot-events-buffer-config :size) 0)
  (fset #'jsonrpc--log-event #'ignore)

  (setq max-mini-window-height 1 ;; It would be helpful if for functions I get the signature and nothing else
	eldoc-echo-area-use-multiline-p nil
	eglot-put-doc-in-help-buffer 'eglot-doc-too-large-for-echo-area)
  (add-hook 'eglot-managed-mode-hook (lambda () (eglot-inlay-hints-mode -1))) 

  :hook (((rust-mode rust-ts-mode) . eglot-ensure)
	 ((c-mode c-ts-mode) . eglot-ensure)
	 ((c++-mode C++-ts-mode) . eglot-ensure))

  :bind ( :map eglot-mode-map
	  ("C-c l i h" . eglot-inlay-hints-mode)
	  ("C-c d d"   . flymake-show-buffer-diagnostics)
	  ("C-c d D"   . flymake-show-project-diagnostics)
	  ("C-c C-a"   . eglot-code-actions)
	  ("C-c C-S-a" . eglot-code-action-quickfix)
	  ("C-c l c f" . eglot-format)
	  ("C-c l r"   . eglot-rename)
	  ("C-c l c o" . eglot-code-actions-organize-imports)))

(use-package flymake-popon)
