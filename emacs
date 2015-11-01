(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wheatgrass)))
 '(custom-safe-themes (quote ("0f2411f632019ef9fb71a14a84eaaf00407feba56ae1f6840f7915beecbe1a40" "54e437ebedac98418d42a6dc87390f25b1448f2807272915616b7889bb3edad7" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq inhibit-startup-message t)
;; basic configs
(setq column-number-mode t)
(global-set-key [(control h)] 'delete-backward-char)
(setq standard-indent 2)
(local-set-key [tab] 'tab-to-tab-stop)

;; below this is paragraph is where we add any and 
;; all package repositories

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))


;;screen appearance settings

;;python autocomplete hook for jedi
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)



(put 'upcase-region 'disabled nil)


;; org mode hooks
(add-hook 'org-mode-hook 
          (lambda ()
            (local-set-key "\M-n" 'outline-next-visible-heading)
            (local-set-key "\M-p" 'outline-previous-visible-heading)
            ;; table
            (local-set-key "\C-\M-w" 'org-table-copy-region)
            (local-set-key "\C-\M-y" 'org-table-paste-rectangle)
            (local-set-key "\C-\M-l" 'org-table-sort-lines)
            ;; display images
            (local-set-key "\M-I" 'org-toggle-iimage-in-org)
            ;; fix tab
            (local-set-key "\C-y" 'yank)))



;; Setting up matlab-mode
(defcustom matlab-fill-code t
  "*If true, `auto-fill-mode' causes code lines to be automatically continued."
  :group 'matlab
  :type 'boolean)


;; custom functions

(defun yay()
  "insert yay"
(interactive)
(insert "yay"))


(defun multi-enlarge-horizontal (number)
  "enlarges the current window by a number of times"

  (interactive "nEnter a number factor to enlarge screen")
  (enlarge-window-horizontally number))
  ;; (setq ((x 0)))
  ;; (while (< x number )
  ;;   ;;(enlarge-window-horizontally
  ;;   (message "test")
  ;;   (setq number (- number 1))) )
