;; Spacemacs variables config
(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-editing-style 'vim
   dotspacemacs-themes '(spacemacs-dark)
   dotspacemacs-default-font '("Iosevka" :size 20)
   dotspacemacs-fullscreen-at-startup t
   dotspacemacs-line-numbers 'relative
   )
  )

;; Layers definition
(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-configuration-layers '(auto-completion git ranger shell markdown dockerfile react emacs-lisp)
   )
  )
