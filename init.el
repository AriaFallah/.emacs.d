(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["black" "#E2434C" "#86B187" "#E0D063" "#84C452" "#E18CBB" "#8AC6F2" "white"])
 '(c-offsets-alist
   (quote
    ((case-label . +)
     (arglist-intro . +)
     (arglist-close c-lineup-close-paren)
     (template-args-cont . +))))
 '(cursor-type (quote box))
 '(custom-enabled-themes (quote (gruvbox)))
 '(custom-safe-themes
   (quote
    ("10e231624707d46f7b2059cc9280c332f7c7a530ebc17dba7e506df34c5332c4" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "9b402e9e8f62024b2e7f516465b63a4927028a7055392290600b776e4a5b9905" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default)))
 '(fci-rule-color "#515151")
 '(flycheck-gcc-language-standard nil)
 '(golden-ratio-adjust-factor 0.8)
 '(lua-indent-level 2)
 '(mc/always-run-for-all t)
 '(package-selected-packages
   (quote
    (company-irony company-irony-c-headers company-jedi web-mode spaceline gruvbox-theme use-package yaml-mode cmake-mode cmake-ide rtags company-lua lua-mode irony markdown-mode rainbow-delimiters paredit multiple-cursors magit helm-projectile haskell-mode golden-ratio flycheck expand-region exec-path-from-shell company ace-jump-mode)))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#f2777a")
     (40 . "#f99157")
     (60 . "#ffcc66")
     (80 . "#99cc99")
     (100 . "#66cccc")
     (120 . "#6699cc")
     (140 . "#cc99cc")
     (160 . "#f2777a")
     (180 . "#f99157")
     (200 . "#ffcc66")
     (220 . "#99cc99")
     (240 . "#66cccc")
     (260 . "#6699cc")
     (280 . "#cc99cc")
     (300 . "#f2777a")
     (320 . "#f99157")
     (340 . "#ffcc66")
     (360 . "#99cc99"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path "~/.emacs.d/init")
(load "~/.emacs.d/init/defuns.el")
(load "~/.emacs.d/init/defaults.el")
(load "~/.emacs.d/init/packages.el")
(load "~/.emacs.d/init/keys.el")
