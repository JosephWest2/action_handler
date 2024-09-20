#include "random_number.hpp"
#include "Testing/catch_amalgamated.hpp"

TEST_CASE("SUPATEST") {
    REQUIRE(RandomNumber() == 2999);
}
