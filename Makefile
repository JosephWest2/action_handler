CXX = zig c++
MAIN = main.cpp
TEST_MAIN = Testing/main.tests.cpp
TEST_LIB = Testing/catch_amalgamated.cpp
ALL_TEST_FILES = ${shell find . -type f -name *.tests.cpp}
CPP_FILES = ${shell find . -type f -name "*.cpp" -not -path "*/Testing/*" | grep -v main.cpp | grep -v .tests.cpp}

all: action_handler tests
action_handler: ${MAIN} ${CPP_FILES}
	${CXX} -o action_handler ${MAIN} ${CPP_FILES} 
tests: ${TEST_MAIN} ${TEST_LIB} ${CPP_FILES} ${ALL_TEST_FILES}
	${CXX} -o tests ${TEST_MAIN} ${TEST_LIB} ${CPP_FILES} ${ALL_TEST_FILES}
clean:
	rm -f action_handler
	rm -f tests
