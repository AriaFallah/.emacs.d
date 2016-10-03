;; Load init stuff

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/init")
(load "~/.emacs.d/init/defuns.el")
(load "~/.emacs.d/init/defaults.el")
(load "~/.emacs.d/init/packages.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-offsets-alist
   (quote
    ((case-label . +)
     (arglist-intro . +)
     (arglist-close c-lineup-close-paren)
     (template-args-cont . +))))
 '(company-minimum-prefix-length 2)
 '(company-tooltip-idle-delay 0.1)
 '(cursor-type (quote box))
 '(custom-enabled-themes (quote (sanityinc-tomorrow-eighties)))
 '(custom-safe-themes
   (quote
    ("628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default)))
 '(flycheck-gcc-language-standard nil)
 '(golden-ratio-adjust-factor 0.8)
 '(mc/always-run-for-all t)
 '(package-selected-packages
   (quote
    (company-irony-c-headers company-irony irony markdown-mode color-theme-sanityinc-tomorrow rainbow-delimiters paredit multiple-cursors magit helm-projectile haskell-mode golden-ratio flycheck expand-region exec-path-from-shell company color-theme-solarized cider base16-theme ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
