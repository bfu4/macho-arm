PROJ	= hello_world

hello_world: $(PROJ).o
	ld -o $(PROJ) $(PROJ).o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64

$(PROJ).o: clean $(PROJ).s
	as -fpic -o $(PROJ).o $(PROJ).s

.PHONY: clean
clean:
	rm -f *.o $(PROJ)
