# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if(EXISTS "C:/Documents/IMAC2/S4/Programmation Objet/p6/cmake-build-debug/_deps/p6-subbuild/p6-populate-prefix/src/p6-populate-stamp/p6-populate-gitclone-lastrun.txt" AND EXISTS "C:/Documents/IMAC2/S4/Programmation Objet/p6/cmake-build-debug/_deps/p6-subbuild/p6-populate-prefix/src/p6-populate-stamp/p6-populate-gitinfo.txt" AND
  "C:/Documents/IMAC2/S4/Programmation Objet/p6/cmake-build-debug/_deps/p6-subbuild/p6-populate-prefix/src/p6-populate-stamp/p6-populate-gitclone-lastrun.txt" IS_NEWER_THAN "C:/Documents/IMAC2/S4/Programmation Objet/p6/cmake-build-debug/_deps/p6-subbuild/p6-populate-prefix/src/p6-populate-stamp/p6-populate-gitinfo.txt")
  message(STATUS
    "Avoiding repeated git clone, stamp file is up to date: "
    "'C:/Documents/IMAC2/S4/Programmation Objet/p6/cmake-build-debug/_deps/p6-subbuild/p6-populate-prefix/src/p6-populate-stamp/p6-populate-gitclone-lastrun.txt'"
  )
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "C:/Documents/IMAC2/S4/Programmation Objet/p6/cmake-build-debug/_deps/p6-src"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: 'C:/Documents/IMAC2/S4/Programmation Objet/p6/cmake-build-debug/_deps/p6-src'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "C:/Program Files/Git/cmd/git.exe" 
            clone --no-checkout --config "advice.detachedHead=false" "https://github.com/julesfouchy/p6" "p6-src"
    WORKING_DIRECTORY "C:/Documents/IMAC2/S4/Programmation Objet/p6/cmake-build-debug/_deps"
    RESULT_VARIABLE error_code
  )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once: ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/julesfouchy/p6'")
endif()

execute_process(
  COMMAND "C:/Program Files/Git/cmd/git.exe" 
          checkout "b9e6366e1198abdd7bc835e6125f9ff5b89a75b8" --
  WORKING_DIRECTORY "C:/Documents/IMAC2/S4/Programmation Objet/p6/cmake-build-debug/_deps/p6-src"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'b9e6366e1198abdd7bc835e6125f9ff5b89a75b8'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "C:/Program Files/Git/cmd/git.exe" 
            submodule update --recursive --init 
    WORKING_DIRECTORY "C:/Documents/IMAC2/S4/Programmation Objet/p6/cmake-build-debug/_deps/p6-src"
    RESULT_VARIABLE error_code
  )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: 'C:/Documents/IMAC2/S4/Programmation Objet/p6/cmake-build-debug/_deps/p6-src'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy "C:/Documents/IMAC2/S4/Programmation Objet/p6/cmake-build-debug/_deps/p6-subbuild/p6-populate-prefix/src/p6-populate-stamp/p6-populate-gitinfo.txt" "C:/Documents/IMAC2/S4/Programmation Objet/p6/cmake-build-debug/_deps/p6-subbuild/p6-populate-prefix/src/p6-populate-stamp/p6-populate-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: 'C:/Documents/IMAC2/S4/Programmation Objet/p6/cmake-build-debug/_deps/p6-subbuild/p6-populate-prefix/src/p6-populate-stamp/p6-populate-gitclone-lastrun.txt'")
endif()
