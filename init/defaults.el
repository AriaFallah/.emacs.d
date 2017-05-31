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

;; Use spaces when possible and tabs should look like 2 spaces
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;; Make emacs font fira code
(mac-auto-operator-composition-mode)
(set-frame-font "Fira Code-12.5" nil)

;; make the left fringe 16 pixels wide and the right disappear
(fringe-mode '(16 . 0))

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

;; Delete trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; activate auto pairing
(add-hook 'after-init-hook 'electric-pair-mode)

;; remove the GUI emacs clutter
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-message t)

;; proper case statement offsets
(c-set-offset 'case-label '+)

;; Command key mapping on mac
(setq mac-command-modifier 'meta)
(setq mac-right-command-modifier 'meta)

;; turn on line numbers
(defvar linum-format)
(global-linum-mode t)
(setq linum-format
      (lambda (line)
        (propertize
         (format
          (let ((w (length (number-to-string (count-lines (point-min) (point-max))))))
            (concat "%" (number-to-string w) "d ")) line) 'face 'linum)))

;; disable lockfiles
(setq create-lockfiles nil)

;; enable buffer erasing
(put 'erase-buffer 'disabled nil)
