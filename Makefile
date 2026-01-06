MAKEFILE := $(abspath $(lastword $(MAKEFILE_LIST)))
DOTFILES := $(abspath $(dir $(MAKEFILE)))

# ~    -> ~/ == $(HOME)
# $(~) -> ./home
~ := $(abspath $(DOTFILES)/home)

force:
define rule.template
$(1)/%: $(2)/% force
	mkdir -p $$(@D)
	ln -snf $$< $$@
endef

# symlink: ~/% -> ./home/%
rule.define = $(eval $(call rule.template,$(1),$(2)))
$(call rule.define,~,$(~))

all += fish
fish: ~/.config/fish/config.fish

all += ghostty
ghostty: ~/.config/ghostty/config

all += helix
helix: ~/.config/helix/config.toml

all += jj
jj: ~/.config/jj/config.toml

all += nvim
nvim: ~/.config/nvim

all += yazi
yazi: ~/.config/yazi/yazi.toml
yazi: ~/.config/yazi/theme.toml

all += zed
zed: ~/.config/zed/settings.json

all += zellij
zellij: ~/.config/zellij/config.kdl

all += emacs
emacs: ~/.emacs.d/init.el

all += git
git: ~/.gitconfig

all: $(all)
.PHONY: all $(all)
.DEFAULT_GOAL := all
