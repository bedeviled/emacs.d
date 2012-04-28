;; Use a more interesting startup message
(defun startup-echo-area-message ()
  (random t)
  (nth (random (length sayings)) sayings))

(setq sayings '("Hacky time..."
                "Hello Dave..."))

(setq visible-bell nil
      ring-bell-function 'ignore
      echo-keystrokes 0.1
      font-lock-maximum-decoration t
      inhibit-startup-message t
      transient-mark-mode t
      shift-select-mode nil
      truncate-partial-width-windows nil
      uniquify-buffer-name-style 'forward
      ediff-window-setup-function 'ediff-setup-windows-plain
      xterm-mouse-mode t
      x-select-enable-clipboard t
      kill-whole-line t                 ;; delete line in one stage
      mouse-yank-at-point t             ;; paste at cursor, NOT at mouse pointer position
      next-line-add-newlines nil        ;; don't add new lines when scrolling down
      require-final-newline t           ;; end files with a newline
      safe-local-variable-values '((encoding . utf-8) (prompt-to-byte-compile))
      scroll-margin 0                   ;; do smooth scrolling, ...
      scroll-conservatively 100000      ;; ... the defaults ...
      scroll-up-aggressively 0          ;; ... are very ...
      scroll-down-aggressively 0        ;; ... annoying
      user-full-name "J.T. Halbert"     ;; Set name
      user-mail-address "jthalbert@gmail.com" ;; Set e-mail address
      ;; set ispell to use brew installed aspell,
      ;; http://sunny.in.th/2010/05/08/emacs-enabling-flyspell-mode-gave-an-error.html
      ispell-program-name "aspell"
      )


;;(set-default 'imenu-auto-rescan t)

(defalias 'yes-or-no-p 'y-or-n-p)
(random t) ;; Seed the random-number generator

;; Backups, don't clutter up directories with files
(setq make-backup-files t ;; do make backups
      backup-by-copying t ;; and copy them here
      version-control t
      kept-new-versions 2
      kept-old-versions 5
      delete-old-versions t)

;; redefining the make-backup-file-name function in order to get
;; backup files in ~/.backups/ rather than scattered around all over
;; the filesystem. Note that you must have a directory ~/.backups/
;; made.  This function looks first to see if that folder exists.  If
;; it does not the standard backup copy is made.
(defun make-backup-file-name (file-name)
  "Create the non-numeric backup file name for `file-name'."
  (require 'dired)
  (if (file-exists-p "~/.emacs.d/backups")
      (concat (expand-file-name "~/.emacs.d/backups/")
              (replace-regexp-in-string "/" "!" file-name))
    (concat file-name "~")))

;; redefining the make-auto-save-file-name function in order to get
;; autosave files sent to a single directory.  Note that this function
;; looks first to determine if you have a ~/.autosaves/ directory.  If
;; you do not it proceeds with the standard auto-save procedure.
(defun make-auto-save-file-name ()
  "Return file name to use for auto-saves of current buffer.."
  (if buffer-file-name
      (if (file-exists-p "~/.emacs.d/autosaves/")
          (concat (expand-file-name "~/.emacs.d/autosaves/") "#"
                  (replace-regexp-in-string "/" "!" buffer-file-name)
                  "#")
         (concat
          (file-name-directory buffer-file-name)
          "#"
          (file-name-nondirectory buffer-file-name)
          "#"))
    (expand-file-name
     (concat "#%" (buffer-name) "#"))))


;; Transparently open compressed files
(auto-compression-mode t)

;; Start server for emacs client if not already started
(if (file-exists-p
     (concat (getenv "TMPDIR") "emacs"
             (number-to-string
              (user-real-uid)) "/server"))
    nil (server-start))

(provide 'init-defaults)
