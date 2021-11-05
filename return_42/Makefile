# variables

PROJ		= fourtytwo
ENTRY 		= _start
DYLD_LD_FLAGS 	= -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path`
LDFLAGS		= -e $(ENTRY) $(DYLD_LD_FLAGS) -arch arm64

# main target
$(PROJ): $(PROJ).o
	ld $(LDFLAGS) -o $(PROJ) $(PROJ).o

$(PROJ).o: clean $(PROJ).s
	as -o $(PROJ).o $(PROJ).s

basic: basic_$(PROJ).o
	ld $(LDFLAGS) -o basic_$(PROJ) basic_$(PROJ).o

basic_$(PROJ).o: clean basic_$(PROJ).s
	as -o basic_$(PROJ).o basic_$(PROJ).s


# cleanup target
.PHONY: clean
clean:
	rm -f *.o $(PROJ) basic_$(PROJ)
