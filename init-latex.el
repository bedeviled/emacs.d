(require 'tex-site)
;; Preliminary setup for AUCTeX and ebib
(autoload 'ebib "ebib" "Ebib, a BibTeX database manager." t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)           ;set up AUCTeX to deal with
                                        ;multiple file documents.
(add-hook 'LaTeX-mode-hook (lambda ()
                                  (TeX-fold-mode 1))) ;turn on
                                                      ;tex-fold-mode
                                                      ;by default

(add-hook 'LaTeX-mode-hook 'TeX-PDF-mode) ;turn on pdf-mode.  AUCTeX
                                          ;will call pdflatex to
                                          ;compile instead of latex.

(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode) ;turn on math-mode by
                                             ;default

(add-hook 'LaTeX-mode-hook 'reftex-mode) ;turn on REFTeX mode by
                                         ;default
(add-hook 'LaTeX-mode-hook 'Mueller-TeX-mode) ;turn on Mueller-TeX
					      ;mode by default.  See
					      ;below for the
					      ;definition of this
					      ;minor mode
(eval-after-load "latex"
  '(add-to-list 'LaTeX-font-list '(?\C-h "" "" "\\mathscr{" "}")))

(setq reftex-label-alist
        '(("lemma"   ?a "lm:"  "~\\ref{%s}" t ("lemma"   "lm.") -2)
          ("corollary"  ?c "crl:" "~\\ref{%s}" t ("corollary"  "crl.") -3)
          ("definition" ?d "dfn:" "~\\ref{%s}" t ("definition" "dfn.") -3)
          ("remark" ?r "rm:" "~\\ref{%s}" t ("remark" "rm.") -2)
          ("theorem" ?h "thr:" "~\\ref{%s}" t   ("theorem" "th.") -3)))

(add-hook 'LaTeX-mode-hook 'flyspell-mode)

(add-hook
 'LaTeX-mode-hook
 (lambda ()
   (smart-dnd-setup
    '(
      ("\\.tex\\'" . "\\input{%r}\n")
      ("\\.cls\\'" . "\\documentclass{%f}\n")
      ("\\.sty\\'" . "\\usepackage{%f}\n")
      ("\\.eps\\'" . "\\includegraphics[]{%r}\n")
      ("\\.ps\\'"  . "\\includegraphics[]{%r}\n")
      ("\\.pdf\\'" . "\\includegraphics[]{%r}\n")
      ("\\.jpg\\'" . "\\includegraphics[]{%r}\n")
      ("\\.png\\'" . "\\includegraphics[]{%n}\n")
      ("\\.mov\\'" .
       "\\includemovie[\n\tposter,\n\trepeat=1,\n\ttext=(%r)\n\t]{}{}{%r}\n")
      ("\\.avi\\'" .
       "\\includemovie[\n\tposter,\n\trepeat=1,\n\ttext=(%r)\n\t]{}{}{%r}\n")))))


;; Set up skeletons (see below) in a menu in AUCTeX mode
(defvar LaTeX-mode-menu)
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (easy-menu-add-item LaTeX-mode-menu
                                nil ["Skeletons" nil t])
            (easy-menu-add-item LaTeX-mode-menu '("Skeletons")
                                ["Letter" latex-letter-skeleton
                                t])
            (easy-menu-add-item LaTeX-mode-menu '("Skeletons")
                                ["Brief Article"
                                latex-brief-article-skeleton t])
            (easy-menu-add-item LaTeX-mode-menu '("Skeletons")
                                ["AMS Article"
                                latex-AMS-article-skeleton t])
            (easy-menu-add-item LaTeX-mode-menu '("Skeletons")
                                ["Foils" latex-foils-skeleton t])
            (easy-menu-add-item LaTeX-mode-menu '("Skeletons")
                                ["Simple"
                                latex-simple-text-skeleton t])))

;; set the shell that is used to execute all the TeX commands by AUCTeX
(setq TeX-shell (getenv "SHELL"))

;; Set up TeX-output-view-style.  Note that for pdf viewing I have set
;; a script repreview.  This is available in ~/bin/.
;; It calls a shell script:
;; ~/Library/Scripts/Reload Preview Document.scpt
;;
;; I found the script here:
;; http://www.macosxhints.com/article.php?story=2006010200141989&lsrc=osxh

;; I recently discovered TeXniscope.  It is much better.
;; Auto-reloading once changes are made...and it plays well with Emacs
;; (pdfsync)
;;
;; TeXniscope is no longer under active development and so I am back
;; to using preview, but it seems to handle renewing in 10.5 better
;; than in 10.4
;;
;; Unfortunately there is no simple way to have Preview interact with
;; emacs via pdfsync.... I found the nice program Skim that handles
;; this well as well as having live updating.

(setq TeX-output-view-style
      (quote
       (
        ("^dvi$"
         ("^landscape$" "^pstricks$\\|^pst-\\|^psfrag$")
         "%(o?)dvips -t landscape %d -o && gv %f")
        ("^dvi$" "^pstricks$\\|^pst-\\|^psfrag$" "%(o?)dvips %d -o && gv %f")
        ("^dvi$"
         ("^a4\\(?:dutch\\|paper\\|wide\\)\\|sem-a4$" "^landscape$")
         "%(o?)xdvi %dS -paper a4r -s 0 %d")
        ("^dvi$" "^a4\\(?:dutch\\|paper\\|wide\\)\\|sem-a4$"
         "%(o?)xdvi %dS -paper a4 %d")
        ("^dvi$"
         ("^a5\\(?:comb\\|paper\\)$" "^landscape$")
         "%(o?)xdvi %dS -paper a5r -s 0 %d")
        ("^dvi$" "^a5\\(?:comb\\|paper\\)$" "%(o?)xdvi %dS -paper a5 %d")
        ("^dvi$" "^b5paper$" "%(o?)xdvi %dS -paper b5 %d")
        ("^dvi$" "^letterpaper$" "%(o?)xdvi %dS -paper us %d")
        ("^dvi$" "^legalpaper$" "%(o?)xdvi %dS -paper legal %d")
        ("^dvi$" "^executivepaper$" "%(o?)xdvi %dS -paper 7.25x10.5in %d")
        ("^dvi$" "." "%(o?)xdvi %dS %d")
        ("^pdf$" "."
         "/Applications/Skim.app/Contents/SharedSupport/displayline %n %o %b"))))

