# Description

wrappers for [highlight.el](https://www.emacswiki.org/emacs/highlight.el)

# Installation

put [highlight.el](https://www.emacswiki.org/emacs/highlight.el) in ~/.emacs.d/packages/hightlight/

put [eyedropper.el](https://www.emacswiki.org/emacs/eyedropper.el) in ~/.emacs.d/packages/eyedropper/

put [facemenu+.el](https://www.emacswiki.org/emacs/facemenu+.el) in ~/.emacs.d/packages/facemenu/

put [hexrgb.el](https://www.emacswiki.org/emacs/hexrgb.el) in ~/.emacs.d/packages/hexrgb/

then

```bash
git clone git@github.com:DrAtomic/hl-wrapper.git ~/.emacs.d/packages/

```
now add to your ~/.emacs.d/init.el

```emacs-lisp
(add-to-list 'load-path "~/.emacs.d/packages/highlight")
(add-to-list 'load-path "~/.emacs.d/packages/facemenu")
(add-to-list 'load-path "~/.emacs.d/packages/eyedropper")
(add-to-list 'load-path "~/.emacs.d/packages/hexrgb")
(add-to-list 'load-path "~/.emacs.d/packages/hl-wrapper")

(require 'facemenu+)
(require 'highlight)
(require 'hl-wrapper)
(global-set-key (kbd "C-c h b") 'hl-wrapper-highlight-region-blue)
(global-set-key (kbd "C-c h r") 'hl-wrapper-highlight-region-red)
(global-set-key (kbd "C-c h y") 'hl-wrapper-highlight-region-yellow)
(global-set-key (kbd "C-c h g") 'hl-wrapper-highlight-region-green)
(global-set-key (kbd "C-c h u") 'hl-wrapper-unhighlight-region)
```
