`badwolf-emacs`
===============

An Emacs port of [Bad Wolf](https://github.com/sjl/badwolf)
theme for Vim.

Installation
------------

### MELPA

Add [MELPA](https://melpa.org/#/getting-started) to `package-archives`
list in your init file:

```
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
```

Install package with:

```
M-x package-install RET badwolf-theme RET
```

### Manual installation

Drop `badwolf-theme.el` file in directory you specified on
`custom-theme-load-path` in your init file, for example:

```
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
```

Usage
-----

Load theme on Emacs startup using `load-theme` in your init file:

```
(load-theme 'badwolf t)
```

or interactively:

```
M-x load-theme RET badwolf RET
```

Screenshots
-----------

### Ruby

![Ruby](screenshots/ruby.png)

### Clojurescript

![Clojurescript](screenshots/cljs.png)

Contributing
------------

Feel free to open issue or send pull request if you want your
favourite mode supported.

I would like to keep this theme as similar as possible to original Vim
theme, so please keep that in mind when submitting your changes.
