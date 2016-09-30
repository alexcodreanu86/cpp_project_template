#include <memory>
#include "Hello.h"
#include "CppUTest/TestHarness.h"


TEST_GROUP(HelloWorld) {
  std::unique_ptr<HelloWorld> helloWorld;
  void setup()
  {
    helloWorld = std::make_unique<HelloWorld>();
  }
  void teardown()
  {
  }
};

TEST(HelloWorld, PrintOk)
{
  CHECK(helloWorld->print() == "Hello world!");
}