(define-minor-mode Mueller-TeX-mode
  "toggles Mueller-TeX-mode.  This mode changes the behavior of
   C-return, _, ^, &, ., $."
  :keymap
  '(("$" . (lambda () (interactive) (double-insert "$" "$")))
    ("." . dots)
    ("&" . ampersand)
    ([C-return] . tab-map)
    ("^" . (lambda () (interactive) (character-or-brackets "^")))
    ("_" . (lambda () (interactive) (character-or-brackets "_"))))

  (defun double-insert (left right)
    (interactive)
    (if (equal (char-to-string (char-before)) left)
	(delete-backward-char -1)
      (insert (concat left right))
      (backward-char)))

  (defun character-or-brackets (character)
    "This is a embellishment of a function developed originally
     by Carl Mueller.  It is meant to be used with a key
     definition for _ or ^.  Repeated use of one of those will
     put an automatic double bracket (or pair of them if
     appropriate)."
    (interactive)
    (if (not (equal (char-to-string (char-before)) character))
	(insert character)
      (if (or
	   (equal "\\int_" (buffer-substring (- (point) 5) (point)))
	   (equal "\\prod_" (buffer-substring (- (point) 6) (point)))
	   (equal "\\sum_" (buffer-substring (- (point) 5) (point))))
	  ((lambda () (insert "{}^{}") (backward-char 4)))
	(insert "{}")
	(backward-char))))

  (defun ampersand ()
    "Modified from Carl Mueller's code.  This puts a \& in if you
     are in normal text or a & in if you are in an array."
    (interactive)
    (let (array)
      (save-excursion
	(re-search-backward "\\\\begin" nil t)
	(setq array 0)
	(if (string-match
	     (concat "\\\\begin{"
		     "\\(align\\|"
		     "cases\\|"
		     "diagram\\|"
		     "array\\|"
		     "\\(p\\|b\\|B\|v\\|V\\)matrix\\)"
		     "}")
	     (this-line))
	    (setq array 1)))
      (if (equal array 1)
	  (insert "&")
	(insert "\\&"))))

  (defun dots ()
    "this is modified from Carl Mueller's code.  Only the bits I
     needed.  It basicaly just puts in a . when next to text, but
     a .. will be replaced with \cdots and ,.. with
     ,\ldots ;.. with \vdots :.. with \ddots"
    (interactive)
    (let (previous-character)
      (setq previous-character (char-to-string (char-before)))
      (cond

       ((not (equal previous-character "."))
	(insert "."))

       (t
	(delete-backward-char 1)
	(if (equal (char-before) ?,)
	    (insert "\\ldots")
	  (if (equal (char-before) ?\;)
	      ((lambda ()
		 (delete-backward-char 1) (insert "\\vdots")))
	    (if (equal (char-before) ?:)
		((lambda ()
		   (delete-backward-char 1) (insert "\\ddots")))
	      (insert "\\cdots"))))))))

  (defun tab-map ()
    (interactive)
    (cond

     ((equal "\}\{"
	     (buffer-substring (point) (+ (point) 2)))
      (forward-char 2))

     ((equal "\}^\{"
	     (buffer-substring (point) (+ (point) 3)))
      (forward-char 3))

     ((string-match "[\]\$\)\}\{^&|]"
		    (char-to-string (char-after (point))))
      (forward-char))

     ((equal "\\\}"
	     (buffer-substring (point) (+ (point) 2)))
      (forward-char 2))

     ((equal "\\\|"
	     (buffer-substring (point) (+ (point) 2)))
      (forward-char 2))

     ((equal "\\right\\\\}"
	     (buffer-substring (point) (+ (point) 8)))
      (forward-char 8))

     ((equal "\\right"
	     (buffer-substring (point) (+ (point) 6)))
      (forward-char 7))

     (t
      (command-execute 'dabbrev-expand)))))

(define-minor-mode electric-brackets-mode
  "toggles electric-brackets-mode.  This mode allows auto pairing
  of (),[],\{\}, ... etc.  This is based on code lifted from Carl
  Mueller's custom-latex.el"
  :keymap
  '(("[" . (lambda () (interactive) (double-insert "[" "]")))
    ("(" . (lambda () (interactive) (double-insert "(" ")")))
    ("{" . (lambda () (interactive) (double-slash "{" "}")))
    ("|" . (lambda () (interactive) (double-slash "|" "|"))))

  (defun double-insert (left right)
    (interactive)
    (if (equal (char-to-string (char-before)) left)
        (delete-backward-char -1)
      (insert (concat left right))
      (backward-char)))

  (defun double-slash (left right)
    "Inserts {} or whatever"
    (interactive)
    (let (previous)
      (setq previous (char-to-string (preceding-char)))
      (if (equal previous left)
          (delete-backward-char -1)
        (if (not (equal (char-to-string (preceding-char)) "\\"))
            (insert (concat left right))
          (insert (concat left "\\" right))
          (backward-char))
        (backward-char)))))

(provide 'init-latex)
