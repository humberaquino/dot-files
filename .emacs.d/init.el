(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; General customization
(tool-bar-mode -1)
(menu-bar-mode -1) 
(toggle-scroll-bar -1)

;; Display line and column numbers
(global-display-line-numbers-mode)
(column-number-mode t)

;; use-package
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

;; evil mode setup
(use-package evil
  :hook (after-init . evil-mode))

;; Doom emacs theme
(use-package doom-themes
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

;; Modeline
(use-package doom-modeline
  :init (doom-modeline-mode 1))

;; TTY cursor changer
(use-package evil-terminal-cursor-changer
  :init (etcc-on))

;; TTY clipboard integration
(use-package clipetty
  :ensure t
  :hook (after-init . global-clipetty-mode))

(use-package magit
  :bind (("C-x g" . magit-status)
         ("C-x C-g" . magit-status)))

(use-package which-key
    :config
    (add-hook 'after-init-hook 'which-key-mode))

(use-package avy)
