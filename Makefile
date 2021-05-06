OBJS = $(patsubst src/%.cpp,%.o,$(wildcard src/*.cpp))
%.o: src/%.cpp
	g++ -c -o $@ $<

libcgl.a: $(OBJS)
	ar rcs $@ $(OBJS)