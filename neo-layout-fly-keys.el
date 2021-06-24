;;; neo-layout-fly-keys.el ---- A Neo2 keyboard layout configuration for Xah Lee's Fly Keys -*- lexical-binding: t; -*-

;; Copyright © 2021, by Siegmar Mantei

;; Author: Siegmar Mantei
;; Version: 0.0.1
;; Created: 22 March 2021
;; Package-Requires: ((emacs "24.1"))
;; Keywords: convenience, emulations, vim, ergoemacs, configuration
;; License: GPL v3

;;; Commentary:

;; see some doc http://ergoemacs.org/misc/xah-fly-keys_customization.html
;; This is a configuration for xah-fly-keys package and adapted to neo2 keyboard layout.

;;; Code:
(setq xah-fly-use-control-key nil)
(require 'xah-fly-keys)

;; (eval-after-load 'avy '(require 'avy))
;; (eval-after-load 'multiple-cursors '(require 'multiple-cursors))
;; (eval-after-load 'expand-region '(require 'expand-region))

(defun neo2/insert-mode ()
  (interactive)
  (xah-fly-insert-mode-activate)
  (insert last-input-event))

;;;###autoload
(defun neo2/flykeys-on ()
  "Switch xah-fly-keys on with neo2 settings."
  (interactive)
  (xah-fly-keys-set-layout 'neo2)
  (xah-fly-keys 1)

  (define-key xah-fly-command-map (kbd "1") 'xah-extend-selection)
  (define-key xah-fly-command-map (kbd "2") 'xah-select-line)
  (define-key xah-fly-command-map (kbd "3") 'delete-other-windows)
  (define-key xah-fly-command-map (kbd "4") 'split-window-below)
  (define-key xah-fly-command-map (kbd "5") 'delete-char)
  (define-key xah-fly-command-map (kbd "6") 'xah-select-block)
  (define-key xah-fly-command-map (kbd "7") 'xah-select-line)
  (define-key xah-fly-command-map (kbd "8") 'xah-extend-selection)
  (define-key xah-fly-command-map (kbd "9") 'xah-select-text-in-quote)
  (define-key xah-fly-command-map (kbd "0") 'xah-pop-local-mark-ring)

  (define-key xah-fly-command-map (kbd "DEL") 'backward-delete-char-untabify)

  (define-key xah-fly-command-map (kbd "x") 'xah-reformat-lines)
  (define-key xah-fly-command-map (kbd "v") 'xah-backward-kill-word)
  (define-key xah-fly-command-map (kbd "l") 'xah-beginning-of-line-or-block)
  (define-key xah-fly-command-map (kbd "c") 'xah-kill-word)
  (define-key xah-fly-command-map (kbd "w") 'xah-delete-current-text-block)
  (define-key xah-fly-command-map (kbd "k") 'xah-toggle-letter-case)
  (define-key xah-fly-command-map (kbd "h") 'er/contract-region) ;
  (define-key xah-fly-command-map (kbd "g") 'set-mark-command)
  (define-key xah-fly-command-map (kbd "f") 'er/expand-region)
  (define-key xah-fly-command-map (kbd "q") 'mc/mark-previous-like-this)
  (define-key xah-fly-command-map (kbd "ß") 'hippie-expand)

  (define-key xah-fly-command-map (kbd "u") 'xah-fly-M-x)
  (define-key xah-fly-command-map (kbd "i") 'backward-word)
  (define-key xah-fly-command-map (kbd "a") 'xah-end-of-line-or-block)
  (define-key xah-fly-command-map (kbd "e") 'forward-word)
  (define-key xah-fly-command-map (kbd "o") 'open-line)
  (define-key xah-fly-command-map (kbd "s") 'avy-goto-char-2)
  (define-key xah-fly-command-map (kbd "n") 'xah-backward-left-bracket)
  (define-key xah-fly-command-map (kbd "r") 'xah-fly-insert-mode-activate)
  (define-key xah-fly-command-map (kbd "t") 'xah-forward-right-bracket)
  (define-key xah-fly-command-map (kbd "d") 'mc/mark-next-like-this)
  (define-key xah-fly-command-map (kbd "y") 'xah-cycle-hyphen-underscore-space)

  (define-key xah-fly-command-map (kbd "ü") 'xah-comment-dwim)
  (define-key xah-fly-command-map (kbd "ö") 'xah-cut-line-or-region)
  (define-key xah-fly-command-map (kbd "ä") 'xah-copy-line-or-region)
  (define-key xah-fly-command-map (kbd "p") 'xah-paste-or-paste-previous)
  (define-key xah-fly-command-map (kbd "z") 'undo)
  (define-key xah-fly-command-map (kbd "b") 'isearch-forward)
  (define-key xah-fly-command-map (kbd "m") 'xah-shrink-whitespaces)
  (define-key xah-fly-command-map (kbd ",")  'xah-next-window-or-frame)
  (define-key xah-fly-command-map (kbd ".")  'xah-insert-space-before)
  (define-key xah-fly-command-map (kbd "j") 'xah-goto-matching-bracket)

  (define-key xah-fly-command-map (kbd "§") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "§") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "ℓ") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "»") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "«") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "$") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "€") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "„") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "“") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "”") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "—") 'neo2/insert-mode)

  (define-key xah-fly-command-map (kbd "X") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "V") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "L") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "C") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "W") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "K") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "H") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "G") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "F") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "Q") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "ẞ") 'neo2/insert-mode)

  (define-key xah-fly-command-map (kbd "U") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "I") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "A") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "E") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "O") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "S") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "N") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "R") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "T") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "D") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "Y") 'neo2/insert-mode)

  (define-key xah-fly-command-map (kbd "Ü") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "Ö") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "Ä") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "P") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "Z") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "B") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "M") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "–") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "•") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "J") 'neo2/insert-mode)

  (define-key xah-fly-command-map (kbd "¹") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "²") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "³") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "›") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "›") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "‹") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "¢") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "¥") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "‚") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "‘") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "’") 'neo2/insert-mode)

  (define-key xah-fly-command-map (kbd "_") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "_") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "[") 'xah-backward-punct)
  (define-key xah-fly-command-map (kbd "]") 'xah-forward-punct)
  (define-key xah-fly-command-map (kbd "^") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "!") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "<") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd ">") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "=") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "&") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "ſ") 'neo2/insert-mode)

  (define-key xah-fly-command-map (kbd "\\") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "/") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "{") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "}") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "*") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "?") 'beginning-of-buffer)
  (define-key xah-fly-command-map (kbd "(") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd ")") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "-") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd ":") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "@") 'neo2/insert-mode)

  (define-key xah-fly-command-map (kbd "#") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "$") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "|") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "~") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "`") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "+") 'end-of-buffer)
  (define-key xah-fly-command-map (kbd "%") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd "\"") 'other-frame)
  (define-key xah-fly-command-map (kbd "'") 'neo2/insert-mode)
  (define-key xah-fly-command-map (kbd ";") 'neo2/insert-mode))

;;;###autoload
(provide 'neo-layout-fly-keys)
;;; neo-layout-fly-keys.el ends here
