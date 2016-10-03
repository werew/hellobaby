
include ../../config/Makefile.common

CFLAGS += -I $(INCLUDES)

build: $(MODOUT)

$(MODOUT): $(SOURCES)
	mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c $? -o $@




