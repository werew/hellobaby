
ifndef MODULES
$(error MODULES is not set)
endif

NB_MODULES = $(words $(MODULES))

ENTP_LIST = $(shell echo $(addprefix launch_, $(MODULES)) \
				  | tr '/ ' '_,')


build: includes.h
	@echo "Build core"
	@echo "NB_MODULES --------> $(NB_MODULES)"
	@echo "ENTP_LIST --------> $(ENTP_LIST)"
	gcc -c main.c -D NB_MODULES="$(NB_MODULES)" \
			  	  -D ENTP_LIST="$(ENTP_LIST)"   \
				  -I ".." -I "."
			 


includes.h: 
	touch includes.h	


