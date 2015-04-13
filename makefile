CC = g++

OPTM = -O3
PROG = mtc

all: $(PROG)

$(PROG): main.cpp detect_disconnected_components.cpp mini_spanning_tree.cpp mtc.cpp random_spanning_tree.cpp shortest_path_tree.cpp split.cpp read_data.cpp mtc.h
	$(CC) $(OPTM)  main.cpp detect_disconnected_components.cpp mtc.cpp mini_spanning_tree.cpp random_spanning_tree.cpp shortest_path_tree.cpp split.cpp read_data.cpp -o $(PROG)
