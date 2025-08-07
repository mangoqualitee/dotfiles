;;; -*- lexical-binding: t -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(mqual-blue))
 '(custom-safe-themes
   '("4cc9792d6e9fb067124620e579d70e38090a46eea8586d871deafcc1db555450"
     "296da7c17c698e963c79b985c6822db0b627f51474c161d82853d2cb1b90afb0"
     "6af2d8e45219854a7249fb6db7c69e78293f755c9b3db508d567d06c9a5ce3f2"
     "d34219ec49bcd68531dc890fd5c7ff1f189754e192164748444c73ba5d6689f2"
     "6d58981b6b03393aaecd39ac155550784386b8029b9a4cb9c846a0922dd1bdbc"
     "aab41c16702a6e73682033f7bea23eb7dddb2341fc13319a407b35c7bb5242ab"
     "26bd74f80bb7a869de3bf5521a227329cf34cfe2cd2446e421a7f5832e899b1e"
     "3c6bd0ca16d4355d34c57e328fda29dbe69d91f260306662aa9c30cc08744e36"
     "b083003136be1357fbccee1ebcfb5e67a3dbb5e9885ba899ec02f90f934b41fb"
     "677166328993bc1cd3b666a188048b994ac3515d47afd1a0b9d00cf09b50097d"
     "7b8f41f6a624837f61b5569cedff73ca63e21825c2f9dac45135d91b879f14c7"
     "aba048fd583c7b666b0d825cba828f6908ac3c1c375135fcca4ee8daeffe45a4"
     "621df052bdaf701a8a6c9053f51efe551b8131b3e3575e522248720623573f84"
     "45333f79e4a7fdeff9924d5b6658f84fb468ef38f749455e5b58ba4154782007"
     "1711947b59ea934e396f616b81f8be8ab98e7d57ecab649a97632339db3a3d19"
     "e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7"
     default))
 '(display-line-numbers 'relative)
 '(ido-everywhere t)
 '(ido-mode 'both nil (ido))
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(package-selected-packages '(meow quarto-mode smex))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
