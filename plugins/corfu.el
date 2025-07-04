(use-package corfu
  :custom
  (corfu-cycle t)                 ; Allows cycling through candidates
  (corfu-auto t)                  ; Enable auto completion
  (corfu-auto-prefix 2)           ; Minimum length of prefix for completion
  (corfu-auto-delay 0)            ; No delay for completion
  (corfu-popupinfo-delay '(0.5 . 0.2))  ; Automatically update info popup after that numver of seconds
  (corfu-preview-current nil) ; insert previewed candidate
  (corfu-preselect 'first)
  (corfu-on-exact-match nil)      ; Don't auto expand tempel snippets

  :bind (:map corfu-map
	      ("M-SPC"      . corfu-insert-separator)
	      ("TAB"        . corfu-next)
	      ([tab]        . corfu-next)
	      ("S-TAB"      . corfu-previous)
	      ([backtab]    . corfu-previous)
	      ("C-y"        . corfu-insert)
	      ("M-h"        . corfu-info-documentation)
	      ("M-n"        . corfu-popupinfo-scroll-up)
	      ("M-p"        . corfu-popupinfo-scroll-down))

  :init
  (global-corfu-mode)
  (corfu-history-mode)
  (corfu-popupinfo-mode) ; Popup completion info
  :config
  (keymap-set corfu-map "<remap> <keyboard-escape-quit>" nil)
  (define-key corfu-map (kbd "RET") nil))

;; A few more useful configurations...
(use-package emacs
  :disabled
  :straight (:type built-in)
  :custom
  ;; Enable indentation+completion using the TAB key.
  ;; `completion-at-point' is often bound to M-TAB.
  (tab-always-indent 'complete)

  ;; Emacs 30 and newer: Disable Ispell completion function.
  ;; Try `cape-dict' as an alternative.
  (text-mode-ispell-word-completion nil)

  ;; Hide commands in M-x which do not apply to the current mode.  Corfu
  ;; commands are hidden, since they are not used via M-x. This setting is
  ;; useful beyond Corfu.
  (read-extended-command-predicate #'command-completion-default-include-p))
