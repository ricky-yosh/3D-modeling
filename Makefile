CXX = clang++
CXXFLAGS = -std=c++17
LDFLAGS = -lglfw -framework OpenGL
TARGET = rotating_cube
SRC = main.cpp
WASM_TARGET = rotating_cube.html

wasm:
	# Ensure the docs directory exists
	mkdir -p docs
	
	# Compile C++ to WebAssembly and output to docs/
	emcc main.cpp glad/src/glad.c -o docs/$(WASM_TARGET) -s USE_GLFW=3 -s USE_WEBGL2=1 -Iglad/include

all:
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRC) $(LDFLAGS)

run: all
	./$(TARGET)

clean:
	rm -f $(TARGET) $(WASM_TARGET)
