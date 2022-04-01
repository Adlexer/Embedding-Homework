# Programing

Programming and building of C/C++ language under Linux

Edited by Adlexer Xu 201930310065

## Basic

The primary target is to write a C/C++ program, compile it into an executable file with `g++`, and finally run it.

Because I am lazy again, these above operations are also completed in `code-server`.

### 1.Create a C/C++ program files(.cpp), type in the simplest code in the world

test.cpp

```c++
#include <iostream>

int main()
{
std::cout << "hello world" << std::endl;
return 0;
}
```

### 2.Compile it using g++

```bash
# g++ -g test.cpp -o test.o
```

### 3.Run

```bash
# ./test.o
```

![4-1-1](C:/Users/Adlexer/Documents/GitHub/Embedding-Homework/img/4-1-1.png)

## Advanced

`CMake` is used to build a cross-platform compilation system.

No one understands what you say, so don't say it.

### 1.Create CMakeLists.txt

```cmake
cmake_minimum_required(VERSION 3.0)

project(cmake-test)

add_library(test-lib STATIC src/test-header.cpp) 
add_executable(test test.cpp)
target_link_libraries(test test-lib)
include_directories(include)
```

### 2.Configure CMake project

```bash
# mkdir build
# cd build
# cmake ..
```

### 3.Build and run

```bash
# cmake --build .
# ./test
```

![4-2-1](C:/Users/Adlexer/Documents/GitHub/Embedding-Homework/img/4-2-1.png)

### **All source code has been included in this branch. You can try to compile and run it yourself.**

```bash
# git clone -b 4-programing https://github.com/Adlexer/Embedding-Homework
```

### If you are prompted that CMake cannot be found, you can install it directly.

```bash
# apt install cmake
