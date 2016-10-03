;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

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
  (exec-path-from-shell-initialize))

;; activate helm
(require 'helm)
(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(helm-projectile-on)
(setq helm-M-x-fuzzy-match t)
(helm-mode 1)

;; activate projectile
(projectile-global-mode)
(setq projectile-mode-line "Projectile")
(setq projectile-completion-system 'helm)
(add-to-list 'projectile-globally-ignored-directories "node_modules")

;; activating golden ratio
(require 'golden-ratio)
(golden-ratio-mode 1)
(setq golden-ratio-auto-scale t)

;; always have company mode on
(add-hook 'after-init-hook 'global-company-mode)

;; activate auto pairing
(add-hook 'after-init-hook 'electric-pair-mode)

;; activate ace jump mode
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; view recently opened files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 5)
(global-set-key (kbd "C-x f") 'helm-recentf)

;; activate multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "M-3") 'mc/mark-next-like-this)
(global-set-key (kbd "M-4") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c M-3") 'mc/mark-all-like-this)

;; activate expand-region
(require 'expand-region)
(global-set-key (kbd "M-2") 'er/expand-region)

;; Enable paredit for Clojure
(add-hook 'clojure-mode-hook 'enable-paredit-mode)

;; activating flycheck
(add-hook 'after-init-hook 'global-flycheck-mode)
(with-eval-after-load 'flycheck
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))

;; make flycheck do c++11
(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))
(add-hook 'c++-mode-hook (lambda () (setq flycheck-clang-language-standard "c++11")))

;; magit stuff
(global-set-key (kbd "C-x g") 'magit-status)

;; irony-mode
(require 'company-irony-c-headers)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'c++-mode-hook 'irony-mode)

;; Load with `irony-mode` as a grouped backend
(eval-after-load 'company
  '(add-to-list
    'company-backends '(company-irony-c-headers company-irony)))

