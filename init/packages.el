;; activate MELPA
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;; put $PATH into shell on mac
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH"))

;; nice menus
(use-package helm
  :defines helm-mode-fuzzy-match
  :config
  (progn
    (use-package helm-config)
    (setq helm-mode-fuzzy-match t)
    (helm-mode 1))
  :bind (("M-x"     . helm-M-x)
         ("M-y"     . helm-show-kill-ring)
         ("C-x f"   . helm-recentf)
         ("C-x C-f" . helm-find-files)
         ("C-x b"   . helm-buffers-list)
         ("C-c o"   . helm-occur)))

;; easy project traversal
(use-package projectile
  :config
  (progn
    (projectile-mode)
    (setq projectile-mode-line "Projectile")
    (add-to-list 'projectile-globally-ignored-directories "node_modules")
    (use-package helm-projectile
      :config
      (progn
        (helm-projectile-on)
        (setq projectile-completion-system 'helm))
      :bind (("C-x C-b" . projectile-switch-to-buffer)))))

;; git porcelain
(use-package magit
  :bind ("C-x g" . magit-status))

;; proper pane sizing
(use-package golden-ratio
  :config (setq golden-ratio-auto-scale t))

;; easy code navigation
(use-package ace-jump-mode
  :bind ("C-c SPC" . ace-jump-mode))

;; view recently opened files
(use-package recentf
  :config
  (progn
    (recentf-mode 1)
    (setq recentf-max-menu-items 5)))

;; multiple cursors
(use-package multiple-cursors
  :bind (("M-3" . mc/mark-next-like-this)
         ("M-4" . mc/mark-previous-like-this)
         ("C-c M-3" . mc/mark-all-like-this)))

;; easier marking
(use-package expand-region
  :bind ("M-2" . er/expand-region))

;; autocomplete system
(use-package company
  :config
  (progn
    (setq company-idle-delay 0.175
          company-minimum-prefix-length 3)
    (add-hook 'after-init-hook 'global-company-mode)
    (add-to-list 'company-backends '(company-irony-c-headers company-irony company-go))))

;; C++ completion engine
(defvar irony-mode-map)
(use-package irony
  :init
  (defun my-irony-mode-hook ()
    (define-key irony-mode-map [remap completion-at-point]
      'irony-completion-at-point-async)
    (define-key irony-mode-map [remap complete-symbol]
      'irony-completion-at-point-async))
  :config
  (progn
    (add-hook 'c-mode-hook 'irony-mode)
    (add-hook 'c++-mode-hook 'irony-mode)
    (add-hook 'irony-mode-hook 'my-irony-mode-hook)
    (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)))

;; linting
(use-package flycheck
  :config
  (progn
    (add-hook 'after-init-hook 'global-flycheck-mode)
    (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
    (add-hook 'c++-mode-hook (lambda () (setq flycheck-clang-language-standard "c++14")))))

(use-package web-mode
  :mode (("\\.html\\'" . web-mode)
         ("\\.gohtml\\'" . web-mode)
         ("\\.js\\'" . web-mode)
         ("\\.hbs\\'" . web-mode)
         ("\\.s?css\\'" . web-mode))
  :config
  (progn
    (setq
     web-mode-markup-indent-offset 2
     web-mode-css-indent-offset 2
     web-mode-code-indent-offset 2
     web-mode-enable-auto-pairing t
     web-mode-enable-css-colorization t
     web-mode-enable-current-element-highlight t)
    (add-hook 'after-save-hook font-lock-fontify-buffer-function nil 'local)))

;; cool mode line
(require 'spaceline-config)
(spaceline-emacs-theme)
(spaceline-helm-mode)
