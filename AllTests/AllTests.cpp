#include "CppUTest/CommandLineTestRunner.h"

int main(int ac, char** av)
{
  // Add color parameter to test run
  char color[] = {'-', 'c', '\0'};
  av[ac] = color;
  return RUN_ALL_TESTS(2, av);
}

#include "AllTests.h"
