(defvar *window-system-color-theme* 'color-theme-sanityinc-dark
   "Color theme to use in window-system frames")
 (defvar *tty-color-theme* 'color-theme-terminal
   "Color theme to use in TTY frames")

(defmacro preserving-maximization (&rest body)
  (let ((maximized-frames (gensym)))
    `(let ((,maximized-frames (loop for f in (frame-list)
                                    when (maximized-p f)
                                    collect f)))
       (prog1 (progn ,@body)
         (dolist (frame ,maximized-frames)
           (select-frame frame)
           (maximize-frame))))))

(defmacro preserving-default-font-size (&rest body)
  (let ((old-size (gensym)))
    `(preserving-maximization
      (let ((,old-size (face-attribute 'default :height)))
        (prog1 (progn ,@body)
          (set-face-attribute 'default nil :height ,old-size))))))



(require 'color-theme-autoloads)
;;(autoload 'color-theme-zenburn "zenburn" "A low contrast color theme" t)
(autoload 'color-theme-twilight "color-theme-twilight" "A dark color theme" t)
;;(autoload 'color-theme-vivid-chalk "vivid-chalk" "A dark color theme" t)
(autoload 'color-theme-tango-2 "color-theme-tango-2" "A dark color theme" t)
(autoload 'color-theme-subdued "color-theme-subdued" "A dark color theme" t)
(autoload 'color-theme-ir-black "color-theme-ir-black" "A dark color theme" t)
(autoload 'color-theme-zen-and-art "zen-and-art" "A dark color theme" t)
(autoload 'color-theme-railscasts "color-theme-railscasts" "Translation of railscasts theme for Textmate" t)
(autoload 'color-theme-sanityinc-light "color-theme-sanityinc" "A light color theme" t)
(autoload 'color-theme-sanityinc-dark "color-theme-sanityinc" "A dark color theme" t)

(color-theme-initialize)
;; stop the default themes from loading
;; doesn't seem to work, removed .el files from el-get/color-theme/themes
(setq color-theme-load-all-themes nil)

;;TODO: figure out how to distinquish terminals with the theme

 (defun color-theme-terminal ()
   (interactive)
   (color-theme-sanityinc-dark))


 (defun apply-best-color-theme-for-frame-type (frame)
   (let ((prev-frame (selected-frame)))
     (select-frame frame)
     (prog1
         (if window-system
             (preserving-default-font-size
              (funcall *window-system-color-theme*))
           (funcall *tty-color-theme*))
       (select-frame prev-frame))))

(defun reapply-color-themes ()
   (interactive)
   (mapcar 'apply-best-color-theme-for-frame-type (frame-list)))

 (defun light ()
   (interactive)
   (setq *window-system-color-theme* 'color-theme-sanityinc-light)
   (reapply-color-themes))

 (defun dark ()
   (interactive)
   (setq *window-system-color-theme* 'color-theme-sanityinc-dark)
   (reapply-color-themes))

 (set-variable 'color-theme-is-global nil)
 (add-hook 'after-make-frame-functions 'apply-best-color-theme-for-frame-type)
 (apply-best-color-theme-for-frame-type (selected-frame))


(provide 'init-themes)
