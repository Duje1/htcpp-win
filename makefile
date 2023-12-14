# Makefile for http_tcpServer_win.cpp and server_win.cpp on Windows

# Compiler and compiler flags
CXX = g++
CXXFLAGS = -std=c++11 -Wall

# Source files
SRCS = http_tcpServer_win.cpp server_win.cpp

# Object files
OBJS = $(SRCS:.cpp=.o)

# Executable name
EXEC = server_win.exe

# Default target
all: clean $(EXEC)

# Rule to build the executable
$(EXEC): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^ -lws2_32

# Rule to build object files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $< -lws2_32

# Rule to clean generated files
clean:
	cmd /C del /Q $(OBJS) $(EXEC)
