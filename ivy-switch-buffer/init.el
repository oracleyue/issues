;;
;; package management by ELPA
;;
(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
    (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
    (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t))

;;
;; themes
;;
(set-face-attribute 'variable-pitch nil :font "Roboto-15")
(defface org-level-4
  '((t :inherit variable-pitch))
  "Face for org-mode")

;;
;; ivy (defaults)
;;
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;;
;; org-mode
;;
(defun y/set-view-style-orgmode ()
    (variable-pitch-mode t)    ;; use sans-serif
    (setq line-spacing '0.25))  ;; line spacing
(add-hook 'org-mode-hook #'y/set-view-style-orgmode)
