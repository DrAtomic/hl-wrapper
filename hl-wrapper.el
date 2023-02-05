;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; simple wrappers around hlt-highlight
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'highlight)

(defgroup hl-wrapper-faces nil
  "Faces used by highlighing"
  :group 'hl-wrapper
  :group 'faces)

;; from magit
(defface hl-wrapper-red
  `((((class color) (background light))
     ,@(and (>= emacs-major-version 27) '(:extend t))
     :background "#eecccc"
     :foreground "#aa2222")
    (((class color) (background dark))
     ,@(and (>= emacs-major-version 27) '(:extend t))
     :background "#663333"
     :foreground "#eecccc"))
  "Face for red"
  :group 'hl-wrapper)

;; from magit
(defface hl-wrapper-green
  `((((class color) (background light))
     ,@(and (>= emacs-major-version 27) '(:extend t))
     :background "#cceecc"
     :foreground "#22aa22")
    (((class color) (background dark))
     ,@(and (>= emacs-major-version 27) '(:extend t))
     :background "#336633"
     :foreground "#cceecc"))
  "Face for green"
  :group 'hl-wrapper)

(defface hl-wrapper-yellow
  `((((class color) (background light))
     ,@(and (>= emacs-major-version 27) '(:extend t))
     :background "#f7ffbc"
     :foreground "#e5de00")
    (((class color) (background dark))
     ,@(and (>= emacs-major-version 27) '(:extend t))
     :background "#e6cc00"
     :foreground "#f7ffbc"))
  "Face for yellow"
  :group 'hl-wrapper)

(defface hl-wrapper-blue
  `((((class color) (background light))
     ,@(and (>= emacs-major-version 27) '(:extend t))
     :background "#d0efff"
     :foreground "#187bcd")
    (((class color) (background dark))
     ,@(and (>= emacs-major-version 27) '(:extend t))
     :background "#1167b1"
     :foreground "#d0efff"))
  "Face for-blue"
  :group 'hl-wrapper)

;;;###autoload
(defun hl-wrapper-highlight-region-blue ()
  (interactive)
  (setq hlt-last-face 'hl-wrapper-blue)
  (hlt-highlight-region))

;;;###autoload
(defun hl-wrapper-highlight-region-red ()
  (interactive)
  (setq hlt-last-face 'hl-wrapper-red)
  (hlt-highlight-region))

;;;###autoload
(defun hl-wrapper-highlight-region-yellow ()
  (interactive)
  (setq hlt-last-face 'hl-wrapper-yellow)
  (hlt-highlight-region))

;;;###autoload
(defun hl-wrapper-highlight-region-green ()
  (interactive)
  (setq hlt-last-face 'hl-wrapper-green)
  (hlt-highlight-region))

;;;###autoload
(defun hl-wrapper-unhighlight-region ()
  (interactive)
  (hlt-unhighlight-region))

(provide 'hl-wrapper)
