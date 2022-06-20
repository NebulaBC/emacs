(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(load-theme 'doom-challenger-deep t)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(evil-mode 1)
(electric-pair-mode 1)
(projectile-mode +1)

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(global-set-key (kbd "C-c o p") 'treemacs)
(setq electric-pair-preserve-balance nil)
(setq evil-want-keybinding nil)
(setq use-package-always-ensure t)

(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-banner-logo-title "Welcome neb!")
(setq dashboard-startup-banner "~/dox/pics/emacs.png")
(setq dashboard-items '((recents  . 5)
                        (projects . 5)))
(setq dashboard-center-content t)
(setq dashboard-show-shortcuts nil)

(require 'doom-modeline)
(doom-modeline-mode 1)

(use-package vertico
  :init
  (vertico-mode))

;; Install java

(use-package projectile)
(use-package flycheck)
(use-package yasnippet :config (yas-global-mode))
(use-package lsp-mode :hook ((lsp-mode . lsp-enable-which-key-integration))
  :config (setq lsp-completion-enable-additional-text-edit nil))
(use-package hydra)
(use-package company)
(use-package which-key :config (which-key-mode))
(require 'lsp-java)
(add-hook 'java-mode-hook #'lsp)
(use-package dap-java :ensure nil)
(use-package helm-lsp)
(use-package lsp-treemacs)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(treemacs-all-the-icons treemacs-icons-dired treemacs-projectile treemacs-magit treemacs-evil all-the-icons dap-mode lsp-ui yasnippet which-key vertico use-package solaire-mode shackle projectile popwin orderless magit helm-lsp flycheck evil-collection doom-themes doom-modeline dashboard corfu company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
