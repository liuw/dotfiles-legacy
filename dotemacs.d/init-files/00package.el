(require 'package)

(add-to-list 'package-archives
	'("marmalade" .
	  "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
	'("melpa" .
	  "http://melpa.org/packages/"))
(package-initialize)
