<#
  build script
#>

gcc src/main.cpp -Werror -Wextra -Wall -pedantic -c -o src/main.o
gcc src/main.o -lstdc++ -Werror -Wextra -Wall -pedantic -g -o borrame.exe 