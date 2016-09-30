#Set this to @ to keep the makefile quiet
ifndef SILENCE
	SILENCE = @
endif

#--- Inputs ----#
COMPONENT_NAME = HelloWorld

CPPUTEST_USE_EXTENSIONS = Y
CPP_PLATFORM = clang

SRC_DIRS = \
	src

TEST_SRC_DIRS = \
	AllTests

INCLUDE_DIRS =\
  .\
	include\
  $(CPPUTEST_HOME)/include\

CPPUTEST_CXXFLAGS = -Wall -std=c++14 -Wno-pedantic -Wno-c++98-compat-pedantic
# CPPUTEST_WARNINGFLAGS += -Wall -Werror -Wswitch-default -Wswitch-enum -Wno-pedantic -Wno-c++98-compat-pedantic

include $(CPPUTEST_HOME)/build/MakefileWorker.mk


