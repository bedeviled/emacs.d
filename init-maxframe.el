(require 'maxframe)
(when *is-cocoa-emacs*
  (fset 'maximize-frame 'x-maximize-frame)
  (fset 'restore-frame 'x-restore-frame))

(defmacro with-selected-frame (frame &rest forms)
  (let ((prev-frame (gensym)))
    `(progn
       (let ((,prev-frame (selected-frame)))
         (select-frame (or ,frame (selected-frame)))
         (unwind-protect
             (progn ,@forms)
           (select-frame ,prev-frame))))))

(defun maybe-maximize-frame (&optional frame)
  (with-selected-frame frame
    (if window-system (maximize-frame))))

(add-hook 'after-make-frame-functions 'maybe-maximize-frame)
(add-hook 'after-init-hook 'maybe-maximize-frame)

(defun maximized-p (&optional frame)
  (or (not (with-selected-frame frame window-system))
      (and (<= (abs (- (mf-max-display-pixel-width) (frame-pixel-width frame))) (frame-char-width frame))
           (<= (abs (- (mf-max-display-pixel-height) (+ mf-display-padding-height (frame-pixel-height frame)))) (+ 5 (frame-char-height frame))))))


(provide 'init-maxframe)
