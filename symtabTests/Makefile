CC=g++
CFLAGS=-Wall -g

######################################
default: symtabMutator test_lookup_var

symtabMutator.o: symtabMutator.C
	$(CC) -c $(CFLAGS) -I$(DYNINST_INCLUDE) -I/home/xi/dyninst/common/h symtabMutator.C -std=c++0x

symtabMutator: symtabMutator.o
	$(CC) symtabMutator.o -L$(DYNINST_LIB) -lsymtabAPI -o symtabMutator -std=c++0x

test_lookup_var.o: test_lookup_var.C
	$(CC) -c $(CFLAGS) -I$(DYNINST_INCLUDE) -I/home/xi/dyninst/common/h test_lookup_var.C -std=c++0x

test_lookup_var: test_lookup_var.o
	$(CC) test_lookup_var.o -L$(DYNINST_LIB) -lsymtabAPI -o test_lookup_var -std=c++0x


##############################################
mutatee: symtabMutatee test_lookup_var_mutatee

symtabMutatee: symtabMutatee.C
	$(CC) -o symtabMutatee symtabMutatee.C

test_lookup_var_mutatee: test_lookup_var_mutatee.C
	$(CC) -o $@ $^

######
clean:
	rm *.o
	rm $(default) $(mutatee)
