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

(require 'xah-fly-keys)
(eval-after-load 'avy '(require 'avy))
(eval-after-load 'multiple-cursors '(require 'multiple-cursors))
(eval-after-load 'expand-region '(require 'expand-region))

(defvar xah--dvorak-to-neo2-kmap
  '(("." . "l") ; e
    ("," . "v") ; w
    ("'" . "x") ; q
    (";" . "ü") ; y
    ("/" . "ß") ; ü
    ("[" . "-") ; - ; ß
    ("]" . "]") ; diacritic glyph ` ; ´
    ("=" . "=") ; diacritic glyph ´ ; +
    ("-" . "y") ; ä
    ("a" . "u") ; a
    ("b" . "b") ; n
    ("c" . "g") ; i
    ("d" . "s") ; h
    ("e" . "a") ; d
    ("f" . "k") ; z
    ("g" . "h") ; u
    ("h" . "n") ; j
    ("i" . "o") ; g
    ("j" . "ä") ; c
    ("k" . "p") ; v
    ("l" . "q") ; p
    ("m" . "m") ; m
    ("n" . "t") ; l
    ("o" . "i") ; s
    ("p" . "c") ; r
    ("q" . "ö") ; x
    ("r" . "f") ; o
    ("s" . "d") ; ö
    ("t" . "r") ; k
    ("u" . "e") ; f
    ("v" . ".") ; .
    ("w" . ",") ; ,
    ("x" . "z") ; b
    ("y" . "w") ; t
    ("z" . "j")) ; -
  "A alist, each element is of the form(\"e\" . \"d\"). First char is Dvorak, second is corresponding NEO2. Not all chars are in the list, such as digits. When not in this alist, they are assumed to be the same.")



;;;###autoload
(defun neo2/flykeys-on ()
  "Switch xah-fly-keys on with neo2 settings."
  (interactive)
  (xah-fly-keys-set-layout 'neo2)
  (xah-fly-keys 1)

  (define-key xah-fly-key-map (kbd "1") 'xah-extend-selection)
  (define-key xah-fly-key-map (kbd "2") 'xah-select-line)
  (define-key xah-fly-key-map (kbd "3") 'delete-other-windows)
  (define-key xah-fly-key-map (kbd "4") 'split-window-below)
  (define-key xah-fly-key-map (kbd "5") 'delete-char)
  (define-key xah-fly-key-map (kbd "6") 'xah-select-block)
  (define-key xah-fly-key-map (kbd "7") 'xah-select-line)
  (define-key xah-fly-key-map (kbd "8") 'xah-extend-selection)
  (define-key xah-fly-key-map (kbd "9") 'xah-select-text-in-quote)
  (define-key xah-fly-key-map (kbd "0") 'xah-pop-local-mark-ring)

  (define-key xah-fly-key-map (kbd "DEL") 'backward-delete-char-untabify)

  (define-key xah-fly-key-map (kbd "[") 'xah-backward-punct) ; M3 + l
  (define-key xah-fly-key-map (kbd "]") 'xah-forward-punct) ; M3 + c
  (define-key xah-fly-key-map (kbd "\"") 'other-frame) ; M3 + ,

  (define-key xah-fly-key-map (kbd "x") 'xah-reformat-lines)
  (define-key xah-fly-key-map (kbd "v") 'xah-backward-kill-word)
  (define-key xah-fly-key-map (kbd "l") 'xah-beginning-of-line-or-block)
  (define-key xah-fly-key-map (kbd "c") 'xah-kill-word)
  (define-key xah-fly-key-map (kbd "w") 'xah-delete-current-text-block)
  (define-key xah-fly-key-map (kbd "k") 'xah-toggle-letter-case)
  (define-key xah-fly-key-map (kbd "h") 'er/contract-region) ;
  (define-key xah-fly-key-map (kbd "g") 'set-mark-command)
  (define-key xah-fly-key-map (kbd "f") 'er/expand-region)
  (define-key xah-fly-key-map (kbd "q") 'mc/mark-previous-like-this)
  (define-key xah-fly-key-map (kbd "ß") 'hippie-expand)

  (define-key xah-fly-key-map (kbd "u") 'xah-fly-M-x)
  (define-key xah-fly-key-map (kbd "i") 'backward-word)
  (define-key xah-fly-key-map (kbd "a") 'xah-end-of-line-or-block)
  (define-key xah-fly-key-map (kbd "e") 'forward-word)
  (define-key xah-fly-key-map (kbd "o") 'open-line)
  (define-key xah-fly-key-map (kbd "s") 'avy-goto-char-2)
  (define-key xah-fly-key-map (kbd "n") 'xah-backward-left-bracket)
  (define-key xah-fly-key-map (kbd "r") 'xah-fly-insert-mode-activate)
  (define-key xah-fly-key-map (kbd "t") 'xah-forward-right-bracket)
  (define-key xah-fly-key-map (kbd "d") 'mc/mark-next-like-this)
  (define-key xah-fly-key-map (kbd "y") 'xah-cycle-hyphen-underscore-space)

  (define-key xah-fly-key-map (kbd "ü") 'xah-comment-dwim)
  (define-key xah-fly-key-map (kbd "ö") 'xah-cut-line-or-region)
  (define-key xah-fly-key-map (kbd "ä") 'xah-copy-line-or-region)
  (define-key xah-fly-key-map (kbd "p") 'xah-paste-or-paste-previous)
  (define-key xah-fly-key-map (kbd "z") 'undo)
  (define-key xah-fly-key-map (kbd "b") 'isearch-forward)
  (define-key xah-fly-key-map (kbd "m") 'xah-shrink-whitespaces)
  (define-key xah-fly-key-map (kbd ",")  'xah-next-window-or-frame)
  (define-key xah-fly-key-map (kbd ".")  'xah-insert-space-before)
  (define-key xah-fly-key-map (kbd "j") 'xah-goto-matching-bracket))

;;;###autoload
(defun neo2/flykeys-off ()
  "Simply turn off xah-fly-keys."
  (interactive)
  (xah-fly-keys-off))

(provide 'neo-layout-fly-keys)

;;; neo-layout-fly-keys.el ends here
