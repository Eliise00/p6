# CMAKE generated file: DO NOT EDIT!
# Generated by CMake Version 3.24
cmake_policy(SET CMP0009 NEW)

# P6_SOURCES at lib/p6/CMakeLists.txt:47 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/*")
set(OLD_GLOB
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/Angle.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/Canvas.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/Canvas.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/Color.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/Context.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/Context.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/Event.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/Image.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/Image.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/ImageCommon.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/NamedColor.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/Shader.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/Shader.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/Transform2D.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/Transform2D.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/_README.md"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/CharCorrespondanceTable.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/ImGuiWrapper.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/ImGuiWrapper.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/OpenGL_Debug.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/OpenGL_Debug.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/RectRenderer.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/RectRenderer.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/TextRenderer.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/TextRenderer.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/Time/Clock.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/Time/Clock.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/Time/Clock_FixedTimestep.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/Time/Clock_FixedTimestep.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/Time/Clock_Realtime.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/Time/Clock_Realtime.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/TriangleRenderer.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/TriangleRenderer.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/UniqueGlfwWindow.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/UniqueGlfwWindow.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/append_number_if_file_already_exists.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/append_number_if_file_already_exists.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/font_atlas"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/glfw.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/make_absolute_path.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/make_absolute_path.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/make_directories_if_necessary.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/internal/make_directories_if_necessary.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/math.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/math.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/math_constants.h"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/random.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/lib/p6/src/random.h"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "C:/Documents/IMAC2/S4/Programmation Objet/p6/cmake-build-debug/CMakeFiles/cmake.verify_globs")
endif()

# SOURCE_FILES at CMakeLists.txt:8 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "C:/Documents/IMAC2/S4/Programmation Objet/p6/src/*")
set(OLD_GLOB
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/src/main.cpp"
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/src/tests.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "C:/Documents/IMAC2/S4/Programmation Objet/p6/cmake-build-debug/CMakeFiles/cmake.verify_globs")
endif()