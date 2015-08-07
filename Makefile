include Makefile.config

PARTITIONER = degree_sequence graph2tree merge_trees partition_tree

all: $(PARTITIONER)

clean: force
	rm -f $(PARTITIONER)
force:



DEPPATH = -Ilib -I../llama/llama/include
DEPCPP  = 
DEPH 	  = lib/defs.h lib/graph_wrapper.h lib/jdata.h lib/jnode.h lib/jtree.h \
			    lib/merge.h lib/partition.h lib/sequence.h lib/unionfind.h

degree_sequence: degree_sequence.cpp $(DEPCPP) $(DEPH) 
	$(CC) $(CXXFLAGS) $(DEPPATH) -o degree_sequence degree_sequence.cpp $(DEPCPP) $(LDFLAGS) $(LIBS)

graph2tree: graph2tree.cpp $(DEPCPP) $(DEPH) 
	$(CC) $(CXXFLAGS) $(DEPPATH) -o graph2tree graph2tree.cpp $(DEPCPP) $(LDFLAGS) $(LIBS)

merge_trees: merge_trees.cpp $(DEPCPP) $(DEPH) 
	$(CC) $(CXXFLAGS) $(DEPPATH) -o merge_trees merge_trees.cpp $(DEPCPP) $(LDFLAGS) $(LIBS)

partition_tree: partition_tree.cpp $(DEPCPP) $(DEPH) 
	$(CC) $(CXXFLAGS) $(DEPPATH) -o partition_tree partition_tree.cpp $(DEPCPP) $(LDFLAGS) $(LIBS)



