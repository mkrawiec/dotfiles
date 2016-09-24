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

;; Spacemacs variable configuration
(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-editing-style 'vim
   dotspacemacs-themes '(sanityinc-tomorrow-night)
   dotspacemacs-default-font '("Iosevka" :size 24)
   dotspacemacs-fullscreen-at-startup t
   dotspacemacs-line-numbers 'relative
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-command-key ":"
   )
  )

;; Spacemacs post-config hook
(defun dotspacemacs/user-config ()
  (setq powerline-default-separator 'arrow)
  (setq git-gutter-fr+-side 'left-fringe)
  (spaceline-compile)
  )

;; Custom emacs variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (color-theme-sanityinc-tomorrow xterm-color ws-butler window-numbering which-key web-mode web-beautify volatile-highlights vi-tilde-fringe use-package tagedit spacemacs-theme spaceline smooth-scrolling smeargle slim-mode shell-pop scss-mode sass-mode restart-emacs ranger rainbow-delimiters quelpa popwin persp-mode pcre2el paradox page-break-lines orgit open-junk-file neotree multi-term move-text mmm-mode markdown-toc magit-gitflow macrostep lorem-ipsum linum-relative leuven-theme less-css-mode json-mode js2-refactor js-doc jade-mode info+ indent-guide ido-vertical-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gitconfig-mode gitattributes-mode git-timemachine git-messenger git-gutter-fringe git-gutter-fringe+ gh-md flx-ido fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-args evil-anzu eval-sexp-fu eshell-prompt-extras esh-help emmet-mode elisp-slime-nav dockerfile-mode diff-hl define-word company-web company-tern company-statistics company-quickhelp coffee-mode clean-aindent-mode buffer-move bracketed-paste auto-yasnippet auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
