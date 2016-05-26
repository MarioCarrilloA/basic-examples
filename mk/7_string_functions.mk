F_WCARD := $(wildcard src/*.c)
F_SUBST := $(subst a,A,$(F_WCARD))
F_PSUBT := $(patsubst %.c,%.o,$(F_WCARD))
NESTEDF := $(patsubst %.c,%.o,$(wildcard src/*.c))
F_FINDS := $(findstring main.c,$(F_WCARD))
F_FILTR := $(filter-out src/main.c,$(F_WCARD))
F_LWORD := $(lastword $(F_WCARD))

include ./aux.mk

showvars:
	@echo "wildcard function: $(F_WCARD)"
	@echo "subst function: $(F_SUBST)"
	@echo "patsubst function: $(F_PSUBT)"
	@echo "nested functions: $(NESTEDF)"
	@echo "findstring function: $(F_FINDS)"
	@echo "filter function: $(F_FILTR)"
	@echo "lastword function: $(F_LWORD)"

ifeq ($(F_FINDS),main.c)
	@echo "Equal strings"
else
	@echo "Different strings"
endif

ifneq ($(F_FINDS),main.c)
	@echo "Different strings"
else
	@echo "Equal strings"
endif
