#!/bin/bash

ang++ -std=c++17 -o rotating_cube main.cpp \                                                                                                       ─╯
-I/opt/homebrew/Cellar/glfw/3.4/include \
-L/opt/homebrew/Cellar/glfw/3.4/lib \
-lglfw -framework OpenGL -DGL_SILENCE_DEPRECATION

./rotating_cube
