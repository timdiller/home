(add-to-list 'load-path "~/.emacs-lisp/")
;; my own mods
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'latex-mode-hook 'turn-on-auto-fill)

(require 'enaml)
(setq auto-mode-alist (cons '("\\.enaml$" . enaml-mode) auto-mode-alist))

;; following code block enables use of pep8 and pylint
;; invoke them with 'M-x pylint' or 'M-x pep8'
(require 'tramp)
(require 'compile)

(autoload 'python-pylint "python-pylint")
(autoload 'pylint "python-pylint")
(load "python-pylint")

(autoload 'python-pep8 "python-pep8")
(autoload 'pep8 "python-pep8")
(load "python-pep8")

;; this block is from O'Reilly Learning GNU emacs
(defun count-words-buffer ()
  "Count the number of words in the buffer and report to the minibuffer."
  (interactive)
  (save-excursion
    (let ((count 0))
      (goto-char (point-min))
      (while (< (point) (point-max))
	(forward-word 1)
	(setq count (1+ count)))
      (message "Buffer contains %d words." count))))
(global-set-key "\C-cw" 'count-words-buffer)

;; from http://lists.ipython.scipy.org/pipermail/ipython-user/2008-September/005791.html
(require 'comint)
(define-key comint-mode-map [(meta p)]
   'comint-previous-matching-input-from-input)
(define-key comint-mode-map [(meta n)]
   'comint-next-matching-input-from-input)
(define-key comint-mode-map [(control meta n)]
    'comint-next-input)
(define-key comint-mode-map [(control meta p)]
    'comint-previous-input)

(setq comint-completion-autolist t	;list possibilities on partial
					;completion
       comint-completion-recexact nil	;use shortest compl. if
					;characters cannot be added
       ;; how many history items are stored in comint-buffers (e.g. py-shell)
       ;; use the HISTSIZE environment variable that shells use (if avail.)
       ;; (default is 32)
       comint-input-ring-size (string-to-number (or (getenv "HISTSIZE") "100")))


(add-to-list 'interpreter-mode-alist '("python" . python-mode))
(require 'ipython)
(setq py-python-command-args '("--pylab"))
(put 'downcase-region 'disabled nil)

;; Load CEDET.
;; See cedet/common/cedet.info for configuration details.
(load-file "~/cedet-1.0/common/cedet.el")

;; Enable EDE (Project Management) features
(global-ede-mode 1)

;; Enable EDE for a pre-existing C++ project
;; (ede-cpp-root-project "NAME" :file "~/myproject/Makefile")

;; Enabling Semantic (code-parsing, smart completion) features
;; Select one of the following:

;; * This enables the database and idle reparse engines
(semantic-load-enable-minimum-features)

;; * This enables some tools useful for coding, such as summary mode
;;   imenu support, and the semantic navigator
(semantic-load-enable-code-helpers)

;; * This enables even more coding tools such as intellisense mode
;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;; (semantic-load-enable-gaudy-code-helpers)

;; * This enables the use of Exuberent ctags if you have it installed.
;;   If you use C++ templates or boost, you should NOT enable it.
;; (semantic-load-enable-all-exuberent-ctags-support)
;;   Or, use one of these two types of support.
;;   Add support for new languges only via ctags.
;; (semantic-load-enable-primary-exuberent-ctags-support)
;;   Add support for using ctags as a backup parser.
;; (semantic-load-enable-secondary-exuberent-ctags-support)

;; Enable SRecode (Template management) minor-mode.
;; (global-srecode-minor-mode 1)

;; ECB installation
(add-to-list 'load-path "/Applications/ecb-2.40")
;; (require 'ecb-autoloads)
(require 'ecb)
(custom-set-variables
 '(load-home-init-file t t))
(custom-set-faces)

;; set autofill column to 72 for docstrings and 79 for everything else
;; suggestion from stack overflow:
;; http://stackoverflow.com/questions/8823924/in-emacs-python-mode-how-do-i-set-a-different-auto-fill-width-for-docstrings-an

;; (defadvice current-fill-column (around handle-docstring activate)
;;   (flet ((docp (p) (let ((q (get-text-property p 'face))
;;                          (r 'font-lock-string-face))
;;                      (or (eq r q) (memq r q)))))
;;     (if (or (docp (point)) (docp (point-at-bol)) (docp (point-at-eol)))
;;         (setq ad-return-value 72)
;;       ad-do-it)))