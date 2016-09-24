;; Layers definition
(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-configuration-layers '(auto-completion
                                       version-control
                                       git
                                       ranger
                                       shell
                                       markdown
                                       dockerfile
                                       react
                                       emacs-lisp)
   )
  )

(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-editing-style 'vim
   dotspacemacs-themes '(wombat)
   dotspacemacs-default-font '("Iosevka" :size 22)
   dotspacemacs-fullscreen-at-startup t
   dotspacemacs-line-numbers 'relative
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-command-key ":"
   )
  )

(defun dotspacemacs/user-config ()
  (setq powerline-default-separator 'arrow)
  (setq git-gutter-fr+-side 'left-fringe)
  (spaceline-compile)
  )

;; custom emacs variables
