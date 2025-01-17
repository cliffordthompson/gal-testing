GALASM = galasm
GALASM_FLAGS = -c -f -p -v
MINIPRO = minipro
MINIPRO_FLAGS = -p GAL20V8

test-gal20v8:
	$(GALASM) $(GALASM_FLAGS) $@.pld
	$(MINIPRO) $(MINIPRO_FLAGS) -w $@.jed
	$(MINIPRO) $(MINIPRO_FLAGS) -m $@.jed

clean :
	-rm *.jed *.chp *.fus *.pin
