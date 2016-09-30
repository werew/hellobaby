
ifndef MODULES
	$(error MODULES is not set)
endif


NB_MODULES = $(words $(MODULES))
ENTP_LIST  = $(subst /,_,$(MODULES:%=launch_%,))


build: $(OBJECTS)


$(OBJDIR)/%.o: $(SRCDIR)/%.c $(INCDIR)/includes.h
	@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -D NB_MODULES="$(NB_MODULES)" \
			  	    -D ENTP_LIST="$(ENTP_LIST)"   \
				    -I "$(INCDIR)" -c $< -o $@

.PHONY: include/includes.h
include/includes.h:
	@echo "$(MODULES)" | tr ' ' '\n' | \
	sed 's~\([^/]*\)/\([^/]*\)~#include "../../\1/\2/include/\2.h"~' \
	> $@


