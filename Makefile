
# User configurations
include config.mk


export CC       = gcc
export CFLAGS   = -Wall -Wextra
export OBJDIR   = obj
export INCDIR   = include
export SRCDIR   = src
export INCLUDES = $(abspath core/include)

# This variables will expand automatically
export SOURCES := $$(wildcard $$(SRCDIR)/*.c)
export OBJECTS := $$(SOURCES:$$(SRCDIR)/%.c=$$(OBJDIR)/%.o)



build: modules core

modules: $(MODULES)

.PHONY: $(MODULES) core

$(MODULES): 
	@echo '---> Making module "$@"'
	$(MAKE) build -C $@


core:
	@echo '---> Making "core"'
	$(MAKE) build -C $@ MODULES="$(MODULES)"


