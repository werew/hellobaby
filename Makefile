

include config.mk




build: $(MODULES) core



.PHONY: $(MODULES) core

$(MODULES): 
	@echo '---> Making module "$@"'
	cd $@; $(MAKE) build


core:
	@echo '---> Making "core"'
	cd $@; $(MAKE) build MODULES="$(MODULES)"


