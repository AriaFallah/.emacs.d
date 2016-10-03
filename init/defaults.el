;; Better backups
(setq
 backup-by-copying t
 backup-directory-alist
 '(("." . "~/.saves"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)

;; Make autosaves be saved to temp
(setq backup-directory-alist
  `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
  `((".*" ,temporary-file-directory t)))

;; Use spaces when possible
(setq-default indent-tabs-mode nil)

;; make the left fringe 4 pixels wide and the right disappear
(fringe-mode '(4 . 0))

;; No cursor blinking, it's distracting
(blink-cursor-mode 0)

;; Highlights matching parenthesis
(show-paren-mode 1)

;; Highlight current line
(global-hl-line-mode 1)

;; Save copied text from outside emacs when yanking
(setq save-interprogram-paste-before-kill t)

;; Use Emacs terminfo, not system terminfo
(setq system-uses-terminfo nil)

;; remove the GUI emacs clutter
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-message t)

; proper case statement offsets
(c-set-offset 'case-label '+)

;; Command key mapping on mac
(setq mac-command-modifier 'meta)
(setq mac-right-command-modifier 'meta)

;; turn on line numbers
(global-linum-mode t)
(setq linum-format (lambda (line) (propertize (format (let ((w (length (number-to-string (count-lines (point-min) (point-max)))))) (concat "%" (number-to-string w) "d ")) line) 'face 'linum)))

;; disable lockfiles
(setq create-lockfiles nil)

;; enable buffer erasing
(put 'erase-buffer 'disabled nil)

;; activate windmove
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings)
  (global-set-key (kbd "C-c <left>")  'windmove-left)
  (global-set-key (kbd "C-c <right>") 'windmove-right)
  (global-set-key (kbd "C-c <up>")    'windmove-up)
  (global-set-key (kbd "C-c <down>")  'windmove-down))
