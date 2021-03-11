(xterm-mouse-mode t)
(setq scroll-preserve-screen-position 't)
(global-set-key (kbd "<mouse-4>") 'previous-line)
(global-set-key (kbd "<mouse-5>") 'next-line)
(defun yank-from-x-clipboard ()
  (interactive)
  (progn (insert (shell-command-to-string "xsel -o")))
  (message "Yanked region from clipboard!"))
(global-set-key (kbd "<mouse-2>") 'yank-from-x-clipboard)

;; Avoid duplicates in command mini-buffer when using Helm.
(setq history-delete-duplicates t)

(setq c-basic-offset 2)
(require 'clang-format)
(fset 'c-indent-region 'clang-format-region)
(fset 'c-indent-line-or-region 'clang-format-region)
(setq clang-format-style "file")

(add-to-list 'auto-mode-alist '("\\.cu\\'" . cuda-mode))
(add-to-list 'auto-mode-alist '("\\.cuh\\'" . cuda-mode))
