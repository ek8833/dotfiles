;; パスを追加
(setq load-path (cons "~/.emacs.d/elisp" load-path))

;; ウィンドウ（フレーム）のサイズ設定する
;(setq default-frame-alist
;  '((width . 268) (height . 61) (top . 22) (left . 0)))

;; js2-mode
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; toggle fullscreen
(defun toggle-fullscreen (&optional f)
      (interactive)
      (let ((current-value (frame-parameter nil 'fullscreen)))
           (set-frame-parameter nil 'fullscreen
                                (if (equal 'fullboth current-value)
                                    (if (boundp 'old-fullscreen) old-fullscreen nil)
                                    (progn (setq old-fullscreen current-value)
                                           'fullboth)))))
    (global-set-key [f11] 'toggle-fullscreen)

;; font size
(add-to-list 'default-frame-alist
             '(font . "-apple-courier-medium-r-normal--18-180-72-72-m-180-iso10646-1"))

;; for slime
;(eval-after-load "slime"
;   '(slime-setup '(slime-fancy slime-banner)))
;(setq inferior-lisp-program "/usr/local/Cellar/sbcl/1.0.55/bin/")
;(setq slime-lisp-implementations
;      '((sbcl ("sbcl") :coding-system utf-8-unix)
;  (cmucl ("cmucl") :coding-system iso-latin-1-unix)))
;(add-to-list 'load-path "~/.emacs.d/elisp/slime")
;(add-hook 'lisp-mode-hook (lambda ()
;                            (slime-mode t)
;                            (show-paren-mode)))
;(require 'slime)
;(slime-setup)
;(global-set-key "\C-cs" 'slime-selector)

;(add-to-list 'load-path "/usr/local/Cellar/sbcl/1.0.55/bin/sbcl")
;(add-to-list 'load-path "~/.emacs.d/elisp/slime/")
;(setq inferior-lisp-program "sbcl")
;(require 'slime-autoloads)
;(slime-setup '(slime-fancy))

(setq inferior-lisp-program "/usr/local/Cellar/sbcl/1.0.55/bin/sbcl") ; your Lisp system
     (add-to-list 'load-path "~/.emacs.d/elisp/slime/")  ; your SLIME directory
     (require 'slime)
     (slime-setup)

;; command key to meta
(setq mac-command-modifier 'meta)
