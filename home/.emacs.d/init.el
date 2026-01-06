;;; init.el --- Emacs initialization file

;;; Commentary:
;;
;; Consider swapping Ctrl and Caps Lock.

;;; Code:

;; Customize user interface.
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(setq inhibit-startup-screen t)
(global-display-line-numbers-mode)

;; Set font.
(add-to-list 'default-frame-alist '(font . "Iosevka-20"))

;; Enable vertical incremental search.
(fido-vertical-mode)

;; Remember recently opened files.
(recentf-mode 1)

;; Remember last place in file.
(save-place-mode 1)

;; Automatically update buffer upon change.
(setq global-auto-revert-non-file-buffers t)
(global-auto-revert-mode 1)

;; Undo/redo window configuration with C-c <left>/<right>.
(winner-mode 1)

;; Show relevant key combinations.
(which-key-mode 1)
(which-key-setup-side-window-bottom)

;; Highlight matching pairs of parentheses.
(setq show-paren-delay 0)
(show-paren-mode)

;; Answering 'y' or 'n' is enough.
(defalias 'yes-or-no-p 'y-or-n-p)

(setq ;; Relative line numbers.
      display-line-numbers-type 'relative

      ;; Show keystrokes faster.
      echo-keystrokes 0.1

      ;; Disable ui dialog prompts.
      use-dialog-box nil

      ;; Allow recursive minibuffers.
      enable-recursive-minibuffers t

      ;; Scroll to the compilation output.
      compilation-scroll-output t

      ;; Do not recenter cursor at the end of the window.
      scroll-conservatively (+ 100 1)

      ;; Scroll with a margin of 8 lines.
      scroll-margin 8

      ;; Show stray whitespace.
      show-trailing-whitespace t

      ;; Add a final newline at the end of a file while saving.
      require-final-newline t

      ;; Consider a period followed by a single space the end of a sentence.
      sentence-end-double-space nil

      ;; Use spaces instead of tabs for indentation.
      indent-tabs-mode nil

      ;; Display the distance between two tabs as 4 characters wide.
      tab-width 4)

;; Write auto-saves and backups to separate directory.
(make-directory "~/.cache/emacs/auto-save/" t)
(setq auto-save-file-name-transforms '((".*" "~/.cache/emacs/auto-save/" t))
      backup-directory-alist '(("." . "~/.cache/emacs/backup/")))

(setq ;; Do not move the current file while creating backup.
      backup-by-copying t

      ;; Disable lockfiles.
      create-lockfiles nil)

(require 'org)
(setq ;; Set org-agenda path.
      org-agenda-files (concat org-directory "/agenda/")

      ;; Set org-capture file.
      org-default-notes-file (concat org-directory "/notes.org"))

;; Enable export of org files to markdown format.
(add-to-list 'org-export-backends 'md)

;; Write customizations to a separate file instead of this file.
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Catppuccin theme setup.
(use-package catppuccin-theme
             :ensure t
             :config (load-theme 'catppuccin t))

;; Evil setup.
(use-package evil
             :ensure t
             :config (evil-mode 1))

;; Company setup.
(use-package company
             :ensure t
             :config (add-hook 'after-init-hook 'global-company-mode))

;; Magit setup.
(use-package magit
             :ensure t)

;; Custom key bindings.
(global-set-key (kbd "C-c r")   'recentf-open)
(global-set-key (kbd "C-c s")   'scratch-buffer)
(global-set-key (kbd "C-c p")   'find-file-at-point)
(global-set-key (kbd "C-c c")   'compile)
(global-set-key (kbd "C-c e")   'eglot)

(global-set-key (kbd "C-c o a") 'org-agenda)
(global-set-key (kbd "C-c o c") 'org-capture)
(global-set-key (kbd "C-c o n") 'org-add-note)

(global-set-key (kbd "C-c g")   'magit-file-dispatch)
(global-set-key (kbd "C-c m l") 'magit-log)
(global-set-key (kbd "C-c m b") 'magit-blame)

;;; init.el ends here
